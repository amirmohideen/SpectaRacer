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
exports.CarHandleSteering = void 0;
var __selfType = requireType("./CarHandleSteering");
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
 * Car Handle Steering — maps handle local X to car Y rotation while the handle is moving.
 * If the handle is held stationary beyond a timeout, car returns to its base rotation.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let CarHandleSteering = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var CarHandleSteering = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.handle = (__runInitializers(this, _instanceExtraInitializers), this.handle);
            this.maxSteerAngle = this.maxSteerAngle;
            this.followSpeed = this.followSpeed;
            this.stationaryTimeout = this.stationaryTimeout;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.currentOffsetY = 0;
            this.targetOffsetY = 0;
            this.prevHandleX = 0;
            this.smoothedVelocity = 0;
            this.timeSinceStationary = 0;
            this.DEG_TO_RAD = Math.PI / 180;
            // Velocity below which the handle is considered stationary (internal, in units/sec)
            this.STATIONARY_SPEED = 0.5;
            this.VELOCITY_SMOOTH = 0.15;
        }
        __initialize() {
            super.__initialize();
            this.handle = (__runInitializers(this, _instanceExtraInitializers), this.handle);
            this.maxSteerAngle = this.maxSteerAngle;
            this.followSpeed = this.followSpeed;
            this.stationaryTimeout = this.stationaryTimeout;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.currentOffsetY = 0;
            this.targetOffsetY = 0;
            this.prevHandleX = 0;
            this.smoothedVelocity = 0;
            this.timeSinceStationary = 0;
            this.DEG_TO_RAD = Math.PI / 180;
            // Velocity below which the handle is considered stationary (internal, in units/sec)
            this.STATIONARY_SPEED = 0.5;
            this.VELOCITY_SMOOTH = 0.15;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("CarHandleSteering", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            if (!this.handle) {
                this.logger.warn("handle is not assigned");
                return;
            }
            this.startLocalRotation = this.sceneObject.getTransform().getLocalRotation();
            this.prevHandleX = this.handle.getTransform().getLocalPosition().x;
            this.smoothedVelocity = 0;
            // Start as if already timed out so the car sits at base rotation immediately
            this.timeSinceStationary = this.stationaryTimeout;
            this.targetOffsetY = 0;
            this.logger.info("Base rotation recorded. Max steer: ±" + this.maxSteerAngle + "° | Timeout: " + this.stationaryTimeout + "s");
        }
        onUpdate() {
            if (!this.handle || !this.startLocalRotation)
                return;
            const dt = Math.max(getDeltaTime(), 0.0001);
            const currentX = this.handle.getTransform().getLocalPosition().x;
            // --- Smoothed velocity ---
            const rawVelocity = (currentX - this.prevHandleX) / dt;
            this.smoothedVelocity = this.smoothedVelocity + (rawVelocity - this.smoothedVelocity) * this.VELOCITY_SMOOTH;
            this.prevHandleX = currentX;
            const speed = Math.abs(this.smoothedVelocity);
            if (speed > this.STATIONARY_SPEED) {
                // Handle is moving — track its X position and reset the idle timer
                this.timeSinceStationary = 0;
                this.targetOffsetY = Math.max(-this.maxSteerAngle, Math.min(this.maxSteerAngle, currentX));
            }
            else {
                // Handle is stationary — accumulate idle time
                this.timeSinceStationary += dt;
                if (this.timeSinceStationary >= this.stationaryTimeout) {
                    // Timeout reached — drive car back to base rotation
                    this.targetOffsetY = 0;
                }
                // Before timeout: keep targetOffsetY unchanged (hold the current angle)
            }
            // --- Lerp and apply ---
            const t = Math.min(this.followSpeed * dt, 1);
            this.currentOffsetY = this.currentOffsetY + (this.targetOffsetY - this.currentOffsetY) * t;
            const offsetRot = quat.fromEulerAngles(0, this.currentOffsetY * this.DEG_TO_RAD, 0);
            this.sceneObject.getTransform().setLocalRotation(this.startLocalRotation.multiply(offsetRot));
            if (this.enableLogging) {
                this.logger.debug(`x: ${currentX.toFixed(2)}  vel: ${this.smoothedVelocity.toFixed(2)}  idle: ${this.timeSinceStationary.toFixed(2)}s  target: ${this.targetOffsetY.toFixed(1)}°  car: ${this.currentOffsetY.toFixed(1)}°`);
            }
        }
    };
    __setFunctionName(_classThis, "CarHandleSteering");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        CarHandleSteering = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return CarHandleSteering = _classThis;
})();
exports.CarHandleSteering = CarHandleSteering;
//# sourceMappingURL=CarHandleSteering.js.map