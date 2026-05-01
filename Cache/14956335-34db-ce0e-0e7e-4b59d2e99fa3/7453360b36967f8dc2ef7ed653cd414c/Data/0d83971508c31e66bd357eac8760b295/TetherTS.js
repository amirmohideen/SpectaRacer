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
exports.TetherTS = void 0;
var __selfType = requireType("./TetherTS");
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
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let TetherTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var TetherTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.offset = this.offset;
            this.lerpSpeed = this.lerpSpeed;
            this.verticalDistanceFromTarget = this.verticalDistanceFromTarget;
            this.horizontalDistanceFromTarget = this.horizontalDistanceFromTarget;
            this.reorientDuringTargetRotation = this.reorientDuringTargetRotation;
            this.flattenDuringTargetRotation = this.flattenDuringTargetRotation;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetPosition = new vec3(0, 0, 0);
            this._currentAngle = 0;
            this._flatAngle = 0;
            this._targetDir = new vec3(0, 0, 0);
            this._flatForward = new vec3(0, 0, 0);
        }
        __initialize() {
            super.__initialize();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.offset = this.offset;
            this.lerpSpeed = this.lerpSpeed;
            this.verticalDistanceFromTarget = this.verticalDistanceFromTarget;
            this.horizontalDistanceFromTarget = this.horizontalDistanceFromTarget;
            this.reorientDuringTargetRotation = this.reorientDuringTargetRotation;
            this.flattenDuringTargetRotation = this.flattenDuringTargetRotation;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetPosition = new vec3(0, 0, 0);
            this._currentAngle = 0;
            this._flatAngle = 0;
            this._targetDir = new vec3(0, 0, 0);
            this._flatForward = new vec3(0, 0, 0);
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("TetherTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("TetherTS Initialization");
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
                    this.logger.warn("No target set for Tether - please set a target object");
                }
                else {
                    print("No target set for Tether - please set a target object");
                }
                return;
            }
            // Initialize target position
            this._targetPosition = this.calculateNewTargetPosition();
        }
        /**
         * Called every frame to update tether position
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            if (!this.target)
                return;
            // Calculate the angles
            this._currentAngle = this.calculateAngle();
            this._flatAngle = this.calculateFlatAngle();
            // Check if we need to reposition
            if (this.shouldReposition()) {
                this._targetPosition = this.calculateNewTargetPosition();
            }
            // Update position with lerping
            this.updateContentPosition();
        }
        /**
         * Calculate the new target position based on offset and rotation settings.
         */
        calculateNewTargetPosition() {
            const targetTransform = this.target.getTransform();
            const targetPos = targetTransform.getWorldPosition();
            if (this.reorientDuringTargetRotation) {
                if (this.flattenDuringTargetRotation) {
                    // Get target's forward and right, but flatten them
                    const targetRotation = targetTransform.getWorldRotation();
                    // Get the forward direction
                    const forward = this.getForwardVector(targetRotation);
                    const flattenedForward = new vec3(forward.x, 0, forward.z).normalize();
                    // Get the right direction
                    const right = this.getRightVector(targetRotation);
                    const flattenedRight = new vec3(right.x, 0, right.z).normalize();
                    // Calculate new position using the flattened directions
                    return new vec3(targetPos.x + flattenedRight.x * this.offset.x + this.offset.y * 0 + flattenedForward.x * this.offset.z, targetPos.y + flattenedRight.y * this.offset.x + this.offset.y * 1 + flattenedForward.y * this.offset.z, targetPos.z + flattenedRight.z * this.offset.x + this.offset.y * 0 + flattenedForward.z * this.offset.z);
                }
                else {
                    // Apply offset in target's local space
                    const targetRot = targetTransform.getWorldRotation();
                    // Transform offset by target's rotation
                    const rotatedOffset = targetRot.multiplyVec3(this.offset);
                    // Add to target position
                    return targetPos.add(rotatedOffset);
                }
            }
            // Simple offset in world space
            return new vec3(targetPos.x + this.offset.x, targetPos.y + this.offset.y, targetPos.z + this.offset.z);
        }
        /**
         * Check if the content should be repositioned.
         */
        shouldReposition() {
            const myPos = this.sceneObject.getTransform().getWorldPosition();
            const targetPos = this.target.getTransform().getWorldPosition();
            // Calculate displacement vector to target
            const toTarget = new vec3(myPos.x - targetPos.x, myPos.y - targetPos.y, myPos.z - targetPos.z);
            // Calculate vertical and horizontal distances
            const verticalDistance = Math.abs(toTarget.y);
            const horizontalDistance = Math.sqrt(toTarget.x * toTarget.x + toTarget.z * toTarget.z);
            // Check if any threshold is exceeded
            return verticalDistance > this.verticalDistanceFromTarget ||
                horizontalDistance > this.horizontalDistanceFromTarget;
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
         * Calculate the angle between target's forward and direction to the object on XZ plane.
         */
        calculateFlatAngle() {
            // Calculate direction from target to object
            const myPos = this.sceneObject.getTransform().getWorldPosition();
            const targetPos = this.target.getTransform().getWorldPosition();
            this._targetDir = new vec3(myPos.x - targetPos.x, 0, // Ignore Y component for flat angle calculation
            myPos.z - targetPos.z);
            // Get target's forward vector and flatten it
            const targetRotation = this.target.getTransform().getWorldRotation();
            const forward = this.getForwardVector(targetRotation);
            this._flatForward = new vec3(forward.x, 0, forward.z).normalize();
            // Calculate the signed angle
            return this.signedAngle(this._targetDir, this._flatForward);
        }
        /**
         * Calculate the signed angle between two vectors on the XZ plane.
         */
        signedAngle(from, to) {
            // Ensure vectors are normalized
            const normalizedFrom = from.normalize();
            const normalizedTo = to.normalize();
            // Calculate the angle using dot product
            const dot = normalizedFrom.dot(normalizedTo);
            let angle = Math.acos(Math.max(-1, Math.min(1, dot))) * (180 / Math.PI);
            // Determine the sign using cross product
            const cross = normalizedFrom.cross(normalizedTo);
            if (cross.y < 0)
                angle = -angle;
            return angle;
        }
        /**
         * Calculate the angle between target's forward and our forward.
         */
        calculateAngle() {
            const myTransform = this.sceneObject.getTransform();
            const targetTransform = this.target.getTransform();
            // Get forward vectors (rotate local forward (0,0,1) by rotation)
            const myForward = myTransform.getWorldRotation().multiplyVec3(new vec3(0, 0, 1));
            const targetForward = targetTransform.getWorldRotation().multiplyVec3(new vec3(0, 0, 1));
            // Calculate the angle between them using dot product
            const dot = myForward.dot(targetForward);
            const angle = Math.acos(Math.max(-1, Math.min(1, dot))) * (180 / Math.PI);
            return angle;
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
    __setFunctionName(_classThis, "TetherTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TetherTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TetherTS = _classThis;
})();
exports.TetherTS = TetherTS;
//# sourceMappingURL=TetherTS.js.map