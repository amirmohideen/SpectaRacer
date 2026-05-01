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
exports.SnapSaberGlobalManager = void 0;
var __selfType = requireType("./SnapSaberGlobalManager");
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
 * Snap Saber Global Manager handling core logic for the Essentials lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let SnapSaberGlobalManager = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var SnapSaberGlobalManager = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.scoreText = (__runInitializers(this, _instanceExtraInitializers), this.scoreText);
            this.pointsPerHit = this.pointsPerHit;
            this.maxTreeStrikes = this.maxTreeStrikes;
            this.coinAudio = this.coinAudio;
            this.treeAudio = this.treeAudio;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.score = 0;
            this.treeStrikes = 0;
            this.isGameOver = false;
            this.lastHitTime = 0;
            this.hitCooldown = 0.1;
            this.isInitialized = false;
            this.globalInstanceName = "SnapSaberGlobalManagerInstance";
        }
        __initialize() {
            super.__initialize();
            this.scoreText = (__runInitializers(this, _instanceExtraInitializers), this.scoreText);
            this.pointsPerHit = this.pointsPerHit;
            this.maxTreeStrikes = this.maxTreeStrikes;
            this.coinAudio = this.coinAudio;
            this.treeAudio = this.treeAudio;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.score = 0;
            this.treeStrikes = 0;
            this.isGameOver = false;
            this.lastHitTime = 0;
            this.hitCooldown = 0.1;
            this.isInitialized = false;
            this.globalInstanceName = "SnapSaberGlobalManagerInstance";
        }
        onAwake() {
            this.logger = new Logger_1.Logger("SnapSaberGlobalManager", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            // @ts-ignore - Accessing global scope
            global[this.globalInstanceName] = this;
            this.logger.info("SnapSaber Global Manager initialized via global variable");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.score = 0;
            this.treeStrikes = 0;
            this.isGameOver = false;
            this.updateScoreDisplay();
            this.isInitialized = true;
            this.logger.info("SnapSaber Global Manager started");
        }
        static getInstance() {
            try {
                // @ts-ignore - Accessing global scope
                return global["SnapSaberGlobalManagerInstance"] || null;
            }
            catch (e) {
                print("Error accessing global manager: " + e);
                return null;
            }
        }
        registerCoinHit(targetObject) {
            if (!this.isInitialized || this.isGameOver)
                return;
            const currentTime = getTime();
            if (currentTime - this.lastHitTime < this.hitCooldown)
                return;
            this.score += this.pointsPerHit;
            this.lastHitTime = currentTime;
            if (this.coinAudio)
                this.coinAudio.play(1);
            this.updateScoreDisplay();
            this.logger.info(`Coin hit! Score: ${this.score}`);
            if (targetObject) {
                try {
                    targetObject.destroy();
                }
                catch (e) {
                    this.logger.error("Error destroying coin: " + e);
                }
            }
        }
        /** Kept for backwards-compatibility with any existing callers. */
        registerHit(targetObject) {
            this.registerCoinHit(targetObject);
        }
        registerTreeHit(targetObject) {
            if (!this.isInitialized || this.isGameOver)
                return;
            const currentTime = getTime();
            if (currentTime - this.lastHitTime < this.hitCooldown)
                return;
            this.treeStrikes++;
            this.lastHitTime = currentTime;
            this.logger.info(`Tree hit! Strikes: ${this.treeStrikes} / ${this.maxTreeStrikes}`);
            print(`[SnapSaberGlobalManager] Tree hit! Strikes: ${this.treeStrikes} / ${this.maxTreeStrikes}`);
            if (this.treeStrikes >= this.maxTreeStrikes) {
                this.isGameOver = true;
                print("[SnapSaberGlobalManager] GAME OVER");
                this.logger.info("GAME OVER");
            }
            if (targetObject) {
                try {
                    targetObject.destroy();
                }
                catch (e) {
                    this.logger.error("Error destroying tree: " + e);
                }
            }
        }
        getScore() {
            return this.score;
        }
        getTreeStrikes() {
            return this.treeStrikes;
        }
        isOver() {
            return this.isGameOver;
        }
        reset() {
            this.score = 0;
            this.treeStrikes = 0;
            this.isGameOver = false;
            this.lastHitTime = 0;
            this.updateScoreDisplay();
            this.logger.info("SnapSaberGlobalManager reset");
        }
        updateScoreDisplay() {
            if (this.scoreText) {
                try {
                    ;
                    this.scoreText.text = `Score: ${this.score}`;
                }
                catch (e) {
                    this.logger.error("Error updating score display: " + e);
                }
            }
        }
    };
    __setFunctionName(_classThis, "SnapSaberGlobalManager");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        SnapSaberGlobalManager = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return SnapSaberGlobalManager = _classThis;
})();
exports.SnapSaberGlobalManager = SnapSaberGlobalManager;
//# sourceMappingURL=SnapSaberGlobalManager.js.map