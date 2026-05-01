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
exports.HandAttacher = exports.HandJoint = exports.HandSide = void 0;
var __selfType = requireType("./HandAttacher");
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
 * Hand attachment system for attaching objects to hand joints in world space. Provides smooth
 * interpolation, customizable offsets, and support for all hand joints with configurable tracking.
 */
const SIK_1 = require("SpectaclesInteractionKit.lspkg/SIK");
const MathUtils_1 = require("Utilities.lspkg/Scripts/Utils/MathUtils");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
/**
 * HandAttacher - Attach objects to hand joints in world space
 *
 * Attaches a target object to any hand joint with customizable offset and rotation.
 * The object is not parented - it follows the joint in world space with smooth interpolation.
 */
var HandSide;
(function (HandSide) {
    HandSide["Left"] = "left";
    HandSide["Right"] = "right";
    HandSide["Dominant"] = "dominant";
    HandSide["NonDominant"] = "nondominant";
})(HandSide || (exports.HandSide = HandSide = {}));
var HandJoint;
(function (HandJoint) {
    HandJoint["Wrist"] = "wrist";
    // Thumb joints
    HandJoint["ThumbBase"] = "thumbToWrist";
    HandJoint["ThumbKnuckle"] = "thumbKnuckle";
    HandJoint["ThumbMid"] = "thumbMidJoint";
    HandJoint["ThumbTip"] = "thumbTip";
    // Index finger joints
    HandJoint["IndexBase"] = "indexToWrist";
    HandJoint["IndexKnuckle"] = "indexKnuckle";
    HandJoint["IndexMid"] = "indexMidJoint";
    HandJoint["IndexUpper"] = "indexUpperJoint";
    HandJoint["IndexTip"] = "indexTip";
    // Middle finger joints
    HandJoint["MiddleBase"] = "middleToWrist";
    HandJoint["MiddleKnuckle"] = "middleKnuckle";
    HandJoint["MiddleMid"] = "middleMidJoint";
    HandJoint["MiddleUpper"] = "middleUpperJoint";
    HandJoint["MiddleTip"] = "middleTip";
    // Ring finger joints
    HandJoint["RingBase"] = "ringToWrist";
    HandJoint["RingKnuckle"] = "ringKnuckle";
    HandJoint["RingMid"] = "ringMidJoint";
    HandJoint["RingUpper"] = "ringUpperJoint";
    HandJoint["RingTip"] = "ringTip";
    // Pinky finger joints
    HandJoint["PinkyBase"] = "pinkyToWrist";
    HandJoint["PinkyKnuckle"] = "pinkyKnuckle";
    HandJoint["PinkyMid"] = "pinkyMidJoint";
    HandJoint["PinkyUpper"] = "pinkyUpperJoint";
    HandJoint["PinkyTip"] = "pinkyTip";
})(HandJoint || (exports.HandJoint = HandJoint = {}));
let HandAttacher = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _updateHandAttachment_decorators;
    var HandAttacher = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.targetObject = (__runInitializers(this, _instanceExtraInitializers), this.targetObject);
            this.handSide = this.handSide;
            this.handJoint = this.handJoint;
            this.positionOffset = this.positionOffset;
            this.rotationOffset = this.rotationOffset;
            this.usePositionSmoothing = this.usePositionSmoothing;
            this.positionSmoothSpeed = this.positionSmoothSpeed;
            this.useRotationSmoothing = this.useRotationSmoothing;
            this.rotationSmoothSpeed = this.rotationSmoothSpeed;
            this.updatePositionOnly = this.updatePositionOnly;
            this.updateRotationOnly = this.updateRotationOnly;
            this.hideWhenNotTracked = this.hideWhenNotTracked;
            this.debugMode = this.debugMode;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.wasTracked = false;
        }
        __initialize() {
            super.__initialize();
            this.targetObject = (__runInitializers(this, _instanceExtraInitializers), this.targetObject);
            this.handSide = this.handSide;
            this.handJoint = this.handJoint;
            this.positionOffset = this.positionOffset;
            this.rotationOffset = this.rotationOffset;
            this.usePositionSmoothing = this.usePositionSmoothing;
            this.positionSmoothSpeed = this.positionSmoothSpeed;
            this.useRotationSmoothing = this.useRotationSmoothing;
            this.rotationSmoothSpeed = this.rotationSmoothSpeed;
            this.updatePositionOnly = this.updatePositionOnly;
            this.updateRotationOnly = this.updateRotationOnly;
            this.hideWhenNotTracked = this.hideWhenNotTracked;
            this.debugMode = this.debugMode;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.wasTracked = false;
        }
        /**
         * Called when component wakes up - initialize logger and setup hand tracking
         */
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("HandAttacher", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
            }
            // Use this script's scene object if no target specified
            if (!this.targetObject) {
                this.targetObject = this.sceneObject;
                if (this.enableLogging) {
                    this.logger.info("Using script's own scene object as target");
                }
            }
            this.targetTransform = this.targetObject.getTransform();
            // Set up hand tracking
            this.setupHandTracking();
            if (this.enableLogging) {
                this.logger.info(`Initialized - Hand: ${this.handSide}, Joint: ${this.handJoint}`);
            }
        }
        /**
         * Called every frame
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        updateHandAttachment() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: updateHandAttachment() - Update event");
            }
            this.onUpdate();
        }
        /**
         * Sets up hand tracking with SIK HandInputData
         */
        setupHandTracking() {
            const handInputData = SIK_1.SIK.HandInputData;
            // Get the appropriate hand
            switch (this.handSide) {
                case "left":
                    this.currentHand = handInputData.getHand("left");
                    break;
                case "right":
                    this.currentHand = handInputData.getHand("right");
                    break;
                case "dominant":
                    this.currentHand = handInputData.getDominantHand();
                    break;
                case "nondominant":
                    this.currentHand = handInputData.getNonDominantHand();
                    break;
            }
            if (!this.currentHand) {
                this.logger.error("Failed to get hand reference!");
                return;
            }
            // Set up hand tracking events
            this.currentHand.onHandFound.add(() => {
                if (this.enableLogging) {
                    this.logger.info(`${this.handSide} hand found`);
                }
                if (this.hideWhenNotTracked) {
                    this.targetObject.enabled = true;
                }
            });
            this.currentHand.onHandLost.add(() => {
                if (this.enableLogging) {
                    this.logger.info(`${this.handSide} hand lost`);
                }
                if (this.hideWhenNotTracked) {
                    this.targetObject.enabled = false;
                }
            });
        }
        /**
         * Updates the target object's position and rotation to follow the hand joint
         */
        onUpdate() {
            if (!this.targetObject || !this.currentHand) {
                if (this.enableLogging) {
                    this.logger.warn("Missing target object or current hand");
                }
                return;
            }
            const isTracked = this.currentHand.isTracked();
            // Handle tracking state changes
            if (isTracked !== this.wasTracked) {
                this.wasTracked = isTracked;
                if (this.hideWhenNotTracked) {
                    this.targetObject.enabled = isTracked;
                }
                if (this.enableLogging) {
                    this.logger.info(`Hand tracking ${isTracked ? "started" : "stopped"}`);
                }
            }
            if (!isTracked)
                return;
            // Get the selected joint
            const joint = this.getJoint(this.handJoint);
            if (!joint) {
                if (this.enableLogging) {
                    this.logger.error(`Joint '${this.handJoint}' not found!`);
                }
                return;
            }
            // Verify joint has position
            if (!joint.position) {
                if (this.enableLogging) {
                    this.logger.error(`Joint '${this.handJoint}' has no position!`);
                }
                return;
            }
            if (this.enableLogging) {
                const pos = joint.position;
                this.logger.debug(`Joint pos: (${pos.x.toFixed(2)}, ${pos.y.toFixed(2)}, ${pos.z.toFixed(2)})`);
            }
            // Update position
            if (!this.updateRotationOnly) {
                this.updatePosition(joint);
            }
            // Update rotation
            if (!this.updatePositionOnly) {
                this.updateRotation(joint);
            }
        }
        /**
         * Gets the hand joint object by name
         * @param jointName - Name of the joint to retrieve
         * @returns The joint object or null if not found
         */
        getJoint(jointName) {
            // Map joint string to actual hand joint property
            switch (jointName) {
                case "wrist": return this.currentHand.wrist;
                case "thumbToWrist": return this.currentHand.thumbToWrist;
                case "thumbKnuckle": return this.currentHand.thumbKnuckle;
                case "thumbMidJoint": return this.currentHand.thumbMidJoint;
                case "thumbTip": return this.currentHand.thumbTip;
                case "indexToWrist": return this.currentHand.indexToWrist;
                case "indexKnuckle": return this.currentHand.indexKnuckle;
                case "indexMidJoint": return this.currentHand.indexMidJoint;
                case "indexUpperJoint": return this.currentHand.indexUpperJoint;
                case "indexTip": return this.currentHand.indexTip;
                case "middleToWrist": return this.currentHand.middleToWrist;
                case "middleKnuckle": return this.currentHand.middleKnuckle;
                case "middleMidJoint": return this.currentHand.middleMidJoint;
                case "middleUpperJoint": return this.currentHand.middleUpperJoint;
                case "middleTip": return this.currentHand.middleTip;
                case "ringToWrist": return this.currentHand.ringToWrist;
                case "ringKnuckle": return this.currentHand.ringKnuckle;
                case "ringMidJoint": return this.currentHand.ringMidJoint;
                case "ringUpperJoint": return this.currentHand.ringUpperJoint;
                case "ringTip": return this.currentHand.ringTip;
                case "pinkyToWrist": return this.currentHand.pinkyToWrist;
                case "pinkyKnuckle": return this.currentHand.pinkyKnuckle;
                case "pinkyMidJoint": return this.currentHand.pinkyMidJoint;
                case "pinkyUpperJoint": return this.currentHand.pinkyUpperJoint;
                case "pinkyTip": return this.currentHand.pinkyTip;
                default: return null;
            }
        }
        /**
         * Updates the target object's position to follow the joint with optional smoothing
         * @param joint - The hand joint to follow
         */
        updatePosition(joint) {
            // Get joint world position
            const jointPosition = joint.position;
            if (this.enableLogging) {
                this.logger.debug(`Setting position from joint: (${jointPosition.x.toFixed(2)}, ${jointPosition.y.toFixed(2)}, ${jointPosition.z.toFixed(2)})`);
            }
            // Apply offset in joint's local space
            const jointRotation = joint.rotation;
            const rotatedOffset = jointRotation.multiplyVec3(this.positionOffset);
            const targetPosition = jointPosition.add(rotatedOffset);
            // Get current position
            const currentPosition = this.targetTransform.getWorldPosition();
            // Apply smoothing if enabled
            let finalPosition;
            if (this.usePositionSmoothing) {
                const deltaTime = getDeltaTime();
                const t = Math.min(1.0, this.positionSmoothSpeed * deltaTime);
                finalPosition = vec3.lerp(currentPosition, targetPosition, t);
            }
            else {
                finalPosition = targetPosition;
            }
            if (this.enableLogging) {
                this.logger.debug(`Final position: (${finalPosition.x.toFixed(2)}, ${finalPosition.y.toFixed(2)}, ${finalPosition.z.toFixed(2)})`);
            }
            this.targetTransform.setWorldPosition(finalPosition);
        }
        /**
         * Updates the target object's rotation to match the joint with optional smoothing
         * @param joint - The hand joint to follow
         */
        updateRotation(joint) {
            // Get joint world rotation
            const jointRotation = joint.rotation;
            // Apply rotation offset
            const offsetQuat = quat.fromEulerAngles(this.rotationOffset.x * MathUtils_1.MathUtils.DegToRad, this.rotationOffset.y * MathUtils_1.MathUtils.DegToRad, this.rotationOffset.z * MathUtils_1.MathUtils.DegToRad);
            const targetRotation = jointRotation.multiply(offsetQuat);
            // Get current rotation
            const currentRotation = this.targetTransform.getWorldRotation();
            // Apply smoothing if enabled
            let finalRotation;
            if (this.useRotationSmoothing) {
                const deltaTime = getDeltaTime();
                const t = Math.min(1.0, this.rotationSmoothSpeed * deltaTime);
                finalRotation = quat.slerp(currentRotation, targetRotation, t);
            }
            else {
                finalRotation = targetRotation;
            }
            this.targetTransform.setWorldRotation(finalRotation);
        }
        /**
         * Public API: Change the hand being tracked
         * @param side - Hand side ("left", "right", "dominant", "nondominant")
         */
        setHand(side) {
            this.handSide = side;
            this.setupHandTracking();
            if (this.enableLogging) {
                this.logger.info(`Hand changed to: ${side}`);
            }
        }
        /**
         * Public API: Change the joint being tracked
         * @param joint - Joint name (e.g., "wrist", "indexTip", "thumbTip")
         */
        setJoint(joint) {
            this.handJoint = joint;
            if (this.enableLogging) {
                this.logger.info(`Joint changed to: ${joint}`);
            }
        }
        /**
         * Public API: Set position offset from the joint
         * @param offset - Position offset vector
         */
        setPositionOffset(offset) {
            this.positionOffset = offset;
            if (this.enableLogging) {
                this.logger.info(`Position offset set to: (${offset.x}, ${offset.y}, ${offset.z})`);
            }
        }
        /**
         * Public API: Set rotation offset from the joint
         * @param offset - Rotation offset in degrees (euler angles)
         */
        setRotationOffset(offset) {
            this.rotationOffset = offset;
            if (this.enableLogging) {
                this.logger.info(`Rotation offset set to: (${offset.x}, ${offset.y}, ${offset.z})`);
            }
        }
        /**
         * Public API: Check if the hand is currently being tracked
         * @returns True if hand is tracked, false otherwise
         */
        isHandTracked() {
            return this.currentHand ? this.currentHand.isTracked() : false;
        }
    };
    __setFunctionName(_classThis, "HandAttacher");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _updateHandAttachment_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _updateHandAttachment_decorators, { kind: "method", name: "updateHandAttachment", static: false, private: false, access: { has: obj => "updateHandAttachment" in obj, get: obj => obj.updateHandAttachment }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        HandAttacher = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return HandAttacher = _classThis;
})();
exports.HandAttacher = HandAttacher;
//# sourceMappingURL=HandAttacher.js.map