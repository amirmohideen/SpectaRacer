/**
 * Specs Inc. 2026
 * Car Handle Steering — maps handle local X to car Y rotation while the handle is moving.
 * If the handle is held stationary beyond a timeout, car returns to its base rotation.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"

@component
export class CarHandleSteering extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">CarHandleSteering – steer car Y from handle X movement</span><br/><span style="color: #94A3B8; font-size: 11px;">Car angle tracks handle X while moving. Holds angle during brief pauses. Returns to base after stationary timeout.</span>')
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
  @hint("Seconds the handle must be held still before the car resets to its base rotation")
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
  private prevHandleX: number = 0
  private smoothedVelocity: number = 0
  private timeSinceStationary: number = 0
  private readonly DEG_TO_RAD = Math.PI / 180
  // Velocity below which the handle is considered stationary (internal, in units/sec)
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

    this.startLocalRotation = this.sceneObject.getTransform().getLocalRotation()
    this.prevHandleX = this.handle.getTransform().getLocalPosition().x
    this.smoothedVelocity = 0
    // Start as if already timed out so the car sits at base rotation immediately
    this.timeSinceStationary = this.stationaryTimeout
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
      // Handle is moving — track its X position and reset the idle timer
      this.timeSinceStationary = 0
      this.targetOffsetY = Math.max(-this.maxSteerAngle, Math.min(this.maxSteerAngle, currentX))
    } else {
      // Handle is stationary — accumulate idle time
      this.timeSinceStationary += dt

      if (this.timeSinceStationary >= this.stationaryTimeout) {
        // Timeout reached — drive car back to base rotation
        this.targetOffsetY = 0
      }
      // Before timeout: keep targetOffsetY unchanged (hold the current angle)
    }

    // --- Lerp and apply ---
    const t = Math.min(this.followSpeed * dt, 1)
    this.currentOffsetY = this.currentOffsetY + (this.targetOffsetY - this.currentOffsetY) * t

    const offsetRot = quat.fromEulerAngles(0, this.currentOffsetY * this.DEG_TO_RAD, 0)
    this.sceneObject.getTransform().setLocalRotation(this.startLocalRotation.multiply(offsetRot))

    if (this.enableLogging) {
      this.logger.debug(
        `x: ${currentX.toFixed(2)}  vel: ${this.smoothedVelocity.toFixed(2)}  idle: ${this.timeSinceStationary.toFixed(2)}s  target: ${this.targetOffsetY.toFixed(1)}°  car: ${this.currentOffsetY.toFixed(1)}°`
      )
    }
  }
}
