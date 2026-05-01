/**
 * Specs Inc. 2026
 * Tree Instantiator component — spawns and animates TreeCube obstacle prefabs toward a target.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class TreeInstantiator extends BaseScriptComponent {
  @ui.label('<span style="color: #4ADE80;">TreeInstantiator – spawn and animate tree obstacle cubes</span><br/><span style="color: #94A3B8; font-size: 11px;">Instantiates tree prefabs at regular intervals and moves them toward a target. Cubes are destroyed on end-zone collision.</span>')
  @ui.separator

  @input
  @hint("Prefab to instantiate")
  prefab!: ObjectPrefab

  @input
  @hint("Spawn position – where prefabs appear from")
  spawnPosition!: SceneObject

  @input
  @hint("Target position – defines movement direction")
  targetPosition!: SceneObject

  @input
  @allowUndefined
  @hint("SceneObject with a box collider that destroys trees on contact (e.g. InstantiatorEndPosition1)")
  endZone: SceneObject | undefined

  @input
  @hint("Time between spawning prefabs in seconds")
  spawnInterval: number = 2.0

  @input
  @hint("Speed at which prefabs move toward the target")
  moveSpeed: number = 2.0

  @input
  @hint("Rotation speed on X axis in degrees per second")
  rotationSpeedX: number = 0.0

  @input
  @hint("Rotation speed on Y axis in degrees per second")
  rotationSpeedY: number = 45.0

  @input
  @hint("Rotation speed on Z axis in degrees per second")
  rotationSpeedZ: number = 0.0

  @input
  @hint("Destroy prefabs when they reach the target position")
  destroyOnReachTarget: boolean = false

  @input
  @hint("Draw a debug line from spawn position to target position each frame")
  showSpawnGizmo: boolean = true

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  // Controlled externally by LanePatternController — false blocks new spawns
  // while already-moving prefabs continue unaffected.
  public spawnEnabled: boolean = true

  private nextSpawnTime: number = 0
  private activePrefabs: SceneObject[] = []
  private prefabData: Map<string, any> = new Map()
  private pendingRemoval: Set<string> = new Set()
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("TreeInstantiator", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")
    if (!this.prefab) this.logger.warn("prefab is not assigned")
    if (!this.spawnPosition) this.logger.warn("spawnPosition is not assigned")
    if (!this.targetPosition) this.logger.warn("targetPosition is not assigned")

    this.setupEndZone()

    this.logger.info("Tree Instantiator started")
    this.nextSpawnTime = getTime() + this.spawnInterval
  }

  /** Called by LanePatternController when re-enabling this lane to avoid a stale timer burst. */
  public resetSpawnTimer(): void {
    this.nextSpawnTime = getTime() + this.spawnInterval
  }

  private setupEndZone(): void {
    if (!this.endZone) {
      this.logger.warn("endZone is not assigned — trees will not be destroyed at the end")
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
        const objName = obj.name
        const match = objName.match(/TreeCube_(\w+)/)
        if (!match) return
        this.pendingRemoval.add(match[1])
        try { obj.destroy() } catch (_) {}
        this.logger.info(`End zone destroyed tree: ${objName}`)
      } catch (_) {}
    })

    this.logger.info("End zone collision registered")
  }

  private generateUniqueId(): string {
    return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15)
  }

  @bindUpdateEvent
  onUpdate(): void {
    // Always move and clean up in-flight prefabs regardless of spawnEnabled
    this.updatePrefabs()
    this.drawGizmo()

    if (!this.spawnEnabled) return

    const currentTime = getTime()
    if (currentTime >= this.nextSpawnTime) {
      this.spawnPrefab()
      this.nextSpawnTime = currentTime + this.spawnInterval
    }
  }

  private drawGizmo(): void {
    if (!this.showSpawnGizmo || !this.spawnPosition || !this.targetPosition) return
    const debugRender = (global as any).debugRenderSystem
    if (!debugRender) return
    const spawnPos = this.spawnPosition.getTransform().getWorldPosition()
    const targetPos = this.targetPosition.getTransform().getWorldPosition()
    debugRender.drawLine(spawnPos, targetPos, new vec4(0.29, 0.86, 0.5, 1))
    debugRender.drawSolidSphere(spawnPos, 0.03, new vec4(0.29, 0.86, 0.5, 0.8))
    debugRender.drawSolidSphere(targetPos, 0.03, new vec4(1, 0.25, 0.25, 0.8))
  }

  spawnPrefab(): void {
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

    const instanceId = this.generateUniqueId()

    this.prefabData.set(instanceId, {
      moveDirection: moveDirection,
      id: instanceId
    })

    instance.name = `TreeCube_${instanceId}`
    this.activePrefabs.push(instance)

    this.logger.info(`Spawned tree at ${spawnPos.x.toFixed(2)}, ${spawnPos.y.toFixed(2)}, ${spawnPos.z.toFixed(2)}`)
  }

  updatePrefabs(): void {
    const deltaTime = getDeltaTime()
    const targetPos = this.targetPosition.getTransform().getWorldPosition()
    const prefabsToKeep: SceneObject[] = []
    const idsToRemove: string[] = []

    for (let i = 0; i < this.activePrefabs.length; i++) {
      const prefab = this.activePrefabs[i]
      let prefabToDestroy = false
      let instanceId = ""

      if (!prefab) continue

      try {
        if (typeof prefab.name !== "string") {
          this.logger.warn("Prefab name is not a string")
          continue
        }

        const idMatch = prefab.name.match(/TreeCube_(\w+)/)
        if (!idMatch || !idMatch[1]) {
          this.logger.warn("Could not extract ID from prefab name: " + prefab.name)
          continue
        }

        instanceId = idMatch[1]

        if (this.pendingRemoval.has(instanceId)) {
          idsToRemove.push(instanceId)
          this.pendingRemoval.delete(instanceId)
          continue
        }

        const instanceData = this.prefabData.get(instanceId)
        if (!instanceData) {
          this.logger.warn("No instance data found for ID: " + instanceId)
          continue
        }

        try {
          const transform = prefab.getTransform()
          if (!transform) {
            this.logger.warn("Could not get transform for prefab")
            continue
          }

          const currentPos = transform.getWorldPosition()

          const moveAmount = this.moveSpeed * deltaTime
          const newPos = currentPos.add(instanceData.moveDirection.uniformScale(moveAmount))
          transform.setWorldPosition(newPos)

          const currentRot = transform.getLocalRotation()
          const xRad = this.rotationSpeedX * deltaTime * (Math.PI / 180)
          const yRad = this.rotationSpeedY * deltaTime * (Math.PI / 180)
          const zRad = this.rotationSpeedZ * deltaTime * (Math.PI / 180)

          const xRot = quat.angleAxis(xRad, new vec3(1, 0, 0))
          const yRot = quat.angleAxis(yRad, new vec3(0, 1, 0))
          const zRot = quat.angleAxis(zRad, new vec3(0, 0, 1))

          transform.setLocalRotation(currentRot.multiply(xRot).multiply(yRot).multiply(zRot))

          if (this.destroyOnReachTarget && currentPos.distance(targetPos) < 0.5) {
            prefabToDestroy = true
            idsToRemove.push(instanceId)
          }
        } catch (e) {
          this.logger.error("Error updating prefab: " + e)
          prefabToDestroy = true
          idsToRemove.push(instanceId)
        }

        if (prefabToDestroy) {
          try { prefab.destroy() } catch (e) { this.logger.error("Error destroying prefab: " + e) }
        } else {
          prefabsToKeep.push(prefab)
        }
      } catch (e) {
        try {
          if (e instanceof Error) this.logger.error("Error in prefab update loop: " + e.message)
          else this.logger.error("Unknown error in prefab update loop")
        } catch (_) {}

        try { if (prefab) prefab.destroy() } catch (_) {}

        if (instanceId) idsToRemove.push(instanceId)
      }
    }

    for (const id of idsToRemove) {
      this.prefabData.delete(id)
    }

    this.activePrefabs = prefabsToKeep
  }
}
