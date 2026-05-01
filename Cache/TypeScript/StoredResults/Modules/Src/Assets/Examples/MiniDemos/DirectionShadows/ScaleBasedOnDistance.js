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
exports.ScaleBasedOnDistance = void 0;
var __selfType = requireType("./ScaleBasedOnDistance");
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
 * Scale Based On Distance component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let ScaleBasedOnDistance = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _update_decorators;
    var ScaleBasedOnDistance = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.startObject = (__runInitializers(this, _instanceExtraInitializers), this.startObject);
            this.endObject = this.endObject;
            this.minScale = this.minScale;
            this.maxScale = this.maxScale;
            this.objectToScale = this.objectToScale;
            this.closestIsBigger = this.closestIsBigger;
            this.minDistance = this.minDistance;
            this.maxDistance = this.maxDistance;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.lastScale = -1;
        }
        __initialize() {
            super.__initialize();
            this.startObject = (__runInitializers(this, _instanceExtraInitializers), this.startObject);
            this.endObject = this.endObject;
            this.minScale = this.minScale;
            this.maxScale = this.maxScale;
            this.objectToScale = this.objectToScale;
            this.closestIsBigger = this.closestIsBigger;
            this.minDistance = this.minDistance;
            this.maxDistance = this.maxDistance;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.lastScale = -1;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("ScaleBasedOnDistance", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this.init();
        }
        init() {
            if (!this.startObject) {
                this.logger.error("Start Object is not set");
                return;
            }
            if (!this.endObject) {
                this.logger.error("End Object is not set");
                return;
            }
            if (!this.objectToScale) {
                this.logger.error("Object To Scale is not set");
                return;
            }
            if (this.minScale > this.maxScale) {
                this.logger.warn("Min Scale is greater than Max Scale. Swapping values.");
                const temp = this.minScale;
                this.minScale = this.maxScale;
                this.maxScale = temp;
            }
            if (this.minDistance > this.maxDistance) {
                this.logger.warn("Min Distance is greater than Max Distance. Swapping values.");
                const temp = this.minDistance;
                this.minDistance = this.maxDistance;
                this.maxDistance = temp;
            }
        }
        update() {
            if (!this.startObject || !this.endObject || !this.objectToScale) {
                return;
            }
            const distance = this.calculateDistance(this.startObject, this.endObject);
            const scale = this.calculateScale(distance);
            if (Math.abs(scale - this.lastScale) > 0.001) {
                this.lastScale = scale;
                const uniformScale = new vec3(scale, scale, scale);
                this.objectToScale.getTransform().setLocalScale(uniformScale);
            }
        }
        calculateDistance(obj1, obj2) {
            const pos1 = obj1.getTransform().getWorldPosition();
            const pos2 = obj2.getTransform().getWorldPosition();
            const dx = pos2.x - pos1.x;
            const dy = pos2.y - pos1.y;
            const dz = pos2.z - pos1.z;
            return Math.sqrt(dx * dx + dy * dy + dz * dz);
        }
        calculateScale(distance) {
            const clampedDistance = Math.max(this.minDistance, Math.min(this.maxDistance, distance));
            const normalizedDistance = (clampedDistance - this.minDistance) / (this.maxDistance - this.minDistance);
            let scale;
            if (this.closestIsBigger) {
                scale = this.maxScale - normalizedDistance * (this.maxScale - this.minScale);
            }
            else {
                scale = this.minScale + normalizedDistance * (this.maxScale - this.minScale);
            }
            return scale;
        }
    };
    __setFunctionName(_classThis, "ScaleBasedOnDistance");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _update_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _update_decorators, { kind: "method", name: "update", static: false, private: false, access: { has: obj => "update" in obj, get: obj => obj.update }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ScaleBasedOnDistance = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ScaleBasedOnDistance = _classThis;
})();
exports.ScaleBasedOnDistance = ScaleBasedOnDistance;
//# sourceMappingURL=ScaleBasedOnDistance.js.map