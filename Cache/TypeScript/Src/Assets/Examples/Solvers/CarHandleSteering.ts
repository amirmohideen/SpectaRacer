/**
 * Specs Inc. 2026
 * Car Handle Steering — maps handle local X delta (relative to last reset position) to car Y rotation.
 * If the handle is held stationary beyond a timeout, car returns to base rotation and the
 * reference X is updated to the handle's current position for the next movement.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class CarHandleSteering extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">CarHandleSteering – steer car Y from handle X delta</span><br/><span style="color: #94A3B8; font-size: 11px;">Car angle = handle position relative to the last reset point. After stationary timeout the reference resets to handle\'s current X.</span>')
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
  @hint("Seconds the handle must be held still before the car resets and the reference X updates")
  stationaryTimeout: number = 1.0

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
  private targetOffsetY: number = 0
  private referenceHandleX: number = 0   // handle X at the time of the last reset
  private prevHandleX: number = 0
  private smoothedVelocity: number = 0
  private timeSinceStationary: number = 0
  private hasReset: boolean = false       // prevents re-triggering reset every frame
  private readonly DEG_TO_RAD = Math.PI / 180
  private readonly STATIONARY_SPEED = 0.5
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

    const initialX = this.handle.getTransform().getLocalPosition().x
    this.startLocalRotation = this.sceneObject.getTransform().getLocalRotation()
    this.prevHandleX = initialX
    this.referenceHandleX = initialX
    this.smoothedVelocity = 0
    this.timeSinceStationary = this.stationaryTimeout
    this.hasReset = true
    this.targetOffsetY = 0

    this.logger.info("Base rotation recorded. Max steer: ±" + this.maxSteerAngle + "° | Timeout: " + this.stationaryTimeout + "s")
  }

  @bindUpdateEvent
  onUpdate(): void {
    if (!this.handle || !this.startLocalRotation) return

    const dt = Math.max(getDeltaTime(), 0.0001)
    const currentX = this.handle.getTransform().getLocalPosition().x

    // --- Smoothed velocity ---
    const rawVelocity = (currentX - this.prevHandleX) / dt
    this.smoothedVelocity = this.smoothedVelocity + (rawVelocity - this.smoothedVelocity) * this.VELOCITY_SMOOTH
    this.prevHandleX = currentX

    const speed = Math.abs(this.smoothedVelocity)

    if (speed > this.STATIONARY_SPEED) {
      // Handle is moving — compute angle relative to the last reset reference
      this.timeSinceStationary = 0
      this.hasReset = false
      const delta = currentX - this.referenceHandleX
      this.targetOffsetY = Math.max(-this.maxSteerAngle, Math.min(this.maxSteerAngle, delta))
    } else {
      // Handle is stationary — accumulate idle time
      this.timeSinceStationary += dt

      if (this.timeSinceStationary >= this.stationaryTimeout && !this.hasReset) {
        // Timeout reached — reset car and shift the reference to the current handle position
        this.targetOffsetY = 0
        this.referenceHandleX = currentX
        this.hasReset = true
        this.logger.info(`Reset. New referenceX = ${currentX.toFixed(2)}`)
      }
      // Before timeout or already reset: hold targetOffsetY unchanged
    }

    // --- Lerp and apply ---
    const t = Math.min(this.followSpeed * dt, 1)
    this.currentOffsetY = this.currentOffsetY + (this.targetOffsetY - this.currentOffsetY) * t

    const offsetRot = quat.fromEulerAngles(0, this.currentOffsetY * this.DEG_TO_RAD, 0)
    this.sceneObject.getTransform().setLocalRotation(this.startLocalRotation.multiply(offsetRot))

    if (this.enableLogging) {
      this.logger.debug(
        `x: ${currentX.toFixed(2)}  ref: ${this.referenceHandleX.toFixed(2)}  delta: ${(currentX - this.referenceHandleX).toFixed(2)}  vel: ${this.smoothedVelocity.toFixed(2)}  idle: ${this.timeSinceStationary.toFixed(2)}s  target: ${this.targetOffsetY.toFixed(1)}°  car: ${this.currentOffsetY.toFixed(1)}°`
      )
    }
  }
}
