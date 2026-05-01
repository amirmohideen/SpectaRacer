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
exports.DotProductDemoTS = void 0;
var __selfType = requireType("./DotProductDemoTS");
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
 * Dot Product Demo TS component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let DotProductDemoTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onUpdate_decorators;
    var DotProductDemoTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.reference = (__runInitializers(this, _instanceExtraInitializers), this.reference);
            this.referenceMaterial = this.referenceMaterial;
            this.thresholdDot = this.thresholdDot;
            this.thresholdDotInDegrees = this.thresholdDotInDegrees;
            this.camera = this.camera;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.reference = (__runInitializers(this, _instanceExtraInitializers), this.reference);
            this.referenceMaterial = this.referenceMaterial;
            this.thresholdDot = this.thresholdDot;
            this.thresholdDotInDegrees = this.thresholdDotInDegrees;
            this.camera = this.camera;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("DotProductDemoTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onUpdate() {
            this.changeColorIfNotFacing();
        }
        changeColorIfNotFacing() {
            if (!this.camera)
                return;
            const cameraPosition = this.camera.getTransform().getWorldPosition();
            const objectPosition = this.reference.getTransform().getWorldPosition();
            const directionToObject = objectPosition.sub(cameraPosition).normalize();
            const cameraForward = this.camera.getTransform().forward.uniformScale(-1);
            const horizontalDirectionToObject = new vec3(directionToObject.x, 0, directionToObject.z).normalize();
            const horizontalCameraForward = new vec3(cameraForward.x, 0, cameraForward.z).normalize();
            const horizontalDotProduct = horizontalDirectionToObject.dot(horizontalCameraForward);
            const horizontalAngleInDegrees = Math.acos(Math.max(-1, Math.min(1, horizontalDotProduct))) * (180 / Math.PI);
            this.logger.info("Horizontal angle between camera and object: " + horizontalAngleInDegrees.toFixed(2) + "°");
            if (horizontalAngleInDegrees > this.thresholdDotInDegrees) {
                this.referenceMaterial.mainPass.baseColor = new vec4(1, 0, 0, 1);
            }
            else {
                this.referenceMaterial.mainPass.baseColor = new vec4(0, 0, 1, 1);
            }
        }
        signedAngle(vectorA, vectorB, axis) {
            const angle = this.angle(vectorA, vectorB);
            const cross = this.crossProduct(vectorA, vectorB);
            const sign = Math.sign(axis.dot(cross));
            return angle * sign;
        }
        dotProduct(vectorA, vectorB) {
            return vectorA.dot(vectorB);
        }
        crossProduct(vectorA, vectorB) {
            return vectorA.cross(vectorB);
        }
        angle(vectorA, vectorB) {
            const normalizedA = vectorA.normalize();
            const normalizedB = vectorB.normalize();
            const dot = normalizedA.dot(normalizedB);
            const clampedDot = Math.max(-1, Math.min(1, dot));
            return Math.acos(clampedDot) * (180 / Math.PI);
        }
        reflect(incomingVector, normal) {
            const normalizedNormal = normal.normalize();
            const dotProduct = incomingVector.dot(normalizedNormal);
            return incomingVector.sub(normalizedNormal.uniformScale(2 * dotProduct));
        }
        project(vectorA, vectorB) {
            const normalizedB = vectorB.normalize();
            const projectionLength = vectorA.dot(normalizedB);
            return normalizedB.uniformScale(projectionLength);
        }
        projectOnPlane(vectorA, normal) {
            const projectionOnNormal = this.project(vectorA, normal);
            return vectorA.sub(projectionOnNormal);
        }
    };
    __setFunctionName(_classThis, "DotProductDemoTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        DotProductDemoTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return DotProductDemoTS = _classThis;
})();
exports.DotProductDemoTS = DotProductDemoTS;
//# sourceMappingURL=DotProductDemoTS.js.map