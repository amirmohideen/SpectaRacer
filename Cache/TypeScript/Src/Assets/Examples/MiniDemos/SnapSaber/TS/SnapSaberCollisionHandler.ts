/**
 * Specs Inc. 2026
 * Snap Saber Collision Handler component for the Essentials Spectacles lens.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent } from "SnapDecorators.lspkg/decorators"
import {SnapSaberGlobalManager} from "./SnapSaberGlobalManager"

@component
export class SnapSaberCollisionHandler extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">SnapSaberCollisionHandler – detect saber-to-target collisions</span><br/><span style="color: #94A3B8; font-size: 11px;">Coin hits award points; enemy hits deal damage (3 strikes = game over).</span>')
  @ui.separator

  @input
  @hint("The saber object with the collider component")
  saberObject!: SceneObject

  @input
  @hint("Name prefix to identify coin target objects")
  coinIdentifier: string = "CoinCube"

  @input
  @hint("Name prefix to identify enemy obstacle objects")
  enemyIdentifier: string = "EnemyCube"

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  private collider: Component
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("SnapSaberCollisionHandler", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    if (this.saberObject) {
      this.collider = this.saberObject.getComponent("Physics.ColliderComponent")

      if (!this.collider) {
        this.logger.error("No collider component found on saber object")
        return
      }

      this.setupCollisionDetection()
    } else {
      this.logger.error("Saber object not assigned")
    }

    this.logger.info("SnapSaber Collision Handler initialized")
  }

  private setupCollisionDetection(): void {
    ;(this.collider as any).onOverlapEnter.add((e) => {
      this.onOverlapEnter(e.overlap)
    })
  }

  private onOverlapEnter(overlap: any): void {
    const collidingObject = overlap.collider.getSceneObject()
    if (!collidingObject) return

    const name = collidingObject.name
    const globalManager = SnapSaberGlobalManager.getInstance()

    if (name.includes(this.coinIdentifier)) {
      this.logger.info(`Saber hit coin: ${name}`)
      if (globalManager) {
        globalManager.registerCoinHit(collidingObject)
      } else {
        this.logger.warn("No global manager — destroying coin directly")
        collidingObject.destroy()
      }
    } else if (name.includes(this.enemyIdentifier)) {
      this.logger.info(`Saber hit enemy: ${name}`)
      if (globalManager) {
        globalManager.registerEnemyHit(collidingObject)
      } else {
        this.logger.warn("No global manager — destroying enemy directly")
        collidingObject.destroy()
      }
    }
  }
}
