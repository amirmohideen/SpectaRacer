"use strict";
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __esDecorate = (this && this.__esDecorate) || function (ctor, descriptorIn, decorators, contextIn, initializers, extraInitializers) {
    function accept(f) { if (f !== void 0 && typeof f !== "function") throw new TypeError("Function expected"); return f; }
    var kind = contextIn.kind, key = kind === "getter" ? "get" : kind === "setter" ? "set" : "value";
    var target = !descriptorIn && ctor ? contextIn["static"] ? ctor : ctor.prototype : null;
    var descriptor = descriptorIn || (target ? Object.getOwnPropertyDescriptor(target, contextIn.name) : {});
    var _, done = false;
    for (var i = decorators.length - 1; i >= 0; i--) {
        var context = {};
        for (var p in contextIn) context[p] = p === "access" ? {} : contextIn[p];
        for (var p in contextIn.access) context.access[p] = contextIn.access[p];
        context.addInitializer = function (f) { if (done) throw new TypeError("Cannot add initializers after decoration has completed"); extraInitializers.push(accept(f || null)); };
        var result = (0, decorators[i])(kind === "accessor" ? { get: descriptor.get, set: descriptor.set } : descriptor[key], context);
        if (kind === "accessor") {
            if (result === void 0) continue;
            if (result === null || typeof result !== "object") throw new TypeError("Object expected");
            if (_ = accept(result.get)) descriptor.get = _;
            if (_ = accept(result.set)) descriptor.set = _;
            if (_ = accept(result.init)) initializers.unshift(_);
        }
        else if (_ = accept(result)) {
            if (kind === "field") initializers.unshift(_);
            else descriptor[key] = _;
        }
    }
    if (target) Object.defineProperty(target, contextIn.name, descriptor);
    done = true;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.MainMenu = void 0;
var __selfType = requireType("./MainMenu");
function component(target) {
    target.getTypeName = function () { return __selfType; };
    if (target.prototype.hasOwnProperty("getTypeName"))
        return;
    Object.defineProperty(target.prototype, "getTypeName", {
        value: function () { return __selfType; },
        configurable: true,
        writable: true
    });
}
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
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const PlayPauseManager_1 = require("./PlayPauseManager");
let MainMenu = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var MainMenu = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.panel1 = (__runInitializers(this, _instanceExtraInitializers), this.panel1);
            this.panel2 = this.panel2;
            this.panel3 = this.panel3;
            this.panel4 = this.panel4;
            // ─── Level ─────────────────────────────────────────────────────────────────
            this.levelHandleMover = this.levelHandleMover;
            // ─── Panel 1 buttons ───────────────────────────────────────────────────────
            this.tutorialButton = this.tutorialButton;
            this.playButton = this.playButton;
            // ─── Pause buttons (in-game) ───────────────────────────────────────────────
            this.pauseButton1 = this.pauseButton1;
            this.pauseButton2 = this.pauseButton2;
            // ─── Panel 2 buttons ───────────────────────────────────────────────────────
            this.resumeButton = this.resumeButton;
            this.weatherToggleSwitch = this.weatherToggleSwitch;
            this.restartButton = this.restartButton;
            this.mainMenuButtonPanel2 = this.mainMenuButtonPanel2;
            // ─── Panel 3 buttons ───────────────────────────────────────────────────────
            this.mainMenuButtonPanel3 = this.mainMenuButtonPanel3;
            // ─── Panel 4 buttons ───────────────────────────────────────────────────────
            this.restartButtonPanel4 = this.restartButtonPanel4;
            this.mainMenuButtonPanel4 = this.mainMenuButtonPanel4;
            // ─── Weather object ────────────────────────────────────────────────────────
            this.weatherObject = this.weatherObject;
            // ─── Rain audio ────────────────────────────────────────────────────────────
            this.rainAudio = this.rainAudio;
            // ─── Logging ───────────────────────────────────────────────────────────────
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.panel1 = (__runInitializers(this, _instanceExtraInitializers), this.panel1);
            this.panel2 = this.panel2;
            this.panel3 = this.panel3;
            this.panel4 = this.panel4;
            // ─── Level ─────────────────────────────────────────────────────────────────
            this.levelHandleMover = this.levelHandleMover;
            // ─── Panel 1 buttons ───────────────────────────────────────────────────────
            this.tutorialButton = this.tutorialButton;
            this.playButton = this.playButton;
            // ─── Pause buttons (in-game) ───────────────────────────────────────────────
            this.pauseButton1 = this.pauseButton1;
            this.pauseButton2 = this.pauseButton2;
            // ─── Panel 2 buttons ───────────────────────────────────────────────────────
            this.resumeButton = this.resumeButton;
            this.weatherToggleSwitch = this.weatherToggleSwitch;
            this.restartButton = this.restartButton;
            this.mainMenuButtonPanel2 = this.mainMenuButtonPanel2;
            // ─── Panel 3 buttons ───────────────────────────────────────────────────────
            this.mainMenuButtonPanel3 = this.mainMenuButtonPanel3;
            // ─── Panel 4 buttons ───────────────────────────────────────────────────────
            this.restartButtonPanel4 = this.restartButtonPanel4;
            this.mainMenuButtonPanel4 = this.mainMenuButtonPanel4;
            // ─── Weather object ────────────────────────────────────────────────────────
            this.weatherObject = this.weatherObject;
            // ─── Rain audio ────────────────────────────────────────────────────────────
            this.rainAudio = this.rainAudio;
            // ─── Logging ───────────────────────────────────────────────────────────────
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        startRain() {
            if (this.rainAudio && !this.rainAudio.isPlaying()) {
                this.rainAudio.play(-1);
            }
        }
        stopRain() {
            if (this.rainAudio && this.rainAudio.isPlaying()) {
                this.rainAudio.stop(false);
            }
        }
        // ─── Lifecycle ─────────────────────────────────────────────────────────────
        onAwake() {
            this.logger = new Logger_1.Logger("MainMenu", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.validateInputs();
            this.setInitialState();
            this.wireButtons();
            this.logger.info("MainMenu started");
        }
        // ─── Setup ─────────────────────────────────────────────────────────────────
        validateInputs() {
            if (!this.panel1)
                this.logger.warn("panel1 not assigned");
            if (!this.panel2)
                this.logger.warn("panel2 not assigned");
            if (!this.panel3)
                this.logger.warn("panel3 not assigned");
            if (!this.panel4)
                this.logger.warn("panel4 not assigned");
            if (!this.levelHandleMover)
                this.logger.warn("levelHandleMover not assigned");
        }
        setInitialState() {
            if (this.panel1)
                this.panel1.enabled = true;
            if (this.panel2)
                this.panel2.enabled = false;
            if (this.panel3)
                this.panel3.enabled = false;
            if (this.panel4)
                this.panel4.enabled = false;
            if (this.levelHandleMover)
                this.levelHandleMover.enabled = false;
        }
        wireButtons() {
            if (this.tutorialButton)
                this.tutorialButton.onTriggerUp.add(() => this.openTutorial());
            if (this.playButton)
                this.playButton.onTriggerUp.add(() => this.startGame());
            if (this.pauseButton1)
                this.pauseButton1.onTriggerUp.add(() => this.openPauseMenu());
            if (this.pauseButton2)
                this.pauseButton2.onTriggerUp.add(() => this.openPauseMenu());
            if (this.resumeButton)
                this.resumeButton.onTriggerUp.add(() => this.resumeGame());
            if (this.weatherToggleSwitch)
                this.weatherToggleSwitch.onValueChange.add((v) => this.onWeatherSwitchChanged(v));
            if (this.restartButton)
                this.restartButton.onTriggerUp.add(() => this.restartGame());
            if (this.mainMenuButtonPanel2)
                this.mainMenuButtonPanel2.onTriggerUp.add(() => this.goToMainMenuFromPause());
            if (this.mainMenuButtonPanel3)
                this.mainMenuButtonPanel3.onTriggerUp.add(() => this.goToMainMenuFromTutorial());
            if (this.restartButtonPanel4)
                this.restartButtonPanel4.onTriggerUp.add(() => this.restartFromGameOver());
            if (this.mainMenuButtonPanel4)
                this.mainMenuButtonPanel4.onTriggerUp.add(() => this.goToMainMenuFromGameOver());
        }
        // ─── Panel 1 actions ───────────────────────────────────────────────────────
        openTutorial() {
            if (this.panel1)
                this.panel1.enabled = false;
            if (this.panel3)
                this.panel3.enabled = true;
            this.logger.info("Opened tutorial");
        }
        startGame() {
            if (this.panel1)
                this.panel1.enabled = false;
            if (this.levelHandleMover)
                this.levelHandleMover.enabled = true;
            // PPM's onAwake fires synchronously when LevelHandleMover is enabled, so the instance exists now
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.onGameOver = () => this.showGameOver();
            }
            else {
                this.logger.warn("PlayPauseManager not found — game over callback not registered");
            }
            this.logger.info("Game started — LevelHandleMover enabled");
        }
        // ─── Pause actions ─────────────────────────────────────────────────────────
        openPauseMenu() {
            if (this.panel2)
                this.panel2.enabled = true;
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.pause();
            }
            else {
                this.logger.warn("PlayPauseManager not found — game not paused");
            }
            this.logger.info("Pause menu opened");
        }
        // ─── Panel 2 actions ───────────────────────────────────────────────────────
        resumeGame() {
            if (this.panel2)
                this.panel2.enabled = false;
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.resume();
            }
            else {
                this.logger.warn("PlayPauseManager not found — game not resumed");
            }
            this.logger.info("Game resumed");
        }
        onWeatherSwitchChanged(value) {
            if (!this.weatherObject) {
                this.logger.warn("weatherObject not assigned");
                return;
            }
            this.weatherObject.enabled = value > 0.5;
            this.logger.info(`Weather switch changed — weather now ${this.weatherObject.enabled ? "enabled" : "disabled"}`);
        }
        restartGame() {
            if (this.panel2)
                this.panel2.enabled = false;
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.restart();
            }
            else {
                this.logger.warn("PlayPauseManager not found — game not restarted");
            }
            this.logger.info("Game restarted");
        }
        goToMainMenuFromPause() {
            // Reset game state first while LevelHandleMover (and PlayPauseManager) are still active
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.restart();
            }
            else {
                this.logger.warn("PlayPauseManager not found — state may not be fully reset");
            }
            if (this.levelHandleMover)
                this.levelHandleMover.enabled = false;
            if (this.panel2)
                this.panel2.enabled = false;
            if (this.panel1)
                this.panel1.enabled = true;
            this.logger.info("Returned to main menu from pause");
        }
        // ─── Panel 3 actions ───────────────────────────────────────────────────────
        goToMainMenuFromTutorial() {
            if (this.panel3)
                this.panel3.enabled = false;
            if (this.panel1)
                this.panel1.enabled = true;
            this.logger.info("Returned to main menu from tutorial");
        }
        // ─── Panel 4 (game over) actions ───────────────────────────────────────────
        showGameOver() {
            if (this.panel2)
                this.panel2.enabled = false;
            if (this.panel4)
                this.panel4.enabled = true;
            this.logger.info("Game over — Panel 4 shown");
        }
        restartFromGameOver() {
            if (this.panel4)
                this.panel4.enabled = false;
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm) {
                ppm.restart();
            }
            else {
                this.logger.warn("PlayPauseManager not found — game not restarted");
            }
            this.logger.info("Restarted from game over");
        }
        goToMainMenuFromGameOver() {
            const ppm = PlayPauseManager_1.PlayPauseManager.getInstance();
            if (ppm)
                ppm.restart();
            if (this.levelHandleMover)
                this.levelHandleMover.enabled = false;
            if (this.panel4)
                this.panel4.enabled = false;
            if (this.panel1)
                this.panel1.enabled = true;
            this.logger.info("Returned to main menu from game over");
        }
    };
    __setFunctionName(_classThis, "MainMenu");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        MainMenu = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return MainMenu = _classThis;
})();
exports.MainMenu = MainMenu;
//# sourceMappingURL=MainMenu.js.map