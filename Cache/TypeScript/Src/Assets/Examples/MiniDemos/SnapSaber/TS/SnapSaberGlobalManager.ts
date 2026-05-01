/**
 * Specs Inc. 2026
 * Snap Saber Global Manager handling core logic for the Essentials lens.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent } from "SnapDecorators.lspkg/decorators"

@component
export class SnapSaberGlobalManager extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">SnapSaberGlobalManager – singleton score & damage manager</span><br/><span style="color: #94A3B8; font-size: 11px;">Tracks score from coin hits and enemy damage strikes. 3 enemy hits = game over.</span>')
  @ui.separator

  @input
  @hint("Points awarded for each coin hit")
  pointsPerHit: number = 10

  @input
  @hint("Number of enemy hits before game over")
  maxEnemyStrikes: number = 3

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Sound Effects</span>')

  @input
  @allowUndefined
  @hint("AudioComponent to play when a coin is collected — assign your coin SFX AudioComponent here")
  coinAudio: AudioComponent | undefined

  @input
  @allowUndefined
  @hint("AudioComponent to play when the car hits an enemy — assign your crash SFX AudioComponent here")
  enemyAudio: AudioComponent | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  private score: number = 0
  private enemyStrikes: number = 0
  private isGameOver: boolean = false
  private lastHitTime: number = 0
  private hitCooldown: number = 0.1
  private isInitialized: boolean = false
  private globalInstanceName: string = "SnapSaberGlobalManagerInstance"
  private logger: Logger

  onAwake(): void {
    this.logger = new Logger("SnapSaberGlobalManager", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")

    // @ts-ignore - Accessing global scope
    global[this.globalInstanceName] = this

    this.logger.info("SnapSaber Global Manager initialized via global variable")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    this.score = 0
    this.enemyStrikes = 0
    this.isGameOver = false

    this.isInitialized = true
    this.logger.info("SnapSaber Global Manager started")
  }

  static getInstance(): SnapSaberGlobalManager | null {
    try {
      // @ts-ignore - Accessing global scope
      return global["SnapSaberGlobalManagerInstance"] || null
    } catch (e) {
      print("Error accessing global manager: " + e)
      return null
    }
  }

  registerCoinHit(targetObject: SceneObject): void {
    if (!this.isInitialized || this.isGameOver) return

    const currentTime = getTime()
    if (currentTime - this.lastHitTime < this.hitCooldown) return

    this.score += this.pointsPerHit
    this.lastHitTime = currentTime

    if (this.coinAudio) this.coinAudio.play(1)
    this.logger.info(`Coin hit! Score: ${this.score}`)

    if (targetObject) {
      try {
        targetObject.destroy()
      } catch (e) {
        this.logger.error("Error destroying coin: " + e)
      }
    }
  }

  /** Kept for backwards-compatibility with any existing callers. */
  registerHit(targetObject: SceneObject): void {
    this.registerCoinHit(targetObject)
  }

  registerEnemyHit(targetObject: SceneObject): void {
    if (!this.isInitialized || this.isGameOver) return

    const currentTime = getTime()
    if (currentTime - this.lastHitTime < this.hitCooldown) return

    this.enemyStrikes++
    this.lastHitTime = currentTime

    if (this.enemyAudio) this.enemyAudio.play(1)
    this.logger.info(`Enemy hit! Strikes: ${this.enemyStrikes} / ${this.maxEnemyStrikes}`)
    print(`[SnapSaberGlobalManager] Enemy hit! Strikes: ${this.enemyStrikes} / ${this.maxEnemyStrikes}`)

    if (this.enemyStrikes >= this.maxEnemyStrikes) {
      this.isGameOver = true
      print("[SnapSaberGlobalManager] GAME OVER")
      this.logger.info("GAME OVER")
    }

    if (targetObject) {
      try {
        targetObject.destroy()
      } catch (e) {
        this.logger.error("Error destroying enemy: " + e)
      }
    }
  }

  getScore(): number {
    return this.score
  }

  getEnemyStrikes(): number {
    return this.enemyStrikes
  }

  isOver(): boolean {
    return this.isGameOver
  }

  reset(): void {
    this.score        = 0
    this.enemyStrikes = 0
    this.isGameOver   = false
    this.lastHitTime  = 0
    this.logger.info("SnapSaberGlobalManager reset")
  }
}
