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
exports.PlayPauseManager = void 0;
var __selfType = requireType("./PlayPauseManager");
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
 * Play / Pause Manager — central game state controller.
 *
 * Responsibilities:
 *   - Pause / resume all lane instantiators and the LanePatternController
 *   - Display live damage percentage (each tree hit = 1/3; 3 hits = 100%)
 *   - Display cumulative distance travelled (speed × time, converted to metres)
 *
 * Button wiring is handled by MainMenu.ts — call pause() / resume() / restart()
 * from any script via PlayPauseManager.getInstance().
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const SnapSaberGlobalManager_1 = require("./SnapSaberGlobalManager");
let PlayPauseManager = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var PlayPauseManager = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.laneController = (__runInitializers(this, _instanceExtraInitializers), this.laneController);
            this.coinLeft = this.coinLeft;
            this.coinMiddle = this.coinMiddle;
            this.coinRight = this.coinRight;
            this.treeLeft = this.treeLeft;
            this.treeMiddle = this.treeMiddle;
            this.treeRight = this.treeRight;
            this.roadLeft = this.roadLeft;
            this.roadMiddle = this.roadMiddle;
            this.roadRight = this.roadRight;
            this.damageText = this.damageText;
            this.distanceText = this.distanceText;
            this.scoreText = this.scoreText;
            this.startPaused = this.startPaused;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Runtime state ─────────────────────────────────────────────────────────
            this.isPaused = false;
            this.distanceTravelled = 0;
            this.gameOverTriggered = false;
            // Registered by MainMenu — called once when damage hits 100%
            this.onGameOver = null;
            this.coins = [];
            this.trees = [];
            this.roads = [];
        }
        __initialize() {
            super.__initialize();
            this.laneController = (__runInitializers(this, _instanceExtraInitializers), this.laneController);
            this.coinLeft = this.coinLeft;
            this.coinMiddle = this.coinMiddle;
            this.coinRight = this.coinRight;
            this.treeLeft = this.treeLeft;
            this.treeMiddle = this.treeMiddle;
            this.treeRight = this.treeRight;
            this.roadLeft = this.roadLeft;
            this.roadMiddle = this.roadMiddle;
            this.roadRight = this.roadRight;
            this.damageText = this.damageText;
            this.distanceText = this.distanceText;
            this.scoreText = this.scoreText;
            this.startPaused = this.startPaused;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Runtime state ─────────────────────────────────────────────────────────
            this.isPaused = false;
            this.distanceTravelled = 0;
            this.gameOverTriggered = false;
            // Registered by MainMenu — called once when damage hits 100%
            this.onGameOver = null;
            this.coins = [];
            this.trees = [];
            this.roads = [];
        }
        static getInstance() {
            try {
                // @ts-ignore
                return global[PlayPauseManager.GLOBAL_KEY] || null;
            }
            catch (e) {
                return null;
            }
        }
        // ─── Lifecycle ─────────────────────────────────────────────────────────────
        onAwake() {
            this.logger = new Logger_1.Logger("PlayPauseManager", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            // @ts-ignore
            global[PlayPauseManager.GLOBAL_KEY] = this;
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            if (!this.laneController) {
                this.logger.warn("laneController is not assigned — pause/resume will have no effect");
            }
            this.coins = [this.coinLeft, this.coinMiddle, this.coinRight];
            this.trees = [this.treeLeft, this.treeMiddle, this.treeRight];
            this.roads = [this.roadLeft, this.roadMiddle, this.roadRight];
            if (this.startPaused) {
                this.pause();
            }
            this.logger.info("PlayPauseManager started");
        }
        // ─── Public API ────────────────────────────────────────────────────────────
        pause() {
            this.logger.info(`pause() called — isPaused:${this.isPaused}, laneController assigned:${!!this.laneController}`);
            if (this.isPaused) {
                this.logger.info("pause() ignored — already paused");
                return;
            }
            this.isPaused = true;
            if (this.laneController) {
                this.laneController.pauseAll();
            }
            else {
                this.logger.warn("pause() — laneController not assigned, movement will not stop!");
            }
            this.logger.info("Game paused");
        }
        resume() {
            this.logger.info(`resume() called — isPaused:${this.isPaused}, laneController assigned:${!!this.laneController}`);
            if (!this.isPaused) {
                this.logger.info("resume() ignored — already playing");
                return;
            }
            this.isPaused = false;
            if (this.laneController) {
                this.laneController.resumeAll();
            }
            this.logger.info("Game resumed");
        }
        restart() {
            // Wipe all in-flight tiles and reset spawn timers on every instantiator
            for (let i = 0; i < 3; i++) {
                if (this.coins[i])
                    this.coins[i].reset();
                if (this.trees[i])
                    this.trees[i].reset();
                if (this.roads[i])
                    this.roads[i].reset();
            }
            // Reset the spawning controller (clears timers, wave state, speed ramp)
            if (this.laneController) {
                this.laneController.isPaused = false;
                this.laneController.reset();
            }
            // Reset score and damage
            const gm = SnapSaberGlobalManager_1.SnapSaberGlobalManager.getInstance();
            if (gm)
                gm.reset();
            // Reset distance counter and clear paused state
            this.distanceTravelled = 0;
            this.isPaused = false;
            this.logger.info("Game restarted");
        }
        getIsPaused() {
            return this.isPaused;
        }
        getDistanceTravelled() {
            return this.distanceTravelled;
        }
        // ─── Update ────────────────────────────────────────────────────────────────
        onUpdate() {
            if (!this.isPaused && this.laneController) {
                this.distanceTravelled += this.laneController.getCurrentSpeed() * getDeltaTime();
            }
            this.updateHUD();
        }
        updateHUD() {
            this.updateDamageDisplay();
            this.updateDistanceDisplay();
            this.updateScoreDisplay();
        }
        updateDamageDisplay() {
            if (!this.damageText)
                return;
            const gm = SnapSaberGlobalManager_1.SnapSaberGlobalManager.getInstance();
            if (!gm)
                return;
            const strikes = gm.getTreeStrikes();
            const max = gm.maxTreeStrikes;
            const pct = Math.min(Math.round((strikes / max) * 100), 100);
            try {
                ;
                this.damageText.text = `Damage: ${pct}%`;
            }
            catch (e) {
                this.logger.error("Error updating damage display: " + e);
            }
        }
        updateDistanceDisplay() {
            if (!this.distanceText)
                return;
            const metres = this.distanceTravelled / 100;
            try {
                ;
                this.distanceText.text = `${metres.toFixed(0)} m`;
            }
            catch (e) {
                this.logger.error("Error updating distance display: " + e);
            }
        }
        updateScoreDisplay() {
            if (!this.scoreText)
                return;
            const gm = SnapSaberGlobalManager_1.SnapSaberGlobalManager.getInstance();
            if (!gm)
                return;
            try {
                ;
                this.scoreText.text = `x ${gm.getScore()}`;
            }
            catch (e) {
                this.logger.error("Error updating score display: " + e);
            }
        }
    };
    __setFunctionName(_classThis, "PlayPauseManager");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        PlayPauseManager = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
    })();
    // ─── Singleton ─────────────────────────────────────────────────────────────
    _classThis.GLOBAL_KEY = "PlayPauseManagerInstance";
    (() => {
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return PlayPauseManager = _classThis;
})();
exports.PlayPauseManager = PlayPauseManager;
//# sourceMappingURL=PlayPauseManager.js.map