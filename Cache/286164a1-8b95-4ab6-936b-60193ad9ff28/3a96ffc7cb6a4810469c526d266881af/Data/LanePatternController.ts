/**
 * Specs Inc. 2026
 * Lane Pattern Controller — orchestrates the existing CoinInstantiator and TreeInstantiator
 * scripts to produce structured, skill-based spawning across three lanes.
 *
 * Nothing about the instantiators changes — their prefabs, orientations, spawn positions,
 * movement, and end-zone cleanup all stay exactly as configured. This script only decides
 * WHICH instantiators are allowed to spawn at any given moment.
 *
 * Pattern format per wave:  [left, middle, right]
 *   0 = EMPTY  — both coin and tree disabled on this lane
 *   1 = COIN   — coin instantiator enabled, tree disabled
 *   2 = TREE   — tree instantiator enabled, coin disabled
 *
 * State machine:
 *   initial gap → WAVE (pattern active) → gap → WAVE → ... → rest wave every N → ...
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"
import { CoinInstantiator } from "./CoinInstantiator"
import { TreeInstantiator } from "./TreeInstantiator"
import { RoadInstantiator } from "./RoadInstantiator"

const EMPTY = 0
const COIN  = 1
const TREE  = 2

@component
export class LanePatternController extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">LanePatternController – dynamic lane pattern orchestrator</span><br/><span style="color: #94A3B8; font-size: 11px;">Controls the 6 existing instantiators. Patterns ensure a safe lane, ramp in difficulty, and force lane rotation.</span>')
  @ui.separator

  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Coin Instantiators — drag the SceneObject with the CoinInstantiator script for each lane</span>')

  @input
  @hint("Left lane CoinInstantiator")
  coinLeft!: CoinInstantiator

  @input
  @hint("Middle lane CoinInstantiator")
  coinMiddle!: CoinInstantiator

  @input
  @hint("Right lane CoinInstantiator")
  coinRight!: CoinInstantiator

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Tree Instantiators — drag the SceneObject with the TreeInstantiator script for each lane</span>')

  @input
  @hint("Left lane TreeInstantiator")
  treeLeft!: TreeInstantiator

  @input
  @hint("Middle lane TreeInstantiator")
  treeMiddle!: TreeInstantiator

  @input
  @hint("Right lane TreeInstantiator")
  treeRight!: TreeInstantiator

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Road Instantiators — drag the SceneObject with the RoadInstantiator script for each lane</span>')

  @input
  @allowUndefined
  @hint("Left lane RoadInstantiator")
  roadLeft: RoadInstantiator | undefined

  @input
  @allowUndefined
  @hint("Middle lane RoadInstantiator")
  roadMiddle: RoadInstantiator | undefined

  @input
  @allowUndefined
  @hint("Right lane RoadInstantiator")
  roadRight: RoadInstantiator | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Speed Ramp</span>')

  @input
  @hint("Move speed of all lanes at game start. Overrides the moveSpeed set on each individual instantiator.")
  initialMoveSpeed: number = 100

  @input
  @hint("Move speed cap — speed increases linearly from initialMoveSpeed to maxMoveSpeed over speedRampTime seconds.")
  maxMoveSpeed: number = 300

  @input
  @hint("Seconds to go from initialMoveSpeed to maxMoveSpeed.")
  speedRampTime: number = 120.0

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Wave Timing</span>')

  @input
  @hint("Minimum number of coins spawned per coin lane per wave. Coin interval is always 0.3 s.")
  minCoinsPerWave: number = 2

  @input
  @hint("Maximum number of coins spawned per coin lane per wave.")
  maxCoinsPerWave: number = 6

  @input
  @hint("Seconds of silence between waves — gives the player time to react and rotate.")
  gapDuration: number = 1.5

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Difficulty</span>')

  @input
  @hint("Seconds until difficulty reaches maximum (medium/hard patterns become dominant).")
  difficultyRampTime: number = 120.0

  @input
  @hint("Insert a rest wave every N waves to give the player a breather.")
  gapFrequency: number = 5

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging")
  enableLoggingLifecycle: boolean = false

  // ─── Pattern library ───────────────────────────────────────────────────────
  // Safety invariant: every pattern has ≥1 lane that is EMPTY or COIN.

  /** Easy — 1 tree max, clear safe options */
  private readonly PATTERNS_EASY: number[][] = [
    [COIN, COIN, COIN],   // pure reward
    [COIN, COIN, EMPTY],
    [EMPTY, COIN, COIN],
    [COIN, EMPTY, COIN],
    [TREE, COIN, COIN],   // one obstacle, two escapes
    [COIN, TREE, COIN],
    [COIN, COIN, TREE],
    [TREE, COIN, EMPTY],  // one obstacle, coin + empty escape
    [TREE, EMPTY, COIN],
    [COIN, EMPTY, TREE],
    [EMPTY, TREE, COIN],
    [EMPTY, COIN, TREE],
    [COIN, TREE, EMPTY],
  ]

  /** Medium — two trees, exactly one escape lane */
  private readonly PATTERNS_MEDIUM: number[][] = [
    [TREE, TREE, COIN],
    [TREE, COIN, TREE],
    [COIN, TREE, TREE],
    [TREE, TREE, EMPTY],
    [EMPTY, TREE, TREE],
  ]

  /** Rest — breathing room inserted every gapFrequency waves */
  private readonly PATTERNS_REST: number[][] = [
    [EMPTY, EMPTY, EMPTY],
    [COIN, EMPTY, EMPTY],
    [EMPTY, COIN, EMPTY],
    [EMPTY, EMPTY, COIN],
  ]

  // ─── Runtime state ─────────────────────────────────────────────────────────

  private coins: CoinInstantiator[]
  private trees: TreeInstantiator[]

  private elapsedTime: number = 0
  private stateTimer:  number = 0
  private inGap:       boolean = true
  private waveCount:   number = 0

  private recentKeys:  string[] = []
  private readonly    MAX_HISTORY = 3

  private lastSafeLane:      number = -1
  private consecutiveSafe:   number = 0

  private logger: Logger

  // ─── Lifecycle ─────────────────────────────────────────────────────────────

  onAwake(): void {
    this.logger = new Logger("LanePatternController", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    this.coins = [this.coinLeft,  this.coinMiddle,  this.coinRight]
    this.trees = [this.treeLeft,  this.treeMiddle,  this.treeRight]

    for (let i = 0; i < 3; i++) {
      if (!this.coins[i]) this.logger.warn(`coinInstantiator[${i}] not assigned`)
      if (!this.trees[i]) this.logger.warn(`treeInstantiator[${i}] not assigned`)
    }

    // Fix coin interval to 0.3 s on all lanes — controller owns this value
    for (let i = 0; i < 3; i++) {
      if (this.coins[i]) this.coins[i].spawnInterval = 0.3
      // Large interval so each tree fires exactly once per wave regardless of wave duration
      if (this.trees[i]) this.trees[i].spawnInterval = 9999
    }

    // Disable all instantiators immediately — controller takes full ownership
    this.disableAll()

    // Initial gap before the first wave
    this.inGap      = true
    this.stateTimer = this.gapDuration

    this.logger.info("LanePatternController started — coin interval fixed at 0.3 s")
  }

  // ─── Instantiator control ──────────────────────────────────────────────────

  private disableAll(): void {
    for (let i = 0; i < 3; i++) {
      if (this.coins[i]) this.coins[i].spawnEnabled = false
      if (this.trees[i]) this.trees[i].spawnEnabled = false
    }
  }

  private applyPattern(pattern: number[]): void {
    for (let i = 0; i < 3; i++) {
      const wantCoin = pattern[i] === COIN
      const wantTree = pattern[i] === TREE

      if (this.coins[i]) {
        this.coins[i].spawnEnabled = wantCoin
        // delay = 0 → first coin spawns on the very next frame
        if (wantCoin) this.coins[i].resetSpawnTimer(0)
      }
      if (this.trees[i]) {
        this.trees[i].spawnEnabled = wantTree
        // delay = 0 → tree spawns immediately; interval is 9999 so it won't fire again this wave
        if (wantTree) this.trees[i].resetSpawnTimer(0)
      }
    }
  }

  // ─── Pattern selection ─────────────────────────────────────────────────────

  private patternKey(p: number[]): string {
    return p[0] + "," + p[1] + "," + p[2]
  }

  private selectPattern(): number[] {
    // Rest wave every gapFrequency waves (skip wave 0 to start with real content)
    if (this.waveCount > 0 && this.waveCount % this.gapFrequency === 0) {
      const rest = this.PATTERNS_REST[Math.floor(Math.random() * this.PATTERNS_REST.length)]
      this.logger.info("Rest wave")
      return rest
    }

    // Difficulty 0→1 over difficultyRampTime seconds
    const t = Math.min(this.elapsedTime / this.difficultyRampTime, 1)
    const useMedium = Math.random() < t
    let pool = useMedium ? [...this.PATTERNS_MEDIUM] : [...this.PATTERNS_EASY]

    // Exclude recently used patterns to prevent repetition
    let candidates = pool.filter(p => !this.recentKeys.includes(this.patternKey(p)))
    if (candidates.length === 0) {
      this.recentKeys = []
      candidates = pool
    }

    // Lane-switching enforcement: if the same safe lane appeared ≥2 times in a row,
    // bias toward patterns that put a TREE on that lane so the player must rotate
    if (this.lastSafeLane >= 0 && this.consecutiveSafe >= 2) {
      const forcing = candidates.filter(p => p[this.lastSafeLane] === TREE)
      if (forcing.length > 0) {
        candidates = forcing
        this.logger.info(`Forcing switch away from lane ${this.lastSafeLane}`)
      }
    }

    const chosen = candidates[Math.floor(Math.random() * candidates.length)]

    // Update history
    this.recentKeys.push(this.patternKey(chosen))
    if (this.recentKeys.length > this.MAX_HISTORY) this.recentKeys.shift()

    // Track which lane is safe to power the switching logic
    this.trackSafeLane(chosen)

    return chosen
  }

  private trackSafeLane(pattern: number[]): void {
    const coinLanes  = [0, 1, 2].filter(i => pattern[i] === COIN)
    const emptyLanes = [0, 1, 2].filter(i => pattern[i] === EMPTY)
    const safe = coinLanes.length > 0 ? coinLanes : emptyLanes
    if (safe.length === 0) return

    const picked = safe[Math.floor(Math.random() * safe.length)]
    if (picked === this.lastSafeLane) {
      this.consecutiveSafe++
    } else {
      this.consecutiveSafe  = 0
      this.lastSafeLane     = picked
    }
  }

  // ─── Wave state machine ────────────────────────────────────────────────────

  private startWave(): void {
    // Pick a random coin count in [min, max] — wave lasts exactly long enough to spawn them all
    const coinCount = this.minCoinsPerWave +
      Math.floor(Math.random() * (this.maxCoinsPerWave - this.minCoinsPerWave + 1))
    // First coin spawns at t=0, then every 0.3 s → last coin at (coinCount-1)*0.3
    // Add one extra interval so the wave doesn't cut off the final spawn
    const waveDuration = coinCount * 0.3

    const pattern = this.selectPattern()
    this.applyPattern(pattern)
    this.stateTimer = waveDuration
    this.inGap      = false

    const n = ["_", "C", "T"]
    this.logger.info(
      `Wave ${this.waveCount} | L:${n[pattern[0]]}  M:${n[pattern[1]]}  R:${n[pattern[2]]}` +
      `  coins:${coinCount}  dur:${waveDuration.toFixed(1)}s` +
      `  (diff ${(Math.min(this.elapsedTime / this.difficultyRampTime, 1) * 100).toFixed(0)}%)`
    )
  }

  private startGap(): void {
    this.disableAll()
    this.inGap      = true
    this.stateTimer = this.gapDuration
    this.waveCount++
  }

  // ─── Main update ───────────────────────────────────────────────────────────

  @bindUpdateEvent
  onUpdate(): void {
    const dt = getDeltaTime()
    this.elapsedTime += dt
    this.stateTimer  -= dt

    this.updateMoveSpeed()

    if (this.inGap) {
      if (this.stateTimer <= 0) this.startWave()
    } else {
      if (this.stateTimer <= 0) this.startGap()
    }
  }

  private updateMoveSpeed(): void {
    const t = Math.min(this.elapsedTime / this.speedRampTime, 1)
    const speed = this.initialMoveSpeed + (this.maxMoveSpeed - this.initialMoveSpeed) * t
    for (let i = 0; i < 3; i++) {
      if (this.coins[i]) this.coins[i].moveSpeed = speed
      if (this.trees[i]) this.trees[i].moveSpeed = speed
    }
  }
}
