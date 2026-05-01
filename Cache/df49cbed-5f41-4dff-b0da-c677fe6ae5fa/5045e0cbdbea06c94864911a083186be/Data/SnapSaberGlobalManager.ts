/**
 * Specs Inc. 2026
 * Snap Saber Global Manager handling core logic for the Essentials lens.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent } from "SnapDecorators.lspkg/decorators"

@component
export class SnapSaberGlobalManager extends BaseScriptComponent {
  @ui.label('<span style="color: #60A5FA;">SnapSaberGlobalManager – singleton score & damage manager</span><br/><span style="color: #94A3B8; font-size: 11px;">Tracks score from coin hits and tree damage strikes. 3 tree hits = game over.</span>')
  @ui.separator

  @input
  @hint("Text component that displays the score")
  scoreText!: Component

  @input
  @hint("Points awarded for each coin hit")
  pointsPerHit: number = 10

  @input
  @hint("Number of tree hits before game over")
  maxTreeStrikes: number = 3

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Sound Effects</span>')

  @input
  @allowUndefined
  @hint("AudioComponent to play when a coin is collected — assign your coin SFX AudioComponent here")
  coinAudio: AudioComponent | undefined

  @input
  @allowUndefined
  @hint("AudioComponent to play when the car hits a tree — assign your crash SFX AudioComponent here")
  treeAudio: AudioComponent | undefined

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')
  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)")
  enableLoggingLifecycle: boolean = false

  private score: number = 0
  private treeStrikes: number = 0
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
    this.treeStrikes = 0
    this.isGameOver = false
    this.updateScoreDisplay()

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

    this.updateScoreDisplay()
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

  registerTreeHit(targetObject: SceneObject): void {
    if (!this.isInitialized || this.isGameOver) return

    const currentTime = getTime()
    if (currentTime - this.lastHitTime < this.hitCooldown) return

    this.treeStrikes++
    this.lastHitTime = currentTime

    this.logger.info(`Tree hit! Strikes: ${this.treeStrikes} / ${this.maxTreeStrikes}`)
    print(`[SnapSaberGlobalManager] Tree hit! Strikes: ${this.treeStrikes} / ${this.maxTreeStrikes}`)

    if (this.treeStrikes >= this.maxTreeStrikes) {
      this.isGameOver = true
      print("[SnapSaberGlobalManager] GAME OVER")
      this.logger.info("GAME OVER")
    }

    if (targetObject) {
      try {
        targetObject.destroy()
      } catch (e) {
        this.logger.error("Error destroying tree: " + e)
      }
    }
  }

  getScore(): number {
    return this.score
  }

  getTreeStrikes(): number {
    return this.treeStrikes
  }

  isOver(): boolean {
    return this.isGameOver
  }

  reset(): void {
    this.score       = 0
    this.treeStrikes = 0
    this.isGameOver  = false
    this.lastHitTime = 0
    this.updateScoreDisplay()
    this.logger.info("SnapSaberGlobalManager reset")
  }

  private updateScoreDisplay(): void {
    if (this.scoreText) {
      try {
        ;(this.scoreText as any).text = `Score: ${this.score}`
      } catch (e) {
        this.logger.error("Error updating score display: " + e)
      }
    }
  }
}
