/**
 * Specs Inc. 2026
 * Road Instantiator — spawns road tile prefabs continuously at a fixed interval.
 * Move speed is driven externally by LanePatternController to stay in sync with
 * game difficulty. Tiles pass through the target zone without adding score or
 * damage; they are only destroyed when they hit the end zone collider.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class RoadInstantiator extends BaseScriptComponent {
  @ui.label('<span style="color: #34D399;">RoadInstantiator – continuous road tile spawner</span><br/><span style="color: #94A3B8; font-size: 11px;">Spawns road tiles at a fixed interval. Speed synced via LanePatternController. Tiles are destroyed at end zone only.</span>')
  @ui.separator

  @input
  @hint("Road tile prefab to instantiate")
  prefab!: ObjectPrefab

  @input
  @hint("Spawn position – where tiles appear")
  spawnPosition!: SceneObject

  @input
  @hint("Target position – defines movement direction (tiles pass through without triggering score/damage)")
  targetPosition!: SceneObject

  @input
  @allowUndefined
  @hint("SceneObject with a box collider that destroys road tiles on contact (e.g. InstantiatorEndPosition)")
  endZone: SceneObject | undefined

  @input
  @hint("Time between spawning road tiles in seconds")
  spawnInterval: number = 0.5

  @input
  @hint("Speed at which tiles move toward the target — overridden by LanePatternController")
  moveSpeed: number = 100

  @input
  @hint("Destroy tiles when they reach the target position — disable to let them pass through")
  destroyOnReachTarget: boolean = false

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging")
  enableLoggingLifecycle: boolean = false

  // Set to false by PlayPauseManager during pause — blocks new spawns while in-flight tiles keep their state
  public spawnEnabled: boolean = true

  private nextSpawnTime: number = 0
  private activePrefabs: SceneObject[] = []
  private prefabData: Map<string, { moveDirection: vec3; id: string }> = new Map()
  private pendingRemoval: Set<string> = new Set()
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("RoadInstantiator", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")
    if (!this.prefab)        this.logger.warn("prefab is not assigned")
    if (!this.spawnPosition) this.logger.warn("spawnPosition is not assigned")
    if (!this.targetPosition) this.logger.warn("targetPosition is not assigned")

    this.setupEndZone()

    this.nextSpawnTime = getTime() + this.spawnInterval
    this.logger.info("RoadInstantiator started")
  }

  private setupEndZone(): void {
    if (!this.endZone) {
      this.logger.warn("endZone not assigned — road tiles will not be destroyed at end")
      return
    }

    const collider = this.endZone.getComponent("Physics.ColliderComponent")
    if (!collider) {
      this.logger.warn("No collider found on endZone object")
      return
    }

    ;(collider as any).onOverlapEnter.add((e: any) => {
      try {
        const obj: SceneObject = e.overlap.collider.getSceneObject()
        if (!obj) return
        const match = obj.name.match(/RoadTile_(\w+)/)
        if (!match) return
        this.pendingRemoval.add(match[1])
        try { obj.destroy() } catch (_) {}
        this.logger.info(`End zone destroyed road tile: ${obj.name}`)
      } catch (_) {}
    })

    this.logger.info("End zone collision registered")
  }

  private generateUniqueId(): string {
    return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15)
  }

  @bindUpdateEvent
  onUpdate(): void {
    this.updateTiles()

    const currentTime = getTime()
    if (currentTime >= this.nextSpawnTime) {
      this.spawnTile()
      this.nextSpawnTime = currentTime + this.spawnInterval
    }
  }

  private spawnTile(): void {
    if (!this.prefab || !this.spawnPosition || !this.targetPosition) {
      this.logger.error("Required inputs not assigned (prefab, spawnPosition, or targetPosition)")
      return
    }

    const instance = this.prefab.instantiate(this.sceneObject)
    if (!instance) {
      this.logger.error("Failed to instantiate prefab")
      return
    }

    const spawnPos = this.spawnPosition.getTransform().getWorldPosition()
    instance.getTransform().setWorldPosition(spawnPos)

    const targetPos = this.targetPosition.getTransform().getWorldPosition()
    const moveDirection = targetPos.sub(spawnPos).normalize()

    const id = this.generateUniqueId()
    this.prefabData.set(id, { moveDirection, id })
    instance.name = `RoadTile_${id}`
    this.activePrefabs.push(instance)

    this.logger.info(`Spawned road tile at ${spawnPos.x.toFixed(2)}, ${spawnPos.y.toFixed(2)}, ${spawnPos.z.toFixed(2)}`)
  }

  private updateTiles(): void {
    const deltaTime = getDeltaTime()
    const targetPos = this.targetPosition.getTransform().getWorldPosition()
    const prefabsToKeep: SceneObject[] = []
    const idsToRemove: string[] = []

    for (let i = 0; i < this.activePrefabs.length; i++) {
      const tile = this.activePrefabs[i]
      if (!tile) continue

      let shouldDestroy = false
      let instanceId = ""

      try {
        const idMatch = tile.name.match(/RoadTile_(\w+)/)
        if (!idMatch || !idMatch[1]) {
          this.logger.warn("Could not extract ID from tile name: " + tile.name)
          continue
        }

        instanceId = idMatch[1]

        if (this.pendingRemoval.has(instanceId)) {
          idsToRemove.push(instanceId)
          this.pendingRemoval.delete(instanceId)
          continue
        }

        const data = this.prefabData.get(instanceId)
        if (!data) {
          this.logger.warn("No data found for tile ID: " + instanceId)
          continue
        }

        const transform = tile.getTransform()
        if (!transform) continue

        const currentPos = transform.getWorldPosition()
        const newPos = currentPos.add(data.moveDirection.uniformScale(this.moveSpeed * deltaTime))
        transform.setWorldPosition(newPos)

        if (this.destroyOnReachTarget && currentPos.distance(targetPos) < 0.5) {
          shouldDestroy = true
          idsToRemove.push(instanceId)
        }
      } catch (e) {
        this.logger.error("Error updating road tile: " + e)
        shouldDestroy = true
        if (instanceId) idsToRemove.push(instanceId)
      }

      if (shouldDestroy) {
        try { tile.destroy() } catch (_) {}
      } else {
        prefabsToKeep.push(tile)
      }
    }

    for (const id of idsToRemove) {
      this.prefabData.delete(id)
    }

    this.activePrefabs = prefabsToKeep
  }
}
