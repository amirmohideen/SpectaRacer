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
exports.ScaleOverDistanceLinearTS = void 0;
var __selfType = requireType("./ScaleOverDistanceLinear");
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
 * Linear scaling based on distance to target. Automatically adjusts object scale using linear
 * interpolation between min/max distance thresholds, with configurable scale range and real-time
 * distance calculation for distance-based size adjustments and depth perception effects.
 */
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let ScaleOverDistanceLinearTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var ScaleOverDistanceLinearTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.minDistance = this.minDistance;
            this.maxDistance = this.maxDistance;
            this.minScale = this.minScale;
            this.maxScale = this.maxScale;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._distance = 0;
        }
        __initialize() {
            super.__initialize();
            this.target = (__runInitializers(this, _instanceExtraInitializers), this.target);
            this.minDistance = this.minDistance;
            this.maxDistance = this.maxDistance;
            this.minScale = this.minScale;
            this.maxScale = this.maxScale;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._distance = 0;
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("ScaleOverDistanceLinearTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("ScaleOverDistanceLinearTS Initialization");
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
                    this.logger.warn("No target set for ScaleOverDistanceLinear - please set a target object");
                }
                else {
                    print("No target set for ScaleOverDistanceLinear - please set a target object");
                }
            }
        }
        /**
         * Called every frame to update scale based on distance
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            if (!this.target)
                return;
            this.updateScale();
        }
        /**
         * Update the scale based on distance to target.
         */
        updateScale() {
            // Get positions
            const myPosition = this.sceneObject.getTransform().getWorldPosition();
            const targetPosition = this.target.getTransform().getWorldPosition();
            // Calculate distance
            this._distance = myPosition.distance(targetPosition);
            // Calculate scale value based on distance - clamp and remap
            const clampedDist = Math.max(this.minDistance, Math.min(this.maxDistance, this._distance));
            const t = (clampedDist - this.minDistance) / (this.maxDistance - this.minDistance);
            const scale = this.minScale + t * (this.maxScale - this.minScale);
            // Apply uniform scale
            this.sceneObject.getTransform().setLocalScale(new vec3(scale, scale, scale));
        }
    };
    __setFunctionName(_classThis, "ScaleOverDistanceLinearTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ScaleOverDistanceLinearTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ScaleOverDistanceLinearTS = _classThis;
})();
exports.ScaleOverDistanceLinearTS = ScaleOverDistanceLinearTS;
//# sourceMappingURL=ScaleOverDistanceLinear.js.map