/**
 * Specs Inc. 2026
 * Handle Return To Start — snaps a draggable handle back to its original local position on release.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"
import { InteractableManipulation } from "SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation"

@component
export class HandleReturnToStart extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">HandleReturnToStart – return handle to origin on release</span><br/><span style="color: #94A3B8; font-size: 11px;">Attach to the handle SceneObject. Records local position at start and lerps back when the manipulation ends.</span>')
  @ui.separator

  @input
  @hint("The InteractableManipulation component on this handle")
  manipulationComponent!: InteractableManipulation

  @input
  @hint("How fast the handle lerps back (higher = snappier). 0 = instant snap.")
  returnSpeed: number = 8.0

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  private startLocalPosition: vec3
  private isReturning: boolean = false
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("HandleReturnToStart", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    this.startLocalPosition = this.sceneObject.getTransform().getLocalPosition()
    this.logger.info(`Start position recorded: ${this.startLocalPosition.x.toFixed(3)}, ${this.startLocalPosition.y.toFixed(3)}, ${this.startLocalPosition.z.toFixed(3)}`)

    if (!this.manipulationComponent) {
      this.logger.warn("manipulationComponent is not assigned")
      return
    }

    this.manipulationComponent.onManipulationEnd.add(() => {
      this.isReturning = true
      this.logger.info("Manipulation ended — returning to start position")
    })

    this.manipulationComponent.onManipulationStart.add(() => {
      this.isReturning = false
      this.logger.info("Manipulation started — return cancelled")
    })
  }

  @bindUpdateEvent
  onUpdate(): void {
    if (!this.isReturning) return

    const transform = this.sceneObject.getTransform()
    const current = transform.getLocalPosition()

    if (this.returnSpeed <= 0) {
      transform.setLocalPosition(this.startLocalPosition)
      this.isReturning = false
      return
    }

    const dist = current.distance(this.startLocalPosition)
    if (dist < 0.0005) {
      transform.setLocalPosition(this.startLocalPosition)
      this.isReturning = false
      this.logger.info("Handle returned to start position")
      return
    }

    const t = Math.min(this.returnSpeed * getDeltaTime(), 1)
    transform.setLocalPosition(vec3.lerp(current, this.startLocalPosition, t))
  }
}
