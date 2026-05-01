/**
 * Specs Inc. 2026
 * Lane Spawn Manager — pattern-based coin and tree spawning across 3 lanes.
 *
 * Replaces the individual CoinInstantiator / TreeInstantiator prefabs with a single
 * manager that selects structured patterns, enforces a safe path, ramps difficulty,
 * and encourages the player to rotate lanes continuously.
 *
 * Pattern format: [left, middle, right]  values: 0=EMPTY  1=COIN  2=TREE
 *
 * State machine:
 *   GAP  →  startWave()  →  WAVE  →  startGap()  →  GAP  →  ...
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

const EMPTY = 0
const COIN  = 1
const TREE  = 2

interface ManagedObject {
  obj: SceneObject
  moveDir: vec3
  rotSpeedY: number
  isAlive: boolean
}

@component
export class LaneSpawnManager extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">LaneSpawnManager – pattern-based 3-lane spawner</span><br/><span style="color: #94A3B8; font-size: 11px;">Selects structured coin/tree patterns, ensures a safe lane, ramps difficulty, and forces lane rotation.</span>')
  @ui.separator

  @input
  @hint("Coin prefab to instantiate")
  coinPrefab!: ObjectPrefab

  @input
  @hint("Tree prefab to instantiate")
  treePrefab!: ObjectPrefab

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Lane Spawn Points</span>')

  @input
  @hint("Left lane spawn position SceneObject")
  leftSpawnPoint!: SceneObject

  @input
  @hint("Middle lane spawn position SceneObject")
  middleSpawnPoint!: SceneObject

  @input
  @hint("Right lane spawn position SceneObject")
  rightSpawnPoint!: SceneObject

  @input
  @hint("Target position — objects move toward this (near the car)")
  targetPoint!: SceneObject

  @input
  @allowUndefined
  @hint("SceneObject with a box collider at the car end — destroys objects that pass through")
  endZone: SceneObject | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Movement</span>')

  @input
  @hint("Speed objects move toward the target (units/sec)")
  moveSpeed: number = 2.0

  @input
  @hint("Y-axis spin speed for coins (degrees/sec)")
  coinRotSpeedY: number = 90.0

  @input
  @hint("Y-axis spin speed for trees (degrees/sec)")
  treeRotSpeedY: number = 20.0

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Wave Timing</span>')

  @input
  @hint("Seconds each pattern wave is active (objects spawn during this window)")
  waveDuration: number = 2.5

  @input
  @hint("Seconds of empty pause between waves (breathing room for the player)")
  gapDuration: number = 1.0

  @input
  @hint("Number of coins spawned per coin lane per wave")
  coinsPerLane: number = 2

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Difficulty</span>')

  @input
  @hint("Seconds until difficulty reaches maximum (medium patterns become dominant)")
  difficultyRampTime: number = 120.0

  @input
  @hint("Insert a full rest wave (all empty/coin) every N waves to give the player a break")
  gapFrequency: number = 4

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging")
  enableLoggingLifecycle: boolean = false

  // ─── Pattern library ───────────────────────────────────────────────────────
  // Each pattern is [left, middle, right].
  // Safety invariant: every pattern has at least one COIN or EMPTY lane.

  private readonly PATTERNS_EASY: number[][] = [
    // All coins — pure reward round
    [COIN, COIN, COIN],
    // Two coins, one empty — gentle introduction
    [COIN, COIN, EMPTY],
    [EMPTY, COIN, COIN],
    [COIN, EMPTY, COIN],
    // One tree, two coins — easy obstacle
    [TREE, COIN, COIN],
    [COIN, TREE, COIN],
    [COIN, COIN, TREE],
    // One tree, one coin, one empty — slight pressure
    [TREE, EMPTY, COIN],
    [TREE, COIN, EMPTY],
    [COIN, EMPTY, TREE],
    [EMPTY, TREE, COIN],
    [EMPTY, COIN, TREE],
    [COIN, TREE, EMPTY],
  ]

  private readonly PATTERNS_MEDIUM: number[][] = [
    // Two trees — player must go to specific lane
    [TREE, TREE, COIN],
    [TREE, COIN, TREE],
    [COIN, TREE, TREE],
    // Two trees, one empty — no reward but safe path
    [TREE, TREE, EMPTY],
    [EMPTY, TREE, TREE],
  ]

  private readonly PATTERNS_REST: number[][] = [
    // Breathing room — inserted every gapFrequency waves
    [EMPTY, EMPTY, EMPTY],
    [COIN, EMPTY, EMPTY],
    [EMPTY, COIN, EMPTY],
    [EMPTY, EMPTY, COIN],
  ]

  // Set to true by PlayPauseManager — freezes the update loop entirely
  public isPaused: boolean = false

  // ─── Runtime state ─────────────────────────────────────────────────────────
  private spawnPoints: SceneObject[] = []
  private activeObjects: ManagedObject[] = []

  private elapsedTime: number = 0
  private stateTimer: number = 0
  private inGap: boolean = true
  private waveCount: number = 0

  private currentPattern: number[] = [EMPTY, EMPTY, EMPTY]
  private coinSpawnTimers: number[] = [0, 0, 0]
  private coinSpawnCounts: number[] = [0, 0, 0]
  private treeSpawned: boolean[] = [false, false, false]

  private recentPatternKeys: string[] = []
  private readonly MAX_HISTORY = 3

  private lastSafeLane: number = -1
  private consecutiveSafeLane: number = 0

  // Internal safety net — objects older than this are silently removed
  private readonly MAX_OBJECT_AGE = 20.0
  private objectBirthTimes: Map<SceneObject, number> = new Map()

  private readonly DEG_TO_RAD = Math.PI / 180
  private logger: Logger

  // ─── Lifecycle ─────────────────────────────────────────────────────────────

  onAwake(): void {
    this.logger = new Logger("LaneSpawnManager", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    this.spawnPoints = [this.leftSpawnPoint, this.middleSpawnPoint, this.rightSpawnPoint]

    if (!this.coinPrefab)   this.logger.warn("coinPrefab not assigned")
    if (!this.treePrefab)   this.logger.warn("treePrefab not assigned")
    if (!this.targetPoint)  this.logger.warn("targetPoint not assigned")
    for (let i = 0; i < 3; i++) {
      if (!this.spawnPoints[i]) this.logger.warn(`spawnPoints[${i}] not assigned`)
    }

    this.setupEndZone()

    // Begin with an initial gap so the player has a moment before the first wave
    this.inGap = true
    this.stateTimer = this.gapDuration

    this.logger.info("LaneSpawnManager started — initial gap before wave 0")
  }

  // ─── End zone ──────────────────────────────────────────────────────────────

  private setupEndZone(): void {
    if (!this.endZone) {
      this.logger.warn("endZone not assigned — objects will rely on the internal age limit")
      return
    }
    const collider = this.endZone.getComponent("Physics.ColliderComponent")
    if (!collider) {
      this.logger.warn("No Physics.ColliderComponent on endZone")
      return
    }
    ;(collider as any).onOverlapEnter.add((e: any) => {
      try {
        const obj: SceneObject = e.overlap.collider.getSceneObject()
        if (!obj) return
        const objName = obj.name
        const managed = this.activeObjects.find(m => m.obj === obj)
        if (managed) {
          managed.isAlive = false
          try { obj.destroy() } catch (_) {}
          this.logger.info(`End zone removed: ${objName}`)
        }
      } catch (_) {}
    })
    this.logger.info("End zone registered")
  }

  // ─── Pattern selection ─────────────────────────────────────────────────────

  private patternKey(p: number[]): string {
    return p[0] + "," + p[1] + "," + p[2]
  }

  private selectPattern(): number[] {
    // Insert a rest wave periodically (not on wave 0)
    if (this.waveCount > 0 && this.waveCount % this.gapFrequency === 0) {
      const rest = this.PATTERNS_REST[Math.floor(Math.random() * this.PATTERNS_REST.length)]
      this.logger.info("Rest wave inserted")
      return rest
    }

    // Difficulty 0→1 over difficultyRampTime seconds
    const t = Math.min(this.elapsedTime / this.difficultyRampTime, 1)

    // Select pool: medium patterns become more likely as t increases
    const useMedium = Math.random() < t
    let pool = useMedium ? [...this.PATTERNS_MEDIUM] : [...this.PATTERNS_EASY]

    // Remove recently used patterns to avoid repetition
    let candidates = pool.filter(p => !this.recentPatternKeys.includes(this.patternKey(p)))
    if (candidates.length === 0) {
      this.recentPatternKeys = []
      candidates = pool
    }

    // Lane-switching enforcement: if the same safe lane appeared 2+ times in a row,
    // bias toward patterns that block that lane — forcing the player to rotate
    if (this.lastSafeLane >= 0 && this.consecutiveSafeLane >= 2) {
      const switchCandidates = candidates.filter(p => p[this.lastSafeLane] === TREE)
      if (switchCandidates.length > 0) {
        candidates = switchCandidates
        this.logger.info(`Forcing lane switch away from lane ${this.lastSafeLane}`)
      }
    }

    const chosen = candidates[Math.floor(Math.random() * candidates.length)]

    // Record history
    this.recentPatternKeys.push(this.patternKey(chosen))
    if (this.recentPatternKeys.length > this.MAX_HISTORY) {
      this.recentPatternKeys.shift()
    }

    // Update safe lane tracking
    this.trackSafeLane(chosen)

    return chosen
  }

  private trackSafeLane(pattern: number[]): void {
    // Prefer COIN lanes over EMPTY lanes as the "expected" safe lane
    const coinLanes  = [0, 1, 2].filter(i => pattern[i] === COIN)
    const emptyLanes = [0, 1, 2].filter(i => pattern[i] === EMPTY)
    const safeLanes  = coinLanes.length > 0 ? coinLanes : emptyLanes
    if (safeLanes.length === 0) return

    const picked = safeLanes[Math.floor(Math.random() * safeLanes.length)]
    if (picked === this.lastSafeLane) {
      this.consecutiveSafeLane++
    } else {
      this.consecutiveSafeLane = 0
      this.lastSafeLane = picked
    }
  }

  // ─── Wave state machine ────────────────────────────────────────────────────

  private startWave(): void {
    this.currentPattern = this.selectPattern()
    this.coinSpawnTimers = [0, 0, 0]
    this.coinSpawnCounts = [0, 0, 0]
    this.treeSpawned     = [false, false, false]
    this.stateTimer      = this.waveDuration
    this.inGap           = false

    const names = ["_", "COIN", "TREE"]
    this.logger.info(
      `Wave ${this.waveCount} | L:${names[this.currentPattern[0]]}  M:${names[this.currentPattern[1]]}  R:${names[this.currentPattern[2]]}  (t=${(Math.min(this.elapsedTime / this.difficultyRampTime, 1) * 100).toFixed(0)}%)`
    )
  }

  private startGap(): void {
    this.inGap      = true
    this.stateTimer = this.gapDuration
    this.waveCount++
  }

  // ─── Spawning within a wave ────────────────────────────────────────────────

  private updateWaveSpawning(dt: number): void {
    // coinInterval spaces coinsPerLane coins evenly inside the wave window
    const coinInterval = this.waveDuration / (this.coinsPerLane + 1)

    for (let lane = 0; lane < 3; lane++) {
      const state = this.currentPattern[lane]

      if (state === TREE) {
        // Spawn one tree near the start of the wave
        if (!this.treeSpawned[lane]) {
          this.spawnObject(lane, true)
          this.treeSpawned[lane] = true
        }
      } else if (state === COIN) {
        // Spread coins evenly across the wave duration
        this.coinSpawnTimers[lane] += dt
        const nextCoinAt = coinInterval * (this.coinSpawnCounts[lane] + 1)
        if (this.coinSpawnCounts[lane] < this.coinsPerLane &&
            this.coinSpawnTimers[lane] >= nextCoinAt) {
          this.spawnObject(lane, false)
          this.coinSpawnCounts[lane]++
        }
      }
    }
  }

  private spawnObject(laneIndex: number, isTree: boolean): void {
    const spawnPoint = this.spawnPoints[laneIndex]
    if (!spawnPoint || !this.targetPoint) return

    const prefab = isTree ? this.treePrefab : this.coinPrefab
    if (!prefab) return

    const instance = prefab.instantiate(this.sceneObject)
    if (!instance) return

    const spawnPos = spawnPoint.getTransform().getWorldPosition()
    const targetPos = this.targetPoint.getTransform().getWorldPosition()

    instance.getTransform().setWorldPosition(spawnPos)

    const id = Math.random().toString(36).substring(2, 9)
    instance.name = isTree ? `TreeCube_${id}` : `CoinCube_${id}`

    this.activeObjects.push({
      obj:       instance,
      moveDir:   targetPos.sub(spawnPos).normalize(),
      rotSpeedY: isTree ? this.treeRotSpeedY : this.coinRotSpeedY,
      isAlive:   true
    })

    this.objectBirthTimes.set(instance, this.elapsedTime)
  }

  // ─── Object movement ───────────────────────────────────────────────────────

  private updateActiveObjects(dt: number): void {
    const toKeep: ManagedObject[] = []

    for (const managed of this.activeObjects) {
      if (!managed.isAlive) {
        this.objectBirthTimes.delete(managed.obj)
        continue
      }

      // Internal age safety net
      const age = this.elapsedTime - (this.objectBirthTimes.get(managed.obj) ?? 0)
      if (age > this.MAX_OBJECT_AGE) {
        try { managed.obj.destroy() } catch (_) {}
        this.objectBirthTimes.delete(managed.obj)
        continue
      }

      try {
        const transform = managed.obj.getTransform()

        const newPos = transform.getWorldPosition().add(
          managed.moveDir.uniformScale(this.moveSpeed * dt)
        )
        transform.setWorldPosition(newPos)

        const spin = quat.angleAxis(managed.rotSpeedY * dt * this.DEG_TO_RAD, new vec3(0, 1, 0))
        transform.setLocalRotation(transform.getLocalRotation().multiply(spin))

        toKeep.push(managed)
      } catch (_) {
        // Object was destroyed externally (saber hit, end zone, etc.) — drop it silently
        this.objectBirthTimes.delete(managed.obj)
      }
    }

    this.activeObjects = toKeep
  }

  // ─── Main update ───────────────────────────────────────────────────────────

  public reset(): void {
    for (const managed of this.activeObjects) {
      try { managed.obj.destroy() } catch (_) {}
    }
    this.activeObjects = []
    this.objectBirthTimes.clear()
    this.elapsedTime          = 0
    this.stateTimer           = this.gapDuration
    this.inGap                = true
    this.waveCount            = 0
    this.currentPattern       = [EMPTY, EMPTY, EMPTY]
    this.coinSpawnTimers      = [0, 0, 0]
    this.coinSpawnCounts      = [0, 0, 0]
    this.treeSpawned          = [false, false, false]
    this.recentPatternKeys    = []
    this.lastSafeLane         = -1
    this.consecutiveSafeLane  = 0
    this.logger.info("LaneSpawnManager reset")
  }

  @bindUpdateEvent
  onUpdate(): void {
    if (this.isPaused) return

    const dt = getDeltaTime()
    this.elapsedTime += dt
    this.stateTimer  -= dt

    if (this.inGap) {
      if (this.stateTimer <= 0) this.startWave()
    } else {
      this.updateWaveSpawning(dt)
      if (this.stateTimer <= 0) this.startGap()
    }

    this.updateActiveObjects(dt)
  }
}
