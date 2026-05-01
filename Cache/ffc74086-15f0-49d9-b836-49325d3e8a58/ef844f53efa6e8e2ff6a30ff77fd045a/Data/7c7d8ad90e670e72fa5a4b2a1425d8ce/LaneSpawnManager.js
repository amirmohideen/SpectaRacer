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
exports.LaneSpawnManager = void 0;
var __selfType = requireType("./LaneSpawnManager");
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
 * Lane Spawn Manager — pattern-based coin and tree spawning across 3 lanes.
 *
 * Replaces the individual CoinInstantiator / TreeInstantiator prefabs with a single
 * manager that selects structured patterns, enforces a safe path, ramps difficulty,
 * and encourages the player to rotate lanes continuously.
 *
 * Pattern format: [left, middle, right]  values: 0=EMPTY  1=COIN  2=TREE
 *
 * State machine:
 *   GAP  →  startWave()  →  WAVE  →  startGap()  →  GAP  →  ...
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const EMPTY = 0;
const COIN = 1;
const TREE = 2;
let LaneSpawnManager = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var LaneSpawnManager = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.coinPrefab = (__runInitializers(this, _instanceExtraInitializers), this.coinPrefab);
            this.treePrefab = this.treePrefab;
            this.leftSpawnPoint = this.leftSpawnPoint;
            this.middleSpawnPoint = this.middleSpawnPoint;
            this.rightSpawnPoint = this.rightSpawnPoint;
            this.targetPoint = this.targetPoint;
            this.endZone = this.endZone;
            this.moveSpeed = this.moveSpeed;
            this.coinRotSpeedY = this.coinRotSpeedY;
            this.treeRotSpeedY = this.treeRotSpeedY;
            this.waveDuration = this.waveDuration;
            this.gapDuration = this.gapDuration;
            this.coinsPerLane = this.coinsPerLane;
            this.difficultyRampTime = this.difficultyRampTime;
            this.gapFrequency = this.gapFrequency;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Pattern library ───────────────────────────────────────────────────────
            // Each pattern is [left, middle, right].
            // Safety invariant: every pattern has at least one COIN or EMPTY lane.
            this.PATTERNS_EASY = [
                // All coins — pure reward round
                [COIN, COIN, COIN],
                // Two coins, one empty — gentle introduction
                [COIN, COIN, EMPTY],
                [EMPTY, COIN, COIN],
                [COIN, EMPTY, COIN],
                // One tree, two coins — easy obstacle
                [TREE, COIN, COIN],
                [COIN, TREE, COIN],
                [COIN, COIN, TREE],
                // One tree, one coin, one empty — slight pressure
                [TREE, EMPTY, COIN],
                [TREE, COIN, EMPTY],
                [COIN, EMPTY, TREE],
                [EMPTY, TREE, COIN],
                [EMPTY, COIN, TREE],
                [COIN, TREE, EMPTY],
            ];
            this.PATTERNS_MEDIUM = [
                // Two trees — player must go to specific lane
                [TREE, TREE, COIN],
                [TREE, COIN, TREE],
                [COIN, TREE, TREE],
                // Two trees, one empty — no reward but safe path
                [TREE, TREE, EMPTY],
                [EMPTY, TREE, TREE],
            ];
            this.PATTERNS_REST = [
                // Breathing room — inserted every gapFrequency waves
                [EMPTY, EMPTY, EMPTY],
                [COIN, EMPTY, EMPTY],
                [EMPTY, COIN, EMPTY],
                [EMPTY, EMPTY, COIN],
            ];
            // Set to true by PlayPauseManager — freezes the update loop entirely
            this.isPaused = false;
            // ─── Runtime state ─────────────────────────────────────────────────────────
            this.spawnPoints = [];
            this.activeObjects = [];
            this.elapsedTime = 0;
            this.stateTimer = 0;
            this.inGap = true;
            this.waveCount = 0;
            this.currentPattern = [EMPTY, EMPTY, EMPTY];
            this.coinSpawnTimers = [0, 0, 0];
            this.coinSpawnCounts = [0, 0, 0];
            this.treeSpawned = [false, false, false];
            this.recentPatternKeys = [];
            this.MAX_HISTORY = 3;
            this.lastSafeLane = -1;
            this.consecutiveSafeLane = 0;
            // Internal safety net — objects older than this are silently removed
            this.MAX_OBJECT_AGE = 20.0;
            this.objectBirthTimes = new Map();
            this.DEG_TO_RAD = Math.PI / 180;
        }
        __initialize() {
            super.__initialize();
            this.coinPrefab = (__runInitializers(this, _instanceExtraInitializers), this.coinPrefab);
            this.treePrefab = this.treePrefab;
            this.leftSpawnPoint = this.leftSpawnPoint;
            this.middleSpawnPoint = this.middleSpawnPoint;
            this.rightSpawnPoint = this.rightSpawnPoint;
            this.targetPoint = this.targetPoint;
            this.endZone = this.endZone;
            this.moveSpeed = this.moveSpeed;
            this.coinRotSpeedY = this.coinRotSpeedY;
            this.treeRotSpeedY = this.treeRotSpeedY;
            this.waveDuration = this.waveDuration;
            this.gapDuration = this.gapDuration;
            this.coinsPerLane = this.coinsPerLane;
            this.difficultyRampTime = this.difficultyRampTime;
            this.gapFrequency = this.gapFrequency;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ─── Pattern library ───────────────────────────────────────────────────────
            // Each pattern is [left, middle, right].
            // Safety invariant: every pattern has at least one COIN or EMPTY lane.
            this.PATTERNS_EASY = [
                // All coins — pure reward round
                [COIN, COIN, COIN],
                // Two coins, one empty — gentle introduction
                [COIN, COIN, EMPTY],
                [EMPTY, COIN, COIN],
                [COIN, EMPTY, COIN],
                // One tree, two coins — easy obstacle
                [TREE, COIN, COIN],
                [COIN, TREE, COIN],
                [COIN, COIN, TREE],
                // One tree, one coin, one empty — slight pressure
                [TREE, EMPTY, COIN],
                [TREE, COIN, EMPTY],
                [COIN, EMPTY, TREE],
                [EMPTY, TREE, COIN],
                [EMPTY, COIN, TREE],
                [COIN, TREE, EMPTY],
            ];
            this.PATTERNS_MEDIUM = [
                // Two trees — player must go to specific lane
                [TREE, TREE, COIN],
                [TREE, COIN, TREE],
                [COIN, TREE, TREE],
                // Two trees, one empty — no reward but safe path
                [TREE, TREE, EMPTY],
                [EMPTY, TREE, TREE],
            ];
            this.PATTERNS_REST = [
                // Breathing room — inserted every gapFrequency waves
                [EMPTY, EMPTY, EMPTY],
                [COIN, EMPTY, EMPTY],
                [EMPTY, COIN, EMPTY],
                [EMPTY, EMPTY, COIN],
            ];
            // Set to true by PlayPauseManager — freezes the update loop entirely
            this.isPaused = false;
            // ─── Runtime state ─────────────────────────────────────────────────────────
            this.spawnPoints = [];
            this.activeObjects = [];
            this.elapsedTime = 0;
            this.stateTimer = 0;
            this.inGap = true;
            this.waveCount = 0;
            this.currentPattern = [EMPTY, EMPTY, EMPTY];
            this.coinSpawnTimers = [0, 0, 0];
            this.coinSpawnCounts = [0, 0, 0];
            this.treeSpawned = [false, false, false];
            this.recentPatternKeys = [];
            this.MAX_HISTORY = 3;
            this.lastSafeLane = -1;
            this.consecutiveSafeLane = 0;
            // Internal safety net — objects older than this are silently removed
            this.MAX_OBJECT_AGE = 20.0;
            this.objectBirthTimes = new Map();
            this.DEG_TO_RAD = Math.PI / 180;
        }
        // ─── Lifecycle ─────────────────────────────────────────────────────────────
        onAwake() {
            this.logger = new Logger_1.Logger("LaneSpawnManager", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.spawnPoints = [this.leftSpawnPoint, this.middleSpawnPoint, this.rightSpawnPoint];
            if (!this.coinPrefab)
                this.logger.warn("coinPrefab not assigned");
            if (!this.treePrefab)
                this.logger.warn("treePrefab not assigned");
            if (!this.targetPoint)
                this.logger.warn("targetPoint not assigned");
            for (let i = 0; i < 3; i++) {
                if (!this.spawnPoints[i])
                    this.logger.warn(`spawnPoints[${i}] not assigned`);
            }
            this.setupEndZone();
            // Begin with an initial gap so the player has a moment before the first wave
            this.inGap = true;
            this.stateTimer = this.gapDuration;
            this.logger.info("LaneSpawnManager started — initial gap before wave 0");
        }
        // ─── End zone ──────────────────────────────────────────────────────────────
        setupEndZone() {
            if (!this.endZone) {
                this.logger.warn("endZone not assigned — objects will rely on the internal age limit");
                return;
            }
            const collider = this.endZone.getComponent("Physics.ColliderComponent");
            if (!collider) {
                this.logger.warn("No Physics.ColliderComponent on endZone");
                return;
            }
            ;
            collider.onOverlapEnter.add((e) => {
                try {
                    const obj = e.overlap.collider.getSceneObject();
                    if (!obj)
                        return;
                    const objName = obj.name;
                    const managed = this.activeObjects.find(m => m.obj === obj);
                    if (managed) {
                        managed.isAlive = false;
                        try {
                            obj.destroy();
                        }
                        catch (_) { }
                        this.logger.info(`End zone removed: ${objName}`);
                    }
                }
                catch (_) { }
            });
            this.logger.info("End zone registered");
        }
        // ─── Pattern selection ─────────────────────────────────────────────────────
        patternKey(p) {
            return p[0] + "," + p[1] + "," + p[2];
        }
        selectPattern() {
            // Insert a rest wave periodically (not on wave 0)
            if (this.waveCount > 0 && this.waveCount % this.gapFrequency === 0) {
                const rest = this.PATTERNS_REST[Math.floor(Math.random() * this.PATTERNS_REST.length)];
                this.logger.info("Rest wave inserted");
                return rest;
            }
            // Difficulty 0→1 over difficultyRampTime seconds
            const t = Math.min(this.elapsedTime / this.difficultyRampTime, 1);
            // Select pool: medium patterns become more likely as t increases
            const useMedium = Math.random() < t;
            let pool = useMedium ? [...this.PATTERNS_MEDIUM] : [...this.PATTERNS_EASY];
            // Remove recently used patterns to avoid repetition
            let candidates = pool.filter(p => !this.recentPatternKeys.includes(this.patternKey(p)));
            if (candidates.length === 0) {
                this.recentPatternKeys = [];
                candidates = pool;
            }
            // Lane-switching enforcement: if the same safe lane appeared 2+ times in a row,
            // bias toward patterns that block that lane — forcing the player to rotate
            if (this.lastSafeLane >= 0 && this.consecutiveSafeLane >= 2) {
                const switchCandidates = candidates.filter(p => p[this.lastSafeLane] === TREE);
                if (switchCandidates.length > 0) {
                    candidates = switchCandidates;
                    this.logger.info(`Forcing lane switch away from lane ${this.lastSafeLane}`);
                }
            }
            const chosen = candidates[Math.floor(Math.random() * candidates.length)];
            // Record history
            this.recentPatternKeys.push(this.patternKey(chosen));
            if (this.recentPatternKeys.length > this.MAX_HISTORY) {
                this.recentPatternKeys.shift();
            }
            // Update safe lane tracking
            this.trackSafeLane(chosen);
            return chosen;
        }
        trackSafeLane(pattern) {
            // Prefer COIN lanes over EMPTY lanes as the "expected" safe lane
            const coinLanes = [0, 1, 2].filter(i => pattern[i] === COIN);
            const emptyLanes = [0, 1, 2].filter(i => pattern[i] === EMPTY);
            const safeLanes = coinLanes.length > 0 ? coinLanes : emptyLanes;
            if (safeLanes.length === 0)
                return;
            const picked = safeLanes[Math.floor(Math.random() * safeLanes.length)];
            if (picked === this.lastSafeLane) {
                this.consecutiveSafeLane++;
            }
            else {
                this.consecutiveSafeLane = 0;
                this.lastSafeLane = picked;
            }
        }
        // ─── Wave state machine ────────────────────────────────────────────────────
        startWave() {
            this.currentPattern = this.selectPattern();
            this.coinSpawnTimers = [0, 0, 0];
            this.coinSpawnCounts = [0, 0, 0];
            this.treeSpawned = [false, false, false];
            this.stateTimer = this.waveDuration;
            this.inGap = false;
            const names = ["_", "COIN", "TREE"];
            this.logger.info(`Wave ${this.waveCount} | L:${names[this.currentPattern[0]]}  M:${names[this.currentPattern[1]]}  R:${names[this.currentPattern[2]]}  (t=${(Math.min(this.elapsedTime / this.difficultyRampTime, 1) * 100).toFixed(0)}%)`);
        }
        startGap() {
            this.inGap = true;
            this.stateTimer = this.gapDuration;
            this.waveCount++;
        }
        // ─── Spawning within a wave ────────────────────────────────────────────────
        updateWaveSpawning(dt) {
            // coinInterval spaces coinsPerLane coins evenly inside the wave window
            const coinInterval = this.waveDuration / (this.coinsPerLane + 1);
            for (let lane = 0; lane < 3; lane++) {
                const state = this.currentPattern[lane];
                if (state === TREE) {
                    // Spawn one tree near the start of the wave
                    if (!this.treeSpawned[lane]) {
                        this.spawnObject(lane, true);
                        this.treeSpawned[lane] = true;
                    }
                }
                else if (state === COIN) {
                    // Spread coins evenly across the wave duration
                    this.coinSpawnTimers[lane] += dt;
                    const nextCoinAt = coinInterval * (this.coinSpawnCounts[lane] + 1);
                    if (this.coinSpawnCounts[lane] < this.coinsPerLane &&
                        this.coinSpawnTimers[lane] >= nextCoinAt) {
                        this.spawnObject(lane, false);
                        this.coinSpawnCounts[lane]++;
                    }
                }
            }
        }
        spawnObject(laneIndex, isTree) {
            const spawnPoint = this.spawnPoints[laneIndex];
            if (!spawnPoint || !this.targetPoint)
                return;
            const prefab = isTree ? this.treePrefab : this.coinPrefab;
            if (!prefab)
                return;
            const instance = prefab.instantiate(this.sceneObject);
            if (!instance)
                return;
            const spawnPos = spawnPoint.getTransform().getWorldPosition();
            const targetPos = this.targetPoint.getTransform().getWorldPosition();
            instance.getTransform().setWorldPosition(spawnPos);
            const id = Math.random().toString(36).substring(2, 9);
            instance.name = isTree ? `TreeCube_${id}` : `CoinCube_${id}`;
            this.activeObjects.push({
                obj: instance,
                moveDir: targetPos.sub(spawnPos).normalize(),
                rotSpeedY: isTree ? this.treeRotSpeedY : this.coinRotSpeedY,
                isAlive: true
            });
            this.objectBirthTimes.set(instance, this.elapsedTime);
        }
        // ─── Object movement ───────────────────────────────────────────────────────
        updateActiveObjects(dt) {
            const toKeep = [];
            for (const managed of this.activeObjects) {
                if (!managed.isAlive) {
                    this.objectBirthTimes.delete(managed.obj);
                    continue;
                }
                // Internal age safety net
                const age = this.elapsedTime - (this.objectBirthTimes.get(managed.obj) ?? 0);
                if (age > this.MAX_OBJECT_AGE) {
                    try {
                        managed.obj.destroy();
                    }
                    catch (_) { }
                    this.objectBirthTimes.delete(managed.obj);
                    continue;
                }
                try {
                    const transform = managed.obj.getTransform();
                    const newPos = transform.getWorldPosition().add(managed.moveDir.uniformScale(this.moveSpeed * dt));
                    transform.setWorldPosition(newPos);
                    const spin = quat.angleAxis(managed.rotSpeedY * dt * this.DEG_TO_RAD, new vec3(0, 1, 0));
                    transform.setLocalRotation(transform.getLocalRotation().multiply(spin));
                    toKeep.push(managed);
                }
                catch (_) {
                    // Object was destroyed externally (saber hit, end zone, etc.) — drop it silently
                    this.objectBirthTimes.delete(managed.obj);
                }
            }
            this.activeObjects = toKeep;
        }
        // ─── Main update ───────────────────────────────────────────────────────────
        reset() {
            for (const managed of this.activeObjects) {
                try {
                    managed.obj.destroy();
                }
                catch (_) { }
            }
            this.activeObjects = [];
            this.objectBirthTimes.clear();
            this.elapsedTime = 0;
            this.stateTimer = this.gapDuration;
            this.inGap = true;
            this.waveCount = 0;
            this.currentPattern = [EMPTY, EMPTY, EMPTY];
            this.coinSpawnTimers = [0, 0, 0];
            this.coinSpawnCounts = [0, 0, 0];
            this.treeSpawned = [false, false, false];
            this.recentPatternKeys = [];
            this.lastSafeLane = -1;
            this.consecutiveSafeLane = 0;
            this.logger.info("LaneSpawnManager reset");
        }
        onUpdate() {
            if (this.isPaused)
                return;
            const dt = getDeltaTime();
            this.elapsedTime += dt;
            this.stateTimer -= dt;
            if (this.inGap) {
                if (this.stateTimer <= 0)
                    this.startWave();
            }
            else {
                this.updateWaveSpawning(dt);
                if (this.stateTimer <= 0)
                    this.startGap();
            }
            this.updateActiveObjects(dt);
        }
    };
    __setFunctionName(_classThis, "LaneSpawnManager");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        LaneSpawnManager = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return LaneSpawnManager = _classThis;
})();
exports.LaneSpawnManager = LaneSpawnManager;
//# sourceMappingURL=LaneSpawnManager.js.map