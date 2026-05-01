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
exports.MatchTransformTS = void 0;
var __selfType = requireType("./MatchTransformTS");
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
 * Transform matching utility with optional position, rotation, and scale synchronization. Follows
 * target transform with configurable per-axis constraints, smooth lerp interpolation, position offset,
 * and independent speed controls for position, rotation, and scale matching.
 */
const MathUtils_1 = require("Utilities.lspkg/Scripts/Utils/MathUtils");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let MatchTransformTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var MatchTransformTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.positionOffset = this.positionOffset;
            this.usePositionLerp = this.usePositionLerp;
            this.positionLerpSpeed = this.positionLerpSpeed;
            this.rotationLerpSpeed = this.rotationLerpSpeed;
            this.scaleLerpSpeed = this.scaleLerpSpeed;
            this.constrainPositionX = this.constrainPositionX;
            this.constrainPositionY = this.constrainPositionY;
            this.constrainPositionZ = this.constrainPositionZ;
            this.constrainRotationX = this.constrainRotationX;
            this.constrainRotationY = this.constrainRotationY;
            this.constrainRotationZ = this.constrainRotationZ;
            this.constrainScaleX = this.constrainScaleX;
            this.constrainScaleY = this.constrainScaleY;
            this.constrainScaleZ = this.constrainScaleZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.positionOffset = this.positionOffset;
            this.usePositionLerp = this.usePositionLerp;
            this.positionLerpSpeed = this.positionLerpSpeed;
            this.rotationLerpSpeed = this.rotationLerpSpeed;
            this.scaleLerpSpeed = this.scaleLerpSpeed;
            this.constrainPositionX = this.constrainPositionX;
            this.constrainPositionY = this.constrainPositionY;
            this.constrainPositionZ = this.constrainPositionZ;
            this.constrainRotationX = this.constrainRotationX;
            this.constrainRotationY = this.constrainRotationY;
            this.constrainRotationZ = this.constrainRotationZ;
            this.constrainScaleX = this.constrainScaleX;
            this.constrainScaleY = this.constrainScaleY;
            this.constrainScaleZ = this.constrainScaleZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("MatchTransformTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("MatchTransformTS Initialization");
                this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
            }
        }
        /**
         * Called on the first frame when the scene starts
         * Automatically bound to OnStartEvent via SnapDecorators
         */
        onStart() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onStart() - Scene started");
            }
            if (!this.target) {
                if (this.enableLogging) {
                    this.logger.info("No target set for MatchTransform - please set a target object");
                }
                else {
                    print("No target set for MatchTransform - please set a target object");
                }
            }
        }
        /**
         * Called every frame
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            if (!this.target)
                return;
            this.updateTransform();
        }
        /**
         * Update this object's transform to match the target's transform with constraints.
         */
        updateTransform() {
            // Get current transform details
            const myTransform = this.sceneObject.getTransform();
            const targetTransform = this.target.getTransform();
            // Handle position matching with optional constraints
            this.updatePosition(myTransform, targetTransform);
            // Handle rotation matching with optional constraints
            this.updateRotation(myTransform, targetTransform);
            // Handle scale matching with optional constraints
            this.updateScale(myTransform, targetTransform);
        }
        /**
         * Update the position based on target and constraints.
         */
        updatePosition(myTransform, targetTransform) {
            // Get target position
            const targetPos = targetTransform.getWorldPosition();
            // Apply offset in world space
            // Note: In a real implementation with proper transform hierarchy,
            // we would need to transform the offset from local to world space
            const targetPosition = new vec3(targetPos.x + this.positionOffset.x, targetPos.y + this.positionOffset.y, targetPos.z + this.positionOffset.z);
            const currentPosition = myTransform.getWorldPosition();
            // Apply constraints
            let newPosition = new vec3(this.constrainPositionX ? currentPosition.x : targetPosition.x, this.constrainPositionY ? currentPosition.y : targetPosition.y, this.constrainPositionZ ? currentPosition.z : targetPosition.z);
            // Apply lerp if enabled, otherwise use direct position matching
            if (this.usePositionLerp) {
                // Smooth transition with lerp
                const t = Math.min(1.0, this.positionLerpSpeed * getDeltaTime());
                newPosition = vec3.lerp(currentPosition, newPosition, t);
            }
            else {
                // Direct 1:1 position matching (no lerp)
                // newPosition is already set correctly from constraints
            }
            // Set the new position
            myTransform.setWorldPosition(newPosition);
        }
        /**
         * Update the rotation based on target and constraints.
         */
        updateRotation(myTransform, targetTransform) {
            const targetRotation = targetTransform.getWorldRotation();
            const currentRotation = myTransform.getWorldRotation();
            // Convert to Euler angles for constraints (MathUtils returns radians)
            const targetEuler = MathUtils_1.MathUtils.quaternionToEuler(targetRotation);
            const currentEuler = MathUtils_1.MathUtils.quaternionToEuler(currentRotation);
            // Apply constraints
            const newEuler = new vec3(this.constrainRotationX ? currentEuler.x : targetEuler.x, this.constrainRotationY ? currentEuler.y : targetEuler.y, this.constrainRotationZ ? currentEuler.z : targetEuler.z);
            // Convert back to quaternion
            const newRotation = quat.fromEulerAngles(newEuler.x, newEuler.y, newEuler.z);
            // Apply lerp
            const lerpedRotation = quat.slerp(currentRotation, newRotation, this.rotationLerpSpeed * getDeltaTime());
            // Set the new rotation
            myTransform.setWorldRotation(lerpedRotation);
        }
        /**
         * Update the scale based on target and constraints.
         */
        updateScale(myTransform, targetTransform) {
            const targetScale = targetTransform.getWorldScale();
            const currentScale = myTransform.getLocalScale();
            // Apply constraints
            const newScale = new vec3(this.constrainScaleX ? currentScale.x : targetScale.x, this.constrainScaleY ? currentScale.y : targetScale.y, this.constrainScaleZ ? currentScale.z : targetScale.z);
            // Apply lerp
            const t = Math.min(1.0, this.scaleLerpSpeed * getDeltaTime());
            const lerpedScale = vec3.lerp(currentScale, newScale, t);
            // Set the new scale
            myTransform.setLocalScale(lerpedScale);
        }
    };
    __setFunctionName(_classThis, "MatchTransformTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        MatchTransformTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return MatchTransformTS = _classThis;
})();
exports.MatchTransformTS = MatchTransformTS;
//# sourceMappingURL=MatchTransformTS.js.map