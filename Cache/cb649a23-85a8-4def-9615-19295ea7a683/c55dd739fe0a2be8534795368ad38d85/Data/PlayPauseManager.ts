/**
 * Specs Inc. 2026
 * Play / Pause Manager — central game state controller.
 *
 * Responsibilities:
 *   - Pause / resume all lane instantiators and the LanePatternController
 *   - Display live damage percentage (each tree hit = 1/3; 3 hits = 100%)
 *   - Display cumulative distance travelled (speed × time, converted to metres)
 *
 * Wire play/pause Interactables via the Inspector, or call pause() / resume()
 * from any other script via PlayPauseManager.getInstance().
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"
import { Interactable } from "SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable"
import { LanePatternController } from "./LanePatternController"
import { LaneSpawnManager } from "./LaneSpawnManager"
import { CoinInstantiator } from "./CoinInstantiator"
import { TreeInstantiator } from "./TreeInstantiator"
import { RoadInstantiator } from "./RoadInstantiator"
import { SnapSaberGlobalManager } from "./SnapSaberGlobalManager"

@component
export class PlayPauseManager extends BaseScriptComponent {
  @ui.label('<span style="color: #F472B6;">PlayPauseManager – central play/pause + HUD controller</span><br/><span style="color: #94A3B8; font-size: 11px;">Pauses all instantiators, displays damage % and distance travelled.</span>')
  @ui.separator

  @input
  @allowUndefined
  @hint("The LanePatternController driving the game speed (used for speed ramp + pause)")
  laneController: LanePatternController | undefined

  @input
  @allowUndefined
  @hint("The LaneSpawnManager (self-contained spawner — assign if used alongside or instead of LanePatternController)")
  laneSpawnManager: LaneSpawnManager | undefined

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Coin Instantiators</span>')

  @input
  @allowUndefined
  @hint("Left lane CoinInstantiator")
  coinLeft: CoinInstantiator | undefined

  @input
  @allowUndefined
  @hint("Middle lane CoinInstantiator")
  coinMiddle: CoinInstantiator | undefined

  @input
  @allowUndefined
  @hint("Right lane CoinInstantiator")
  coinRight: CoinInstantiator | undefined

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Tree Instantiators</span>')

  @input
  @allowUndefined
  @hint("Left lane TreeInstantiator")
  treeLeft: TreeInstantiator | undefined

  @input
  @allowUndefined
  @hint("Middle lane TreeInstantiator")
  treeMiddle: TreeInstantiator | undefined

  @input
  @allowUndefined
  @hint("Right lane TreeInstantiator")
  treeRight: TreeInstantiator | undefined

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Road Instantiators</span>')

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
  @ui.label('<span style="color: #60A5FA;">HUD Outputs</span>')

  @input
  @allowUndefined
  @hint("Text component that shows damage percentage (0% → 33% → 67% → 100%)")
  damageText: Component | undefined

  @input
  @allowUndefined
  @hint("Text component that shows distance travelled in metres")
  distanceText: Component | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Controls</span>')

  @input
  @allowUndefined
  @hint("Interactable that triggers pause (e.g. a pause button)")
  pauseInteractable: Interactable | undefined

  @input
  @allowUndefined
  @hint("Interactable that triggers resume (e.g. a play button)")
  playInteractable: Interactable | undefined

  @input
  @allowUndefined
  @hint("Interactable that restarts the level from scratch")
  restartInteractable: Interactable | undefined

  @input
  @hint("If true the game starts paused and waits for the play button")
  startPaused: boolean = false

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging")
  enableLoggingLifecycle: boolean = false

  // ─── Runtime state ─────────────────────────────────────────────────────────

  private isPaused: boolean = false
  private distanceTravelled: number = 0

  private coins: (CoinInstantiator | undefined)[] = []
  private trees: (TreeInstantiator | undefined)[] = []
  private roads: (RoadInstantiator | undefined)[] = []

  private logger: Logger

  // ─── Singleton ─────────────────────────────────────────────────────────────

  private static readonly GLOBAL_KEY = "PlayPauseManagerInstance"

  static getInstance(): PlayPauseManager | null {
    try {
      // @ts-ignore
      return global[PlayPauseManager.GLOBAL_KEY] || null
    } catch (e) {
      return null
    }
  }

  // ─── Lifecycle ─────────────────────────────────────────────────────────────

  onAwake(): void {
    this.logger = new Logger("PlayPauseManager", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
    // @ts-ignore
    global[PlayPauseManager.GLOBAL_KEY] = this
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    if (!this.laneController && !this.laneSpawnManager) {
      this.logger.warn("Neither laneController nor laneSpawnManager is assigned — pause will have no effect on spawning")
    }

    this.coins = [this.coinLeft,  this.coinMiddle,  this.coinRight]
    this.trees = [this.treeLeft,  this.treeMiddle,  this.treeRight]
    this.roads = [this.roadLeft,  this.roadMiddle,  this.roadRight]

    if (this.pauseInteractable) {
      this.pauseInteractable.onTriggerEnd.add(() => this.pause())
    }
    if (this.playInteractable) {
      this.playInteractable.onTriggerEnd.add(() => this.resume())
    }
    if (this.restartInteractable) {
      this.restartInteractable.onTriggerEnd.add(() => this.restart())
    }

    if (this.startPaused) {
      this.pause()
    }

    this.logger.info("PlayPauseManager started")
  }

  // ─── Public API ────────────────────────────────────────────────────────────

  pause(): void {
    if (this.isPaused) return
    this.isPaused = true
    // LPC owns all instantiator references — pauseAll() freezes speeds and disables spawning
    if (this.laneController) this.laneController.pauseAll()
    this.logger.info("Game paused")
  }

  resume(): void {
    if (!this.isPaused) return
    this.isPaused = false
    // resumeAll() re-enables roads and lets LPC restore speeds on its next update frame
    if (this.laneController) this.laneController.resumeAll()
    this.logger.info("Game resumed")
  }

  restart(): void {
    // Wipe all in-flight tiles and reset spawn timers on every instantiator
    for (let i = 0; i < 3; i++) {
      if (this.coins[i]) this.coins[i].reset()
      if (this.trees[i]) this.trees[i].reset()
      if (this.roads[i]) this.roads[i].reset()
    }

    // Reset the spawning controllers (clears timers, wave state, speed ramp)
    if (this.laneController) {
      this.laneController.isPaused = false
      this.laneController.reset()
    }
    if (this.laneSpawnManager) {
      this.laneSpawnManager.isPaused = false
      this.laneSpawnManager.reset()
    }

    // Reset score and damage
    const gm = SnapSaberGlobalManager.getInstance()
    if (gm) gm.reset()

    // Reset distance counter and clear paused state
    this.distanceTravelled = 0
    this.isPaused          = false

    this.logger.info("Game restarted")
  }

  getIsPaused(): boolean {
    return this.isPaused
  }

  getDistanceTravelled(): number {
    return this.distanceTravelled
  }

  // ─── Update ────────────────────────────────────────────────────────────────

  @bindUpdateEvent
  onUpdate(): void {
    if (!this.isPaused) {
      // Prefer LPC's ramped speed; fall back to LaneSpawnManager's static speed
      const speed = this.laneController
        ? this.laneController.getCurrentSpeed()
        : (this.laneSpawnManager ? this.laneSpawnManager.moveSpeed : 0)
      this.distanceTravelled += speed * getDeltaTime()
    }
    this.updateHUD()
  }

  private updateHUD(): void {
    this.updateDamageDisplay()
    this.updateDistanceDisplay()
  }

  private updateDamageDisplay(): void {
    if (!this.damageText) return
    const gm = SnapSaberGlobalManager.getInstance()
    if (!gm) return
    const strikes = gm.getTreeStrikes()
    const max     = gm.maxTreeStrikes
    const pct     = Math.min(Math.round((strikes / max) * 100), 100)
    try {
      ;(this.damageText as any).text = `Damage: ${pct}%`
    } catch (e) {
      this.logger.error("Error updating damage display: " + e)
    }
  }

  private updateDistanceDisplay(): void {
    if (!this.distanceText) return
    // moveSpeed units are cm/s → divide by 100 for metres
    const metres = this.distanceTravelled / 100
    try {
      ;(this.distanceText as any).text = `${metres.toFixed(0)} m`
    } catch (e) {
      this.logger.error("Error updating distance display: " + e)
    }
  }
}
