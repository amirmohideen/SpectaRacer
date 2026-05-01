/**
 * Specs Inc. 2026
 * Car Handle Steering — maps a handle's local X position to the car's Y rotation,
 * but only when the handle is held stationary. While moving, car returns to base rotation.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class CarHandleSteering extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">CarHandleSteering – steer car Y from handle X position + velocity</span><br/><span style="color: #94A3B8; font-size: 11px;">Steers only when the handle is held still. While the handle is moving the car returns to its base rotation.</span>')
  @ui.separator

  @input
  @hint("The handle SceneObject whose local X position drives steering")
  handle!: SceneObject

  @input
  @hint("Maximum Y-angle offset in degrees in either direction")
  maxSteerAngle: number = 30

  @input
  @hint("How fast the car rotation lerps toward the target angle (higher = snappier)")
  followSpeed: number = 8.0

  @input
  @hint("Handle velocity (units/sec) above which the handle is considered 'moving' and the car returns to base. Tune this to match how fast your handle is typically dragged.")
  stationaryThreshold: number = 10.0

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
  private prevHandleX: number = 0
  private smoothedVelocity: number = 0
  private readonly DEG_TO_RAD = Math.PI / 180
  // Internal velocity smoothing — keeps velocity estimate stable across noisy frames
  private readonly VELOCITY_SMOOTH = 0.15
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
    this.prevHandleX = this.handle.getTransform().getLocalPosition().x
    this.smoothedVelocity = 0

    this.logger.info("Base rotation recorded. Max steer: ±" + this.maxSteerAngle + "° | Stationary threshold: " + this.stationaryThreshold + " u/s")
  }

  @bindUpdateEvent
  onUpdate(): void {
    if (!this.handle || !this.startLocalRotation) return

    const dt = Math.max(getDeltaTime(), 0.0001)
    const currentX = this.handle.getTransform().getLocalPosition().x

    // --- Velocity tracking ---
    const rawVelocity = (currentX - this.prevHandleX) / dt
    // Exponential smoothing so single-frame spikes don't affect the reading
    this.smoothedVelocity = this.smoothedVelocity + (rawVelocity - this.smoothedVelocity) * this.VELOCITY_SMOOTH
    this.prevHandleX = currentX

    // --- Stationary factor ---
    // 1.0 = handle is still → full position-based steering
    // 0.0 = handle is moving fast → car returns to base rotation
    const speed = Math.abs(this.smoothedVelocity)
    const stationaryFactor = 1 - Math.min(speed / this.stationaryThreshold, 1)

    // --- Target angle ---
    const positionOffset = Math.max(-this.maxSteerAngle, Math.min(this.maxSteerAngle, currentX))
    const targetOffsetY = positionOffset * stationaryFactor

    // --- Lerp and apply ---
    const t = Math.min(this.followSpeed * dt, 1)
    this.currentOffsetY = this.currentOffsetY + (targetOffsetY - this.currentOffsetY) * t

    const offsetRot = quat.fromEulerAngles(0, this.currentOffsetY * this.DEG_TO_RAD, 0)
    this.sceneObject.getTransform().setLocalRotation(this.startLocalRotation.multiply(offsetRot))

    if (this.enableLogging) {
      this.logger.debug(
        `x: ${currentX.toFixed(2)}  vel: ${this.smoothedVelocity.toFixed(2)}  factor: ${stationaryFactor.toFixed(2)}  targetY: ${targetOffsetY.toFixed(2)}°  carY: ${this.currentOffsetY.toFixed(2)}°`
      )
    }
  }
}
