/**
 * Specs Inc. 2026
 * Main Menu — panel navigation and game lifecycle controller.
 *
 * Panel 1  Main menu     tutorial + play buttons
 * Panel 2  Pause overlay resume, weather toggle, restart, main menu
 * Panel 3  Tutorial      main menu button
 *
 * IMPORTANT: this script must live on a SceneObject that is NOT inside
 * LevelHandleMover. It needs to stay active while the level is disabled.
 */
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger"
import { bindStartEvent } from "SnapDecorators.lspkg/decorators"
import { RectangleButton } from "SpectaclesUIKit.lspkg/Scripts/Components/Button/RectangleButton"
import { Switch } from "SpectaclesUIKit.lspkg/Scripts/Components/Switch/Switch"
import { PlayPauseManager } from "./PlayPauseManager"

@component
export class MainMenu extends BaseScriptComponent {
  @ui.label('<span style="color: #F472B6;">MainMenu – panel navigation + game lifecycle</span><br/><span style="color: #94A3B8; font-size: 11px;">Manages Panel 1 (main menu), Panel 2 (pause), Panel 3 (tutorial) and the LevelHandleMover SceneObject.</span>')
  @ui.separator

  // ─── Panels ────────────────────────────────────────────────────────────────

  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Panels — drag each panel\'s root SceneObject</span>')

  @input
  @hint("Panel 1 — main menu (tutorial + play)")
  panel1!: SceneObject

  @input
  @hint("Panel 2 — pause overlay (resume, weather, restart, main menu)")
  panel2!: SceneObject

  @input
  @hint("Panel 3 — tutorial screen")
  panel3!: SceneObject

  @input
  @hint("Panel 4 — game over screen (restart + main menu)")
  panel4!: SceneObject

  // ─── Level ─────────────────────────────────────────────────────────────────

  @ui.separator
  @input
  @hint("The root SceneObject for the entire level — disabled at start, enabled when Play is pressed")
  levelHandleMover!: SceneObject

  // ─── Panel 1 buttons ───────────────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Panel 1 — Main Menu buttons</span>')

  @input
  @allowUndefined
  @hint("Tutorial button on Panel 1")
  tutorialButton: RectangleButton | undefined

  @input
  @allowUndefined
  @hint("Play button on Panel 1")
  playButton: RectangleButton | undefined

  // ─── Pause buttons (in-game) ───────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">In-game pause buttons — both open Panel 2</span>')

  @input
  @allowUndefined
  @hint("First pause button")
  pauseButton1: RectangleButton | undefined

  @input
  @allowUndefined
  @hint("Second pause button")
  pauseButton2: RectangleButton | undefined

  // ─── Panel 2 buttons ───────────────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Panel 2 — Pause overlay buttons</span>')

  @input
  @allowUndefined
  @hint("Resume button on Panel 2")
  resumeButton: RectangleButton | undefined

  @input
  @allowUndefined
  @hint("Weather Switch on Panel 2 — on enables the weather object, off disables it")
  weatherToggleSwitch: Switch | undefined

  @input
  @allowUndefined
  @hint("Restart button on Panel 2")
  restartButton: RectangleButton | undefined

  @input
  @allowUndefined
  @hint("Main Menu button on Panel 2")
  mainMenuButtonPanel2: RectangleButton | undefined

  // ─── Panel 3 buttons ───────────────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Panel 3 — Tutorial buttons</span>')

  @input
  @allowUndefined
  @hint("Main Menu button on Panel 3")
  mainMenuButtonPanel3: RectangleButton | undefined

  // ─── Panel 4 buttons ───────────────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #94A3B8; font-size: 11px;">Panel 4 — Game Over buttons</span>')

  @input
  @allowUndefined
  @hint("Restart button on Panel 4")
  restartButtonPanel4: RectangleButton | undefined

  @input
  @allowUndefined
  @hint("Main Menu button on Panel 4")
  mainMenuButtonPanel4: RectangleButton | undefined

  // ─── Weather object ────────────────────────────────────────────────────────

  @ui.separator
  @input
  @allowUndefined
  @hint("SceneObject toggled by the weather button (enabled ↔ disabled each press)")
  weatherObject: SceneObject | undefined

  // ─── Logging ───────────────────────────────────────────────────────────────

  @ui.separator
  @ui.label('<span style="color: #60A5FA;">Logging</span>')

  @input
  @hint("Enable general logging")
  enableLogging: boolean = false

  @input
  @hint("Enable lifecycle logging")
  enableLoggingLifecycle: boolean = false

  // ─── Runtime ───────────────────────────────────────────────────────────────

  private logger: Logger

  // ─── Lifecycle ─────────────────────────────────────────────────────────────

  onAwake(): void {
    this.logger = new Logger("MainMenu", this.enableLogging || this.enableLoggingLifecycle, true)
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onAwake()")
  }

  @bindStartEvent
  onStart(): void {
    if (this.enableLoggingLifecycle) this.logger.debug("LIFECYCLE: onStart()")

    this.validateInputs()
    this.setInitialState()
    this.wireButtons()

    this.logger.info("MainMenu started")
  }

  // ─── Setup ─────────────────────────────────────────────────────────────────

  private validateInputs(): void {
    if (!this.panel1)           this.logger.warn("panel1 not assigned")
    if (!this.panel2)           this.logger.warn("panel2 not assigned")
    if (!this.panel3)           this.logger.warn("panel3 not assigned")
    if (!this.panel4)           this.logger.warn("panel4 not assigned")
    if (!this.levelHandleMover) this.logger.warn("levelHandleMover not assigned")
  }

  private setInitialState(): void {
    if (this.panel1)           this.panel1.enabled           = true
    if (this.panel2)           this.panel2.enabled           = false
    if (this.panel3)           this.panel3.enabled           = false
    if (this.panel4)           this.panel4.enabled           = false
    if (this.levelHandleMover) this.levelHandleMover.enabled = false
  }

  private wireButtons(): void {
    if (this.tutorialButton)       this.tutorialButton.onTriggerUp.add(()       => this.openTutorial())
    if (this.playButton)           this.playButton.onTriggerUp.add(()           => this.startGame())

    if (this.pauseButton1)         this.pauseButton1.onTriggerUp.add(()         => this.openPauseMenu())
    if (this.pauseButton2)         this.pauseButton2.onTriggerUp.add(()         => this.openPauseMenu())

    if (this.resumeButton)        this.resumeButton.onTriggerUp.add(()              => this.resumeGame())
    if (this.weatherToggleSwitch) this.weatherToggleSwitch.onValueChange.add((v)   => this.onWeatherSwitchChanged(v))
    if (this.restartButton)       this.restartButton.onTriggerUp.add(()             => this.restartGame())
    if (this.mainMenuButtonPanel2) this.mainMenuButtonPanel2.onTriggerUp.add(() => this.goToMainMenuFromPause())

    if (this.mainMenuButtonPanel3) this.mainMenuButtonPanel3.onTriggerUp.add(() => this.goToMainMenuFromTutorial())

    if (this.restartButtonPanel4)   this.restartButtonPanel4.onTriggerUp.add(()  => this.restartFromGameOver())
    if (this.mainMenuButtonPanel4)  this.mainMenuButtonPanel4.onTriggerUp.add(() => this.goToMainMenuFromGameOver())
  }

  // ─── Panel 1 actions ───────────────────────────────────────────────────────

  private openTutorial(): void {
    if (this.panel1) this.panel1.enabled = false
    if (this.panel3) this.panel3.enabled = true
    this.logger.info("Opened tutorial")
  }

  private startGame(): void {
    if (this.panel1)           this.panel1.enabled           = false
    if (this.levelHandleMover) this.levelHandleMover.enabled = true
    // PPM's onAwake fires synchronously when LevelHandleMover is enabled, so the instance exists now
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.onGameOver = () => this.showGameOver()
    } else {
      this.logger.warn("PlayPauseManager not found — game over callback not registered")
    }
    this.logger.info("Game started — LevelHandleMover enabled")
  }

  // ─── Pause actions ─────────────────────────────────────────────────────────

  private openPauseMenu(): void {
    if (this.panel2) this.panel2.enabled = true
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.pause()
    } else {
      this.logger.warn("PlayPauseManager not found — game not paused")
    }
    this.logger.info("Pause menu opened")
  }

  // ─── Panel 2 actions ───────────────────────────────────────────────────────

  private resumeGame(): void {
    if (this.panel2) this.panel2.enabled = false
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.resume()
    } else {
      this.logger.warn("PlayPauseManager not found — game not resumed")
    }
    this.logger.info("Game resumed")
  }

  private onWeatherSwitchChanged(value: number): void {
    if (!this.weatherObject) {
      this.logger.warn("weatherObject not assigned")
      return
    }
    this.weatherObject.enabled = value > 0.5
    this.logger.info(`Weather switch changed — weather now ${this.weatherObject.enabled ? "enabled" : "disabled"}`)
  }

  private restartGame(): void {
    if (this.panel2) this.panel2.enabled = false
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.restart()
    } else {
      this.logger.warn("PlayPauseManager not found — game not restarted")
    }
    this.logger.info("Game restarted")
  }

  private goToMainMenuFromPause(): void {
    // Reset game state first while LevelHandleMover (and PlayPauseManager) are still active
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.restart()
    } else {
      this.logger.warn("PlayPauseManager not found — state may not be fully reset")
    }
    if (this.levelHandleMover) this.levelHandleMover.enabled = false
    if (this.panel2)           this.panel2.enabled           = false
    if (this.panel1)           this.panel1.enabled           = true
    this.logger.info("Returned to main menu from pause")
  }

  // ─── Panel 3 actions ───────────────────────────────────────────────────────

  private goToMainMenuFromTutorial(): void {
    if (this.panel3) this.panel3.enabled = false
    if (this.panel1) this.panel1.enabled = true
    this.logger.info("Returned to main menu from tutorial")
  }

  // ─── Panel 4 (game over) actions ───────────────────────────────────────────

  public showGameOver(): void {
    if (this.panel2) this.panel2.enabled = false
    if (this.panel4) this.panel4.enabled = true
    this.logger.info("Game over — Panel 4 shown")
  }

  private restartFromGameOver(): void {
    if (this.panel4) this.panel4.enabled = false
    const ppm = PlayPauseManager.getInstance()
    if (ppm) {
      ppm.restart()
    } else {
      this.logger.warn("PlayPauseManager not found — game not restarted")
    }
    this.logger.info("Restarted from game over")
  }

  private goToMainMenuFromGameOver(): void {
    const ppm = PlayPauseManager.getInstance()
    if (ppm) ppm.restart()
    if (this.levelHandleMover) this.levelHandleMover.enabled = false
    if (this.panel4)           this.panel4.enabled           = false
    if (this.panel1)           this.panel1.enabled           = true
    this.logger.info("Returned to main menu from game over")
  }
}
