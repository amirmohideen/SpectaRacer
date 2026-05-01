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
exports.TreeInstantiator = void 0;
var __selfType = requireType("./TreeInstantiator");
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
 * Tree Instantiator component — spawns and animates TreeCube obstacle prefabs toward a target.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let TreeInstantiator = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var TreeInstantiator = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.prefab = (__runInitializers(this, _instanceExtraInitializers), this.prefab);
            this.spawnPosition = this.spawnPosition;
            this.targetPosition = this.targetPosition;
            this.endZone = this.endZone;
            this.spawnInterval = this.spawnInterval;
            this.moveSpeed = this.moveSpeed;
            this.rotationSpeedX = this.rotationSpeedX;
            this.rotationSpeedY = this.rotationSpeedY;
            this.rotationSpeedZ = this.rotationSpeedZ;
            this.destroyOnReachTarget = this.destroyOnReachTarget;
            this.showSpawnGizmo = this.showSpawnGizmo;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Controlled externally by LanePatternController — false blocks new spawns
            // while already-moving prefabs continue unaffected.
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
            this.rotationSpeedX = this.rotationSpeedX;
            this.rotationSpeedY = this.rotationSpeedY;
            this.rotationSpeedZ = this.rotationSpeedZ;
            this.destroyOnReachTarget = this.destroyOnReachTarget;
            this.showSpawnGizmo = this.showSpawnGizmo;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Controlled externally by LanePatternController — false blocks new spawns
            // while already-moving prefabs continue unaffected.
            this.spawnEnabled = true;
            this.nextSpawnTime = 0;
            this.activePrefabs = [];
            this.prefabData = new Map();
            this.pendingRemoval = new Set();
        }
        onAwake() {
            this.logger = new Logger_1.Logger("TreeInstantiator", this.enableLogging || this.enableLoggingLifecycle, true);
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
            this.logger.info("Tree Instantiator started");
            this.nextSpawnTime = getTime() + this.spawnInterval;
        }
        reset() {
            for (const p of this.activePrefabs) {
                try {
                    p.destroy();
                }
                catch (_) { }
            }
            this.activePrefabs = [];
            this.prefabData.clear();
            this.pendingRemoval.clear();
            this.nextSpawnTime = getTime() + this.spawnInterval;
            this.logger.info("TreeInstantiator reset");
        }
        /** Called by LanePatternController when re-enabling this lane.
         *  Pass delayOverride = 0 for an immediate first spawn. */
        resetSpawnTimer(delayOverride) {
            const delay = (delayOverride !== undefined) ? delayOverride : this.spawnInterval;
            this.nextSpawnTime = getTime() + delay;
        }
        setupEndZone() {
            if (!this.endZone) {
                this.logger.warn("endZone is not assigned — trees will not be destroyed at the end");
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
                    const objName = obj.name;
                    const match = objName.match(/TreeCube_(\w+)/);
                    if (!match)
                        return;
                    this.pendingRemoval.add(match[1]);
                    try {
                        obj.destroy();
                    }
                    catch (_) { }
                    this.logger.info(`End zone destroyed tree: ${objName}`);
                }
                catch (_) { }
            });
            this.logger.info("End zone collision registered");
        }
        generateUniqueId() {
            return Math.random().toString(36).substring(2, 15) + Math.random().toString(36).substring(2, 15);
        }
        onUpdate() {
            // Always move and clean up in-flight prefabs regardless of spawnEnabled
            this.updatePrefabs();
            this.drawGizmo();
            if (!this.spawnEnabled)
                return;
            const currentTime = getTime();
            if (currentTime >= this.nextSpawnTime) {
                this.spawnPrefab();
                this.nextSpawnTime = currentTime + this.spawnInterval;
            }
        }
        drawGizmo() {
            if (!this.showSpawnGizmo || !this.spawnPosition || !this.targetPosition)
                return;
            const debugRender = global.debugRenderSystem;
            if (!debugRender)
                return;
            const spawnPos = this.spawnPosition.getTransform().getWorldPosition();
            const targetPos = this.targetPosition.getTransform().getWorldPosition();
            debugRender.drawLine(spawnPos, targetPos, new vec4(0.29, 0.86, 0.5, 1));
            debugRender.drawSolidSphere(spawnPos, 0.03, new vec4(0.29, 0.86, 0.5, 0.8));
            debugRender.drawSolidSphere(targetPos, 0.03, new vec4(1, 0.25, 0.25, 0.8));
        }
        spawnPrefab() {
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
            const instanceId = this.generateUniqueId();
            this.prefabData.set(instanceId, {
                moveDirection: moveDirection,
                id: instanceId
            });
            instance.name = `TreeCube_${instanceId}`;
            this.activePrefabs.push(instance);
            this.logger.info(`Spawned tree at ${spawnPos.x.toFixed(2)}, ${spawnPos.y.toFixed(2)}, ${spawnPos.z.toFixed(2)}`);
        }
        updatePrefabs() {
            const deltaTime = getDeltaTime();
            const targetPos = this.targetPosition.getTransform().getWorldPosition();
            const prefabsToKeep = [];
            const idsToRemove = [];
            for (let i = 0; i < this.activePrefabs.length; i++) {
                const prefab = this.activePrefabs[i];
                let prefabToDestroy = false;
                let instanceId = "";
                if (!prefab)
                    continue;
                try {
                    if (typeof prefab.name !== "string") {
                        this.logger.warn("Prefab name is not a string");
                        continue;
                    }
                    const idMatch = prefab.name.match(/TreeCube_(\w+)/);
                    if (!idMatch || !idMatch[1]) {
                        this.logger.warn("Could not extract ID from prefab name: " + prefab.name);
                        continue;
                    }
                    instanceId = idMatch[1];
                    if (this.pendingRemoval.has(instanceId)) {
                        idsToRemove.push(instanceId);
                        this.pendingRemoval.delete(instanceId);
                        continue;
                    }
                    const instanceData = this.prefabData.get(instanceId);
                    if (!instanceData) {
                        this.logger.warn("No instance data found for ID: " + instanceId);
                        continue;
                    }
                    try {
                        const transform = prefab.getTransform();
                        if (!transform) {
                            this.logger.warn("Could not get transform for prefab");
                            continue;
                        }
                        const currentPos = transform.getWorldPosition();
                        const moveAmount = this.moveSpeed * deltaTime;
                        const newPos = currentPos.add(instanceData.moveDirection.uniformScale(moveAmount));
                        transform.setWorldPosition(newPos);
                        const currentRot = transform.getLocalRotation();
                        const xRad = this.rotationSpeedX * deltaTime * (Math.PI / 180);
                        const yRad = this.rotationSpeedY * deltaTime * (Math.PI / 180);
                        const zRad = this.rotationSpeedZ * deltaTime * (Math.PI / 180);
                        const xRot = quat.angleAxis(xRad, new vec3(1, 0, 0));
                        const yRot = quat.angleAxis(yRad, new vec3(0, 1, 0));
                        const zRot = quat.angleAxis(zRad, new vec3(0, 0, 1));
                        transform.setLocalRotation(currentRot.multiply(xRot).multiply(yRot).multiply(zRot));
                        if (this.destroyOnReachTarget && currentPos.distance(targetPos) < 0.5) {
                            prefabToDestroy = true;
                            idsToRemove.push(instanceId);
                        }
                    }
                    catch (e) {
                        this.logger.error("Error updating prefab: " + e);
                        prefabToDestroy = true;
                        idsToRemove.push(instanceId);
                    }
                    if (prefabToDestroy) {
                        try {
                            prefab.destroy();
                        }
                        catch (e) {
                            this.logger.error("Error destroying prefab: " + e);
                        }
                    }
                    else {
                        prefabsToKeep.push(prefab);
                    }
                }
                catch (e) {
                    try {
                        if (e instanceof Error)
                            this.logger.error("Error in prefab update loop: " + e.message);
                        else
                            this.logger.error("Unknown error in prefab update loop");
                    }
                    catch (_) { }
                    try {
                        if (prefab)
                            prefab.destroy();
                    }
                    catch (_) { }
                    if (instanceId)
                        idsToRemove.push(instanceId);
                }
            }
            for (const id of idsToRemove) {
                this.prefabData.delete(id);
            }
            this.activePrefabs = prefabsToKeep;
        }
    };
    __setFunctionName(_classThis, "TreeInstantiator");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TreeInstantiator = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TreeInstantiator = _classThis;
})();
exports.TreeInstantiator = TreeInstantiator;
//# sourceMappingURL=TreeInstantiator.js.map