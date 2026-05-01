/**
 * Specs Inc. 2026
 * Play / Pause Manager — central game state controller.
 *
 * Responsibilities:
 *   - Pause / resume all lane instantiators and the LanePatternController
 *   - Display live damage percentage (each enemy hit = 1/3; 3 hits = 100%)
 *   - Display cumulative distance travelled (speed × time, converted to metres)
 *
 * Button wiring is handled by MainMenu.ts — call pause() / resume() / restart()
 * from any script via PlayPauseManager.getInstance().
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators"
import { LanePatternController } from "./LanePatternController"
import { CoinInstantiator } from "./CoinInstantiator"
import { EnemyInstantiator } from "./EnemyInstantiator"
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
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Enemy Instantiators</span>')

  @input
  @allowUndefined
  @hint("Left lane EnemyInstantiator")
  enemyLeft: EnemyInstantiator | undefined

  @input
  @allowUndefined
  @hint("Middle lane EnemyInstantiator")
  enemyMiddle: EnemyInstantiator | undefined

  @input
  @allowUndefined
  @hint("Right lane EnemyInstantiator")
  enemyRight: EnemyInstantiator | undefined

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

  @input
  @allowUndefined
  @hint("Text component that shows the score (format: x 42)")
  scoreText: Component | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">VFX</span>')

  @input
  @allowUndefined
  @hint("Rain VFXComponent — will be paused/resumed alongside the game")
  rainVFX: VFXComponent | undefined

  @input
  @allowUndefined
  @hint("Cloud VFXComponent — will be paused/resumed alongside the game")
  cloudVFX: VFXComponent | undefined

  @ui.separator
  @input
  @hint("If true the game starts paused — useful for testing; in production MainMenu controls this via Play button")
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
  private gameOverTriggered: boolean = false

  // Registered by MainMenu — called once when damage hits 100%
  public onGameOver: (() => void) | null = null

  private coins: (CoinInstantiator | undefined)[] = []
  private enemies: (EnemyInstantiator | undefined)[] = []
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

    if (!this.laneController) {
      this.logger.warn("laneController is not assigned — pause/resume will have no effect")
    }

    this.coins = [this.coinLeft,  this.coinMiddle,  this.coinRight]
    this.enemies = [this.enemyLeft,  this.enemyMiddle,  this.enemyRight]
    this.roads = [this.roadLeft,  this.roadMiddle,  this.roadRight]

    if (this.startPaused) {
      this.pause()
    }

    this.logger.info("PlayPauseManager started")
  }

  // ─── Public API ────────────────────────────────────────────────────────────

  pause(): void {
    this.logger.info(`pause() called — isPaused:${this.isPaused}, laneController assigned:${!!this.laneController}`)
    if (this.isPaused) {
      this.logger.info("pause() ignored — already paused")
      return
    }
    this.isPaused = true
    if (this.laneController) {
      this.laneController.pauseAll()
    } else {
      this.logger.warn("pause() — laneController not assigned, movement will not stop!")
    }
    if (this.rainVFX)  this.rainVFX.paused  = true
    if (this.cloudVFX) this.cloudVFX.paused = true
    this.logger.info("Game paused")
  }

  resume(): void {
    this.logger.info(`resume() called — isPaused:${this.isPaused}, laneController assigned:${!!this.laneController}`)
    if (!this.isPaused) {
      this.logger.info("resume() ignored — already playing")
      return
    }
    this.isPaused = false
    if (this.laneController) {
      this.laneController.resumeAll()
    }
    if (this.rainVFX)  this.rainVFX.paused  = false
    if (this.cloudVFX) this.cloudVFX.paused = false
    this.logger.info("Game resumed")
  }

  restart(): void {
    // Wipe all in-flight tiles and reset spawn timers on every instantiator
    for (let i = 0; i < 3; i++) {
      if (this.coins[i]) this.coins[i].reset()
      if (this.enemies[i]) this.enemies[i].reset()
      if (this.roads[i]) this.roads[i].reset()
    }

    // Reset the spawning controller (clears timers, wave state, speed ramp)
    if (this.laneController) {
      this.laneController.isPaused = false
      this.laneController.reset()
    }

    // Reset score and damage
    const gm = SnapSaberGlobalManager.getInstance()
    if (gm) gm.reset()

    // Reset distance, paused state, and game-over flag
    this.distanceTravelled   = 0
    this.isPaused            = false
    this.gameOverTriggered   = false
    if (this.rainVFX)  this.rainVFX.paused  = false
    if (this.cloudVFX) this.cloudVFX.paused = false

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
    if (!this.isPaused && this.laneController) {
      this.distanceTravelled += this.laneController.getCurrentSpeed() * getDeltaTime()
    }
    this.updateHUD()
  }

  private updateHUD(): void {
    this.checkGameOver()
    this.updateDamageDisplay()
    this.updateDistanceDisplay()
    this.updateScoreDisplay()
  }

  private checkGameOver(): void {
    if (this.gameOverTriggered) return
    const gm = SnapSaberGlobalManager.getInstance()
    if (!gm || !gm.isOver()) return
    this.gameOverTriggered = true
    this.pause()
    if (this.onGameOver) this.onGameOver()
    this.logger.info("Game over — pausing and notifying MainMenu")
  }

  private updateDamageDisplay(): void {
    if (!this.damageText) return
    const gm = SnapSaberGlobalManager.getInstance()
    if (!gm) return
    const strikes = gm.getEnemyStrikes()
    const max     = gm.maxEnemyStrikes
    const pct     = Math.min(Math.round((strikes / max) * 100), 100)
    try {
      ;(this.damageText as any).text = `Damage: ${pct}%`
    } catch (e) {
      this.logger.error("Error updating damage display: " + e)
    }
  }

  private updateDistanceDisplay(): void {
    if (!this.distanceText) return
    const metres = this.distanceTravelled / 100
    try {
      ;(this.distanceText as any).text = `${metres.toFixed(0)} m`
    } catch (e) {
      this.logger.error("Error updating distance display: " + e)
    }
  }

  private updateScoreDisplay(): void {
    if (!this.scoreText) return
    const gm = SnapSaberGlobalManager.getInstance()
    if (!gm) return
    try {
      ;(this.scoreText as any).text = `x ${gm.getScore()}`
    } catch (e) {
      this.logger.error("Error updating score display: " + e)
    }
  }
}
