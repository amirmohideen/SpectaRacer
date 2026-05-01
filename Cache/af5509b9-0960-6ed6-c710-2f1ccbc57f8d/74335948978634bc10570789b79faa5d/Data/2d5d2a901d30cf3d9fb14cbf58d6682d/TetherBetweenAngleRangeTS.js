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
exports.TetherBetweenAngleRangeTS = void 0;
var __selfType = requireType("./TetherBetweenAngleRangeTS");
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
 * Smart tethering system with angle and distance-based repositioning triggers. Follows target with
 * conditional updates only when angle threshold, vertical distance, or horizontal distance is exceeded,
 * smooth lerp transitions, position offset in target space, and detailed debug visualization.
 */
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let TetherBetweenAngleRangeTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var TetherBetweenAngleRangeTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.offset = this.offset;
            this.lerpSpeed = this.lerpSpeed;
            this.angleThreshold = this.angleThreshold;
            this.verticalDistanceThreshold = this.verticalDistanceThreshold;
            this.horizontalDistanceThreshold = this.horizontalDistanceThreshold;
            this.showDebug = this.showDebug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetPosition = new vec3(0, 0, 0);
            this._lastRepositionTime = 0;
            this._currentAngle = 0;
            this._verticalDistance = 0;
            this._horizontalDistance = 0;
            this._needsRepositioning = false;
        }
        __initialize() {
            super.__initialize();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.offset = this.offset;
            this.lerpSpeed = this.lerpSpeed;
            this.angleThreshold = this.angleThreshold;
            this.verticalDistanceThreshold = this.verticalDistanceThreshold;
            this.horizontalDistanceThreshold = this.horizontalDistanceThreshold;
            this.showDebug = this.showDebug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetPosition = new vec3(0, 0, 0);
            this._lastRepositionTime = 0;
            this._currentAngle = 0;
            this._verticalDistance = 0;
            this._horizontalDistance = 0;
            this._needsRepositioning = false;
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("TetherBetweenAngleRangeTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("TetherBetweenAngleRangeTS Initialization");
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
                    this.logger.warn("No target set - please set a target object");
                }
                else {
                    print("TetherBetweenAngleRangeTS: No target set - please set a target object");
                }
                return;
            }
            // Initialize target position
            this._targetPosition = this.calculateNewTargetPosition();
        }
        /**
         * Called every frame to evaluate tethering conditions
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            if (!this.target)
                return;
            // Evaluate current conditions
            this.evaluateConditions();
            // Only recalculate target position if needed
            if (this._needsRepositioning) {
                // Calculate new position
                this._targetPosition = this.calculateNewTargetPosition();
                // Reset state
                this._needsRepositioning = false;
                this._lastRepositionTime = getTime();
                if (this.showDebug) {
                    if (this.enableLogging) {
                        this.logger.info("REPOSITIONING TO NEW POSITION");
                    }
                    else {
                        print(`TetherBetweenAngleRangeTS: REPOSITIONING TO NEW POSITION`);
                    }
                }
            }
            // Always update position with lerping (fixed: this was inside the if block before)
            this.updateContentPosition();
        }
        /**
         * Evaluate all conditions that could trigger repositioning
         */
        evaluateConditions() {
            const myPos = this.sceneObject.getTransform().getWorldPosition();
            const targetPos = this.target.getTransform().getWorldPosition();
            // Calculate vector from target to object
            const targetToObject = new vec3(myPos.x - targetPos.x, myPos.y - targetPos.y, myPos.z - targetPos.z);
            // Calculate distances
            this._verticalDistance = Math.abs(targetToObject.y);
            this._horizontalDistance = Math.sqrt(targetToObject.x * targetToObject.x +
                targetToObject.z * targetToObject.z);
            // Extra check for zero-length vectors to avoid NaN
            if (this._horizontalDistance < 0.0001) {
                // We're directly above/below the target, so angle is undefined
                // Set to 0 by convention
                this._currentAngle = 0;
                return;
            }
            // Calculate angle between target's forward and direction to object
            // on the horizontal plane (XZ plane)
            // 1. Get target's forward vector and flatten to XZ plane
            const targetRotation = this.target.getTransform().getWorldRotation();
            const targetForward = this.getForwardVector(targetRotation);
            const flatForward = new vec3(targetForward.x, 0, targetForward.z).normalize();
            // 2. Get direction vector FROM target TO object, flattened to XZ plane
            const flatToObject = new vec3(targetToObject.x, 0, targetToObject.z).normalize();
            // 3. Calculate dot product between these normalized vectors
            const dotProduct = flatForward.dot(flatToObject);
            // 4. Convert dot product to angle in degrees
            // Note: dot(a,b) = |a|*|b|*cos(θ) = cos(θ) when vectors are normalized
            // When vectors align perfectly: cos(0°) = 1
            // When vectors are perpendicular: cos(90°) = 0
            // When vectors point opposite: cos(180°) = -1
            this._currentAngle = 180 - Math.acos(Math.max(-1, Math.min(1, dotProduct))) * (180 / Math.PI);
            if (this.showDebug) {
                if (this.enableLogging) {
                    this.logger.info(`Forward vector: (${flatForward.x.toFixed(2)}, ${flatForward.z.toFixed(2)})`);
                    this.logger.info(`Direction to object: (${flatToObject.x.toFixed(2)}, ${flatToObject.z.toFixed(2)})`);
                    this.logger.info(`Dot product: ${dotProduct.toFixed(3)} → Angle: ${this._currentAngle.toFixed(1)}°`);
                }
                else {
                    print(`Forward vector: (${flatForward.x.toFixed(2)}, ${flatForward.z.toFixed(2)})`);
                    print(`Direction to object: (${flatToObject.x.toFixed(2)}, ${flatToObject.z.toFixed(2)})`);
                    print(`Dot product: ${dotProduct.toFixed(3)} → Angle: ${this._currentAngle.toFixed(1)}°`);
                }
            }
            // Evaluate all conditions
            const angleTrigger = this._currentAngle > this.angleThreshold;
            const verticalTrigger = this._verticalDistance > this.verticalDistanceThreshold;
            const horizontalTrigger = this._horizontalDistance > this.horizontalDistanceThreshold;
            // Need repositioning if ANY condition is met
            this._needsRepositioning = angleTrigger || verticalTrigger || horizontalTrigger;
            // Debug output
            if (this.showDebug) {
                if (this.enableLogging) {
                    this.logger.info(`Angle: ${this._currentAngle.toFixed(1)}° > ${this.angleThreshold}°? ${angleTrigger}`);
                    this.logger.info(`VertDist: ${this._verticalDistance.toFixed(1)} > ${this.verticalDistanceThreshold}? ${verticalTrigger}`);
                    this.logger.info(`HorizDist: ${this._horizontalDistance.toFixed(1)} > ${this.horizontalDistanceThreshold}? ${horizontalTrigger}`);
                    if (this._needsRepositioning) {
                        this.logger.info("NEEDS REPOSITIONING due to: " +
                            (angleTrigger ? "ANGLE " : "") +
                            (verticalTrigger ? "VERTICAL " : "") +
                            (horizontalTrigger ? "HORIZONTAL" : ""));
                    }
                    else {
                        this.logger.info("All conditions within thresholds - no repositioning needed");
                    }
                }
                else {
                    print(`Angle: ${this._currentAngle.toFixed(1)}° > ${this.angleThreshold}°? ${angleTrigger}`);
                    print(`VertDist: ${this._verticalDistance.toFixed(1)} > ${this.verticalDistanceThreshold}? ${verticalTrigger}`);
                    print(`HorizDist: ${this._horizontalDistance.toFixed(1)} > ${this.horizontalDistanceThreshold}? ${horizontalTrigger}`);
                    if (this._needsRepositioning) {
                        print("NEEDS REPOSITIONING due to: " +
                            (angleTrigger ? "ANGLE " : "") +
                            (verticalTrigger ? "VERTICAL " : "") +
                            (horizontalTrigger ? "HORIZONTAL" : ""));
                    }
                    else {
                        print("All conditions within thresholds - no repositioning needed");
                    }
                }
            }
        }
        /**
         * Calculate the new target position with offset.
         */
        calculateNewTargetPosition() {
            const targetTransform = this.target.getTransform();
            const targetPos = targetTransform.getWorldPosition();
            const targetRot = targetTransform.getWorldRotation();
            // Get the forward and right vectors
            const forward = this.getForwardVector(targetRot);
            const right = this.getRightVector(targetRot);
            // Apply offset in target's local space
            return new vec3(targetPos.x + right.x * this.offset.x + forward.x * this.offset.z, targetPos.y + this.offset.y, targetPos.z + right.z * this.offset.x + forward.z * this.offset.z);
        }
        /**
         * Update the content's position with lerping.
         */
        updateContentPosition() {
            const myTransform = this.sceneObject.getTransform();
            const currentPos = myTransform.getWorldPosition();
            // Lerp to the target position
            const t = Math.min(1.0, this.lerpSpeed * getDeltaTime());
            const newPos = vec3.lerp(currentPos, this._targetPosition, t);
            // Apply the new position
            myTransform.setWorldPosition(newPos);
        }
        /**
         * Get the forward vector from a rotation.
         */
        getForwardVector(rotation) {
            // Transform the local forward vector (0,0,1) by the rotation
            return rotation.multiplyVec3(new vec3(0, 0, 1));
        }
        /**
         * Get the right vector from a rotation.
         */
        getRightVector(rotation) {
            // Transform the local right vector (1,0,0) by the rotation
            return rotation.multiplyVec3(new vec3(1, 0, 0));
        }
    };
    __setFunctionName(_classThis, "TetherBetweenAngleRangeTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TetherBetweenAngleRangeTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TetherBetweenAngleRangeTS = _classThis;
})();
exports.TetherBetweenAngleRangeTS = TetherBetweenAngleRangeTS;
//# sourceMappingURL=TetherBetweenAngleRangeTS.js.map