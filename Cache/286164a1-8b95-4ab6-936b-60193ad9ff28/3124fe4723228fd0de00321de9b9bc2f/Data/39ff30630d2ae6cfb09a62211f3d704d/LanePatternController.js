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
exports.LanePatternController = void 0;
var __selfType = requireType("./LanePatternController");
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
 * Lane Pattern Controller — orchestrates the existing CoinInstantiator and TreeInstantiator
 * scripts to produce structured, skill-based spawning across three lanes.
 *
 * Nothing about the instantiators changes — their prefabs, orientations, spawn positions,
 * movement, and end-zone cleanup all stay exactly as configured. This script only decides
 * WHICH instantiators are allowed to spawn at any given moment.
 *
 * Pattern format per wave:  [left, middle, right]
 *   0 = EMPTY  — both coin and tree disabled on this lane
 *   1 = COIN   — coin instantiator enabled, tree disabled
 *   2 = TREE   — tree instantiator enabled, coin disabled
 *
 * State machine:
 *   initial gap → WAVE (pattern active) → gap → WAVE → ... → rest wave every N → ...
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const EMPTY = 0;
const COIN = 1;
const TREE = 2;
let LanePatternController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var LanePatternController = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.coinLeft = (__runInitializers(this, _instanceExtraInitializers), this.coinLeft);
            this.coinMiddle = this.coinMiddle;
            this.coinRight = this.coinRight;
            this.treeLeft = this.treeLeft;
            this.treeMiddle = this.treeMiddle;
            this.treeRight = this.treeRight;
            this.roadLeft = this.roadLeft;
            this.roadMiddle = this.roadMiddle;
            this.roadRight = this.roadRight;
            this.initialMoveSpeed = this.initialMoveSpeed;
            this.maxMoveSpeed = this.maxMoveSpeed;
            this.speedRampTime = this.speedRampTime;
            this.minCoinsPerWave = this.minCoinsPerWave;
            this.maxCoinsPerWave = this.maxCoinsPerWave;
            this.gapDuration = this.gapDuration;
            this.difficultyRampTime = this.difficultyRampTime;
            this.gapFrequency = this.gapFrequency;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Pattern library ───────────────────────────────────────────────────────
            // Safety invariant: every pattern has ≥1 lane that is EMPTY or COIN.
            /** Easy — 1 tree max, clear safe options */
            this.PATTERNS_EASY = [
                [COIN, COIN, COIN], // pure reward
                [COIN, COIN, EMPTY],
                [EMPTY, COIN, COIN],
                [COIN, EMPTY, COIN],
                [TREE, COIN, COIN], // one obstacle, two escapes
                [COIN, TREE, COIN],
                [COIN, COIN, TREE],
                [TREE, COIN, EMPTY], // one obstacle, coin + empty escape
                [TREE, EMPTY, COIN],
                [COIN, EMPTY, TREE],
                [EMPTY, TREE, COIN],
                [EMPTY, COIN, TREE],
                [COIN, TREE, EMPTY],
            ];
            /** Medium — two trees, exactly one escape lane */
            this.PATTERNS_MEDIUM = [
                [TREE, TREE, COIN],
                [TREE, COIN, TREE],
                [COIN, TREE, TREE],
                [TREE, TREE, EMPTY],
                [EMPTY, TREE, TREE],
            ];
            /** Rest — breathing room inserted every gapFrequency waves */
            this.PATTERNS_REST = [
                [EMPTY, EMPTY, EMPTY],
                [COIN, EMPTY, EMPTY],
                [EMPTY, COIN, EMPTY],
                [EMPTY, EMPTY, COIN],
            ];
            // ─── Runtime state ─────────────────────────────────────────────────────────
            // Set to true by PlayPauseManager — freezes the state machine and speed ramp
            this.isPaused = false;
            this.elapsedTime = 0;
            this.stateTimer = 0;
            this.inGap = true;
            this.waveCount = 0;
            this.currentSpeed = 0;
            this.recentKeys = [];
            this.MAX_HISTORY = 3;
            this.lastSafeLane = -1;
            this.consecutiveSafe = 0;
        }
        __initialize() {
            super.__initialize();
            this.coinLeft = (__runInitializers(this, _instanceExtraInitializers), this.coinLeft);
            this.coinMiddle = this.coinMiddle;
            this.coinRight = this.coinRight;
            this.treeLeft = this.treeLeft;
            this.treeMiddle = this.treeMiddle;
            this.treeRight = this.treeRight;
            this.roadLeft = this.roadLeft;
            this.roadMiddle = this.roadMiddle;
            this.roadRight = this.roadRight;
            this.initialMoveSpeed = this.initialMoveSpeed;
            this.maxMoveSpeed = this.maxMoveSpeed;
            this.speedRampTime = this.speedRampTime;
            this.minCoinsPerWave = this.minCoinsPerWave;
            this.maxCoinsPerWave = this.maxCoinsPerWave;
            this.gapDuration = this.gapDuration;
            this.difficultyRampTime = this.difficultyRampTime;
            this.gapFrequency = this.gapFrequency;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Pattern library ───────────────────────────────────────────────────────
            // Safety invariant: every pattern has ≥1 lane that is EMPTY or COIN.
            /** Easy — 1 tree max, clear safe options */
            this.PATTERNS_EASY = [
                [COIN, COIN, COIN], // pure reward
                [COIN, COIN, EMPTY],
                [EMPTY, COIN, COIN],
                [COIN, EMPTY, COIN],
                [TREE, COIN, COIN], // one obstacle, two escapes
                [COIN, TREE, COIN],
                [COIN, COIN, TREE],
                [TREE, COIN, EMPTY], // one obstacle, coin + empty escape
                [TREE, EMPTY, COIN],
                [COIN, EMPTY, TREE],
                [EMPTY, TREE, COIN],
                [EMPTY, COIN, TREE],
                [COIN, TREE, EMPTY],
            ];
            /** Medium — two trees, exactly one escape lane */
            this.PATTERNS_MEDIUM = [
                [TREE, TREE, COIN],
                [TREE, COIN, TREE],
                [COIN, TREE, TREE],
                [TREE, TREE, EMPTY],
                [EMPTY, TREE, TREE],
            ];
            /** Rest — breathing room inserted every gapFrequency waves */
            this.PATTERNS_REST = [
                [EMPTY, EMPTY, EMPTY],
                [COIN, EMPTY, EMPTY],
                [EMPTY, COIN, EMPTY],
                [EMPTY, EMPTY, COIN],
            ];
            // ─── Runtime state ─────────────────────────────────────────────────────────
            // Set to true by PlayPauseManager — freezes the state machine and speed ramp
            this.isPaused = false;
            this.elapsedTime = 0;
            this.stateTimer = 0;
            this.inGap = true;
            this.waveCount = 0;
            this.currentSpeed = 0;
            this.recentKeys = [];
            this.MAX_HISTORY = 3;
            this.lastSafeLane = -1;
            this.consecutiveSafe = 0;
        }
        // ─── Lifecycle ─────────────────────────────────────────────────────────────
        onAwake() {
            this.logger = new Logger_1.Logger("LanePatternController", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.coins = [this.coinLeft, this.coinMiddle, this.coinRight];
            this.trees = [this.treeLeft, this.treeMiddle, this.treeRight];
            this.roads = [this.roadLeft, this.roadMiddle, this.roadRight];
            for (let i = 0; i < 3; i++) {
                if (!this.coins[i])
                    this.logger.warn(`coinInstantiator[${i}] not assigned`);
                if (!this.trees[i])
                    this.logger.warn(`treeInstantiator[${i}] not assigned`);
            }
            // Fix coin interval to 0.3 s on all lanes — controller owns this value
            for (let i = 0; i < 3; i++) {
                if (this.coins[i])
                    this.coins[i].spawnInterval = 0.3;
                // Large interval so each tree fires exactly once per wave regardless of wave duration
                if (this.trees[i])
                    this.trees[i].spawnInterval = 9999;
            }
            // Disable all instantiators immediately — controller takes full ownership
            this.disableAll();
            // Initial gap before the first wave
            this.inGap = true;
            this.stateTimer = this.gapDuration;
            this.currentSpeed = this.initialMoveSpeed;
            this.logger.info("LanePatternController started — coin interval fixed at 0.3 s");
        }
        // ─── Instantiator control ──────────────────────────────────────────────────
        disableAll() {
            for (let i = 0; i < 3; i++) {
                if (this.coins[i])
                    this.coins[i].spawnEnabled = false;
                if (this.trees[i])
                    this.trees[i].spawnEnabled = false;
            }
        }
        applyPattern(pattern) {
            for (let i = 0; i < 3; i++) {
                const wantCoin = pattern[i] === COIN;
                const wantTree = pattern[i] === TREE;
                if (this.coins[i]) {
                    this.coins[i].spawnEnabled = wantCoin;
                    // delay = 0 → first coin spawns on the very next frame
                    if (wantCoin)
                        this.coins[i].resetSpawnTimer(0);
                }
                if (this.trees[i]) {
                    this.trees[i].spawnEnabled = wantTree;
                    // delay = 0 → tree spawns immediately; interval is 9999 so it won't fire again this wave
                    if (wantTree)
                        this.trees[i].resetSpawnTimer(0);
                }
            }
        }
        // ─── Pattern selection ─────────────────────────────────────────────────────
        patternKey(p) {
            return p[0] + "," + p[1] + "," + p[2];
        }
        selectPattern() {
            // Rest wave every gapFrequency waves (skip wave 0 to start with real content)
            if (this.waveCount > 0 && this.waveCount % this.gapFrequency === 0) {
                const rest = this.PATTERNS_REST[Math.floor(Math.random() * this.PATTERNS_REST.length)];
                this.logger.info("Rest wave");
                return rest;
            }
            // Difficulty 0→1 over difficultyRampTime seconds
            const t = Math.min(this.elapsedTime / this.difficultyRampTime, 1);
            const useMedium = Math.random() < t;
            let pool = useMedium ? [...this.PATTERNS_MEDIUM] : [...this.PATTERNS_EASY];
            // Exclude recently used patterns to prevent repetition
            let candidates = pool.filter(p => !this.recentKeys.includes(this.patternKey(p)));
            if (candidates.length === 0) {
                this.recentKeys = [];
                candidates = pool;
            }
            // Lane-switching enforcement: if the same safe lane appeared ≥2 times in a row,
            // bias toward patterns that put a TREE on that lane so the player must rotate
            if (this.lastSafeLane >= 0 && this.consecutiveSafe >= 2) {
                const forcing = candidates.filter(p => p[this.lastSafeLane] === TREE);
                if (forcing.length > 0) {
                    candidates = forcing;
                    this.logger.info(`Forcing switch away from lane ${this.lastSafeLane}`);
                }
            }
            const chosen = candidates[Math.floor(Math.random() * candidates.length)];
            // Update history
            this.recentKeys.push(this.patternKey(chosen));
            if (this.recentKeys.length > this.MAX_HISTORY)
                this.recentKeys.shift();
            // Track which lane is safe to power the switching logic
            this.trackSafeLane(chosen);
            return chosen;
        }
        trackSafeLane(pattern) {
            const coinLanes = [0, 1, 2].filter(i => pattern[i] === COIN);
            const emptyLanes = [0, 1, 2].filter(i => pattern[i] === EMPTY);
            const safe = coinLanes.length > 0 ? coinLanes : emptyLanes;
            if (safe.length === 0)
                return;
            const picked = safe[Math.floor(Math.random() * safe.length)];
            if (picked === this.lastSafeLane) {
                this.consecutiveSafe++;
            }
            else {
                this.consecutiveSafe = 0;
                this.lastSafeLane = picked;
            }
        }
        // ─── Wave state machine ────────────────────────────────────────────────────
        startWave() {
            // Pick a random coin count in [min, max] — wave lasts exactly long enough to spawn them all
            const coinCount = this.minCoinsPerWave +
                Math.floor(Math.random() * (this.maxCoinsPerWave - this.minCoinsPerWave + 1));
            // First coin spawns at t=0, then every 0.3 s → last coin at (coinCount-1)*0.3
            // Add one extra interval so the wave doesn't cut off the final spawn
            const waveDuration = coinCount * 0.3;
            const pattern = this.selectPattern();
            this.applyPattern(pattern);
            this.stateTimer = waveDuration;
            this.inGap = false;
            const n = ["_", "C", "T"];
            this.logger.info(`Wave ${this.waveCount} | L:${n[pattern[0]]}  M:${n[pattern[1]]}  R:${n[pattern[2]]}` +
                `  coins:${coinCount}  dur:${waveDuration.toFixed(1)}s` +
                `  (diff ${(Math.min(this.elapsedTime / this.difficultyRampTime, 1) * 100).toFixed(0)}%)`);
        }
        startGap() {
            this.disableAll();
            this.inGap = true;
            this.stateTimer = this.gapDuration;
            this.waveCount++;
        }
        // ─── Main update ───────────────────────────────────────────────────────────
        getCurrentSpeed() {
            return this.currentSpeed;
        }
        onUpdate() {
            if (this.isPaused)
                return;
            const dt = getDeltaTime();
            this.elapsedTime += dt;
            this.stateTimer -= dt;
            this.updateMoveSpeed();
            if (this.inGap) {
                if (this.stateTimer <= 0)
                    this.startWave();
            }
            else {
                if (this.stateTimer <= 0)
                    this.startGap();
            }
        }
        updateMoveSpeed() {
            const t = Math.min(this.elapsedTime / this.speedRampTime, 1);
            const speed = this.initialMoveSpeed + (this.maxMoveSpeed - this.initialMoveSpeed) * t;
            for (let i = 0; i < 3; i++) {
                if (this.coins[i])
                    this.coins[i].moveSpeed = speed;
                if (this.trees[i])
                    this.trees[i].moveSpeed = speed;
                if (this.roads[i])
                    this.roads[i].moveSpeed = speed;
            }
        }
    };
    __setFunctionName(_classThis, "LanePatternController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        LanePatternController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return LanePatternController = _classThis;
})();
exports.LanePatternController = LanePatternController;
//# sourceMappingURL=LanePatternController.js.map