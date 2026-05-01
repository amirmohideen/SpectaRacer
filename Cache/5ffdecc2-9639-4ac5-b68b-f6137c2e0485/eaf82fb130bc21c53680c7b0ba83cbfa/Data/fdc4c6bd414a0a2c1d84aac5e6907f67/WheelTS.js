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
exports.BillboardTS_Modified = void 0;
var __selfType = requireType("./WheelTS");
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
 * Modified from BillboardTS (Solvers.lspkg): tracks target in the XY plane (Z-axis rotation)
 * instead of the XZ plane (Y-axis rotation).
 */
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let BillboardTS_Modified = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var BillboardTS_Modified = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.lookAway = (__runInitializers(this, _instanceExtraInitializers), this.lookAway);
            this.target = this.target;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetRotation = new quat(0, 0, 0, 1);
            this._lookDir = new vec3(0, 0, 0);
        }
        __initialize() {
            super.__initialize();
            this.lookAway = (__runInitializers(this, _instanceExtraInitializers), this.lookAway);
            this.target = this.target;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._targetRotation = new quat(0, 0, 0, 1);
            this._lookDir = new vec3(0, 0, 0);
        }
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("BillboardTS_Modified", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("BillboardTS_Modified Initialization");
                this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
            }
        }
        onStart() {
            this.billboarding(); // or manually set a desired initial rotation
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onStart() - Scene started");
            }
        }
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            this.billboarding();
        }
        billboarding() {
            if (!this.target)
                return;
            const myPosition = this.sceneObject.getTransform().getWorldPosition();
            const targetPosition = this.target.getTransform().getWorldPosition();
            // Project onto the XY plane (zero out Z) so only X and Y offsets drive rotation
            this._lookDir = new vec3(targetPosition.x - myPosition.x, targetPosition.y - myPosition.y, 0).normalize();
            if (this.lookAway) {
                this._lookDir.x *= -1;
                this._lookDir.y *= -1;
            }
            // Angle in the XY plane; rotate around the Z axis
            const angle = Math.atan2(this._lookDir.y, this._lookDir.x);
            this._targetRotation = quat.fromEulerAngles(0, 0, angle);
            const currentRotation = this.sceneObject.getTransform().getWorldRotation();
            const newRotation = quat.slerp(currentRotation, this._targetRotation, getDeltaTime() * 5);
            this.sceneObject.getTransform().setWorldRotation(newRotation);
        }
    };
    __setFunctionName(_classThis, "BillboardTS_Modified");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        BillboardTS_Modified = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return BillboardTS_Modified = _classThis;
})();
exports.BillboardTS_Modified = BillboardTS_Modified;
//# sourceMappingURL=WheelTS.js.map