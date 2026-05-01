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
exports.InBetweenRotationUtilityTS = void 0;
var __selfType = requireType("./InBetweenRotationUtilityTS");
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
 * Rotation utility for calculating in-between orientations of two targets. Computes the midpoint
 * rotation between two objects' forward directions using quaternion slerp interpolation, useful for
 * smooth camera positioning, look-at averaging, and balanced directional calculations.
 */
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let InBetweenRotationUtilityTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var InBetweenRotationUtilityTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.target1 = (__runInitializers(this, _instanceExtraInitializers), this.target1);
            this.target2 = this.target2;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.target1 = (__runInitializers(this, _instanceExtraInitializers), this.target1);
            this.target2 = this.target2;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("InBetweenRotationUtilityTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("InBetweenRotationUtilityTS Initialization");
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
            if (!this.target1 || !this.target2) {
                this.logger.warn("Both targets must be set for InBetweenRotationUtility");
            }
        }
        /**
         * Called every frame to calculate in-between rotation
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            if (!this.target1 || !this.target2)
                return;
            const target1Forward = this.getForwardVector(this.target1);
            const target2Forward = this.getForwardVector(this.target2);
            // Apply the in-between rotation to this object
            const newRotation = this.getInBetweenRotation(target1Forward, target2Forward);
            this.sceneObject.getTransform().setWorldRotation(newRotation);
        }
        /**
         * Gets the in-between rotation between two transforms.
         * @param a The first transform
         * @param b The second transform
         * @returns The rotation exactly in between the forward directions of the two objects
         */
        getInBetweenRotationFromTransforms(a, b) {
            if (!a || !b) {
                this.logger.warn("Can't calculate in-between rotation - one or both objects are null");
                return new quat(0, 0, 0, 1); // Identity quaternion
            }
            // Get the forward vectors of both objects
            const forwardA = this.getForwardVector(a);
            const forwardB = this.getForwardVector(b);
            // Get the in-between rotation
            return this.getInBetweenRotation(forwardA, forwardB);
        }
        /**
         * Gets the in-between rotation between two arbitrary directions.
         * @param directionA The first direction as a vec3
         * @param directionB The second direction as a vec3
         * @returns The rotation exactly in between the two directions
         */
        getInBetweenRotation(directionA, directionB) {
            // Normalize the directions
            const normalizedA = directionA.normalize();
            const normalizedB = directionB.normalize();
            // Create quaternions based on the directions
            const rotationA = this.lookRotation(normalizedA);
            const rotationB = this.lookRotation(normalizedB);
            // Slerp between the two directions (50% interpolation for in-between)
            return quat.slerp(rotationA, rotationB, 0.5);
        }
        /**
         * Gets the forward vector from a transform.
         * @param obj The SceneObject to get the forward vector from
         * @returns The forward vector of the transform
         */
        getForwardVector(obj) {
            if (!obj)
                return new vec3(0, 0, 1); // Default forward
            const transform = obj.getTransform();
            const worldRotation = transform.getWorldRotation();
            // Calculate forward vector (local Z axis in world space)
            // For a quat rotation, if we transform (0,0,1), we get the forward vector
            const forward = new vec3(0, 0, 1);
            return worldRotation.multiplyVec3(forward);
        }
        /**
         * Creates a quaternion that represents a rotation looking in a specified direction.
         * @param direction The direction to look at (forward vector)
         * @returns A quaternion representing the rotation
         */
        lookRotation(direction) {
            // Simplified implementation of Quaternion.LookRotation
            // Default up vector is (0,1,0) - world up
            const up = new vec3(0, 1, 0);
            // Normalize direction
            const normalizedDirection = direction.normalize();
            // Handle the case when direction is parallel to up
            if (Math.abs(normalizedDirection.x) < 0.0001 &&
                Math.abs(normalizedDirection.z) < 0.0001) {
                // Looking straight up or down
                if (normalizedDirection.y > 0) {
                    // Looking up, rotate 180 degrees around X axis
                    return quat.fromEulerAngles(Math.PI, 0, 0);
                }
                else {
                    // Looking down, no rotation needed
                    return new quat(0, 0, 0, 1);
                }
            }
            // Calculate right vector (cross product of up and forward)
            const right = up.cross(normalizedDirection).normalize();
            // Recalculate up vector (cross product of forward and right)
            const newUp = normalizedDirection.cross(right);
            // Create rotation matrix from the orthonormal basis
            // Convert to quaternion
            const trace = right.x + newUp.y + normalizedDirection.z;
            if (trace > 0) {
                const s = 0.5 / Math.sqrt(trace + 1.0);
                return new quat((newUp.z - normalizedDirection.y) * s, (normalizedDirection.x - right.z) * s, (right.y - newUp.x) * s, 0.25 / s);
            }
            else {
                // Use the appropriate formula based on which diagonal element is largest
                if (right.x > newUp.y && right.x > normalizedDirection.z) {
                    const s = 2.0 * Math.sqrt(1.0 + right.x - newUp.y - normalizedDirection.z);
                    return new quat(0.25 * s, (right.y + newUp.x) / s, (normalizedDirection.x + right.z) / s, (newUp.z - normalizedDirection.y) / s);
                }
                else if (newUp.y > normalizedDirection.z) {
                    const s = 2.0 * Math.sqrt(1.0 + newUp.y - right.x - normalizedDirection.z);
                    return new quat((right.y + newUp.x) / s, 0.25 * s, (newUp.z + normalizedDirection.y) / s, (normalizedDirection.x - right.z) / s);
                }
                else {
                    const s = 2.0 * Math.sqrt(1.0 + normalizedDirection.z - right.x - newUp.y);
                    return new quat((normalizedDirection.x + right.z) / s, (newUp.z + normalizedDirection.y) / s, 0.25 * s, (right.y - newUp.x) / s);
                }
            }
        }
    };
    __setFunctionName(_classThis, "InBetweenRotationUtilityTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        InBetweenRotationUtilityTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return InBetweenRotationUtilityTS = _classThis;
})();
exports.InBetweenRotationUtilityTS = InBetweenRotationUtilityTS;
//# sourceMappingURL=InBetweenRotationUtilityTS.js.map