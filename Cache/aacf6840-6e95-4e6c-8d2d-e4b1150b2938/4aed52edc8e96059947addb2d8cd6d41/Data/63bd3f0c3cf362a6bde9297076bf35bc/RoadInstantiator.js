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
exports.RoadInstantiator = void 0;
var __selfType = requireType("./RoadInstantiator");
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
 * Road Instantiator — spawns road tile prefabs continuously at a fixed interval.
 * Move speed is driven externally by LanePatternController to stay in sync with
 * game difficulty. Tiles pass through the target zone without adding score or
 * damage; they are only destroyed when they hit the end zone collider.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let RoadInstantiator = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var RoadInstantiator = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.prefab = (__runInitializers(this, _instanceExtraInitializers), this.prefab);
            this.spawnPosition = this.spawnPosition;
            this.targetPosition = this.targetPosition;
            this.endZone = this.endZone;
            this.spawnInterval = this.spawnInterval;
            this.moveSpeed = this.moveSpeed;
            this.destroyOnReachTarget = this.destroyOnReachTarget;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Set to false by PlayPauseManager during pause — blocks new spawns while in-flight tiles keep their state
            this.spawnEnabled = true;
            this.nextSpawnTime = 0;
            this.activePrefabs = [];
            this.prefabData = new Map();
            this.pendingRemoval = new Set();
        }
        __initialize() {
            super.__initialize();
            this.prefab = (__runInitializers(this, _instanceExtraInitializers), this.prefab);
            this.spawnPosition = this.spawnPosition;
            this.targetPosition = this.targetPosition;
            this.endZone = this.endZone;
            this.spawnInterval = this.spawnInterval;
            this.moveSpeed = this.moveSpeed;
            this.destroyOnReachTarget = this.destroyOnReachTarget;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Set to false by PlayPauseManager during pause — blocks new spawns while in-flight tiles keep their state
            this.spawnEnabled = true;
            this.nextSpawnTime = 0;
            this.activePrefabs = [];
            this.prefabData = new Map();
            this.pendingRemoval = new Set();
        }
        onAwake() {
            this.logger = new Logger_1.Logger("RoadInstantiator", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            if (!this.prefab)
                this.logger.warn("prefab is not assigned");
            if (!this.spawnPosition)
                this.logger.warn("spawnPosition is not assigned");
            if (!this.targetPosition)
                this.logger.warn("targetPosition is not assigned");
            this.setupEndZone();
            this.nextSpawnTime = getTime() + this.spawnInterval;
            this.logger.info("RoadInstantiator started");
        }
        setupEndZone() {
            if (!this.endZone) {
                this.logger.warn("endZone not assigned — road tiles will not be destroyed at end");
                return;
            }
            const collider = this.endZone.getComponent("Physics.ColliderComponent");
            if (!collider) {
                this.logger.warn("No collider found on endZone object");
                return;
            }
            ;
            collider.onOverlapEnter.add((e) => {
                try {
                    const obj = e.overlap.collider.getSceneObject();
                    if (!obj)
                        return;
                    const match = obj.name.match(/RoadTile_(\w+)/);
                    if (!match)
                        return;
                    this.pendingRemoval.add(match[1]);
                    try {
                        obj.destroy();
                    }
                    catch (_) { }
                    this.logger.info(`End zone destroyed road tile: ${obj.name}`);
                }
                catch (_) { }
            });
            this.logger.info("End zone collision registered");
        }
        generateUniqueId() {
            return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);
        }
        onUpdate() {
            this.updateTiles();
            if (!this.spawnEnabled)
                return;
            const currentTime = getTime();
            if (currentTime >= this.nextSpawnTime) {
                this.spawnTile();
                this.nextSpawnTime = currentTime + this.spawnInterval;
            }
        }
        spawnTile() {
            if (!this.prefab || !this.spawnPosition || !this.targetPosition) {
                this.logger.error("Required inputs not assigned (prefab, spawnPosition, or targetPosition)");
                return;
            }
            const instance = this.prefab.instantiate(this.sceneObject);
            if (!instance) {
                this.logger.error("Failed to instantiate prefab");
                return;
            }
            const spawnPos = this.spawnPosition.getTransform().getWorldPosition();
            instance.getTransform().setWorldPosition(spawnPos);
            const targetPos = this.targetPosition.getTransform().getWorldPosition();
            const moveDirection = targetPos.sub(spawnPos).normalize();
            const id = this.generateUniqueId();
            this.prefabData.set(id, { moveDirection, id });
            instance.name = `RoadTile_${id}`;
            this.activePrefabs.push(instance);
            this.logger.info(`Spawned road tile at ${spawnPos.x.toFixed(2)}, ${spawnPos.y.toFixed(2)}, ${spawnPos.z.toFixed(2)}`);
        }
        updateTiles() {
            const deltaTime = getDeltaTime();
            const targetPos = this.targetPosition.getTransform().getWorldPosition();
            const prefabsToKeep = [];
            const idsToRemove = [];
            for (let i = 0; i < this.activePrefabs.length; i++) {
                const tile = this.activePrefabs[i];
                if (!tile)
                    continue;
                let shouldDestroy = false;
                let instanceId = "";
                try {
                    const idMatch = tile.name.match(/RoadTile_(\w+)/);
                    if (!idMatch || !idMatch[1]) {
                        this.logger.warn("Could not extract ID from tile name: " + tile.name);
                        continue;
                    }
                    instanceId = idMatch[1];
                    if (this.pendingRemoval.has(instanceId)) {
                        idsToRemove.push(instanceId);
                        this.pendingRemoval.delete(instanceId);
                        continue;
                    }
                    const data = this.prefabData.get(instanceId);
                    if (!data) {
                        this.logger.warn("No data found for tile ID: " + instanceId);
                        continue;
                    }
                    const transform = tile.getTransform();
                    if (!transform)
                        continue;
                    const currentPos = transform.getWorldPosition();
                    const newPos = currentPos.add(data.moveDirection.uniformScale(this.moveSpeed * deltaTime));
                    transform.setWorldPosition(newPos);
                    if (this.destroyOnReachTarget && currentPos.distance(targetPos) < 0.5) {
                        shouldDestroy = true;
                        idsToRemove.push(instanceId);
                    }
                }
                catch (e) {
                    this.logger.error("Error updating road tile: " + e);
                    shouldDestroy = true;
                    if (instanceId)
                        idsToRemove.push(instanceId);
                }
                if (shouldDestroy) {
                    try {
                        tile.destroy();
                    }
                    catch (_) { }
                }
                else {
                    prefabsToKeep.push(tile);
                }
            }
            for (const id of idsToRemove) {
                this.prefabData.delete(id);
            }
            this.activePrefabs = prefabsToKeep;
        }
    };
    __setFunctionName(_classThis, "RoadInstantiator");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        RoadInstantiator = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return RoadInstantiator = _classThis;
})();
exports.RoadInstantiator = RoadInstantiator;
//# sourceMappingURL=RoadInstantiator.js.map