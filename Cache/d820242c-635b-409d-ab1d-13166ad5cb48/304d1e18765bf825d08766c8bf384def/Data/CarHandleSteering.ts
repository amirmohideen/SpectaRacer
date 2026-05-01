/**
 * Specs Inc. 2026
 * Car Handle Steering — maps a handle's local X position to the car's Y rotation.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class CarHandleSteering extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">CarHandleSteering – steer car Y rotation from handle X position</span><br/><span style="color: #94A3B8; font-size: 11px;">Reads the handle\'s local X position and adds it as a Y-axis offset to the car\'s base rotation. Clamped to maxSteerAngle.</span>')
  @ui.separator

  @input
  @hint("The handle SceneObject whose local X position drives steering (e.g. '[Handle] Drag to turn')")
  handle!: SceneObject

  @input
  @hint("Maximum Y-angle offset in degrees in either direction (e.g. 30 clamps to ±30°)")
  maxSteerAngle: number = 30

  @input
  @hint("How fast the car rotation lerps toward the target angle (higher = snappier)")
  followSpeed: number = 8.0

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  private startLocalRotation: quat
  private currentOffsetY: number = 0
  private readonly DEG_TO_RAD = Math.PI / 180
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("CarHandleSteering", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    if (!this.handle) {
      this.logger.warn("handle is not assigned")
      return
    }

    this.startLocalRotation = this.sceneObject.getTransform().getLocalRotation()
    this.logger.info("Base rotation recorded. Max steer: ±" + this.maxSteerAngle + "°")
  }

  @bindUpdateEvent
  onUpdate(): void {
    if (!this.handle || !this.startLocalRotation) return

    // Read handle local X — when handle is at rest it returns to 0
    const handleX = this.handle.getTransform().getLocalPosition().x

    // Clamp to ±maxSteerAngle (handles both directions with a single clamp)
    const targetOffsetY = Math.max(-this.maxSteerAngle, Math.min(this.maxSteerAngle, handleX))

    // Smooth lerp toward the target angle
    const t = Math.min(this.followSpeed * getDeltaTime(), 1)
    this.currentOffsetY = this.currentOffsetY + (targetOffsetY - this.currentOffsetY) * t

    // Apply: base rotation * local Y offset
    const offsetRot = quat.fromEulerAngles(0, this.currentOffsetY * this.DEG_TO_RAD, 0)
    this.sceneObject.getTransform().setLocalRotation(this.startLocalRotation.multiply(offsetRot))

    if (this.enableLogging) {
      this.logger.debug(`handleX: ${handleX.toFixed(2)}  targetY: ${targetOffsetY.toFixed(2)}°  currentY: ${this.currentOffsetY.toFixed(2)}°`)
    }
  }
}
