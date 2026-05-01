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
exports.HandleReturnToStart = void 0;
var __selfType = requireType("./HandleReturnToStart");
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
 * Handle Return To Start — snaps a draggable handle back to its original local position on release.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let HandleReturnToStart = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var HandleReturnToStart = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.manipulationComponent = (__runInitializers(this, _instanceExtraInitializers), this.manipulationComponent);
            this.returnSpeed = this.returnSpeed;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isReturning = false;
        }
        __initialize() {
            super.__initialize();
            this.manipulationComponent = (__runInitializers(this, _instanceExtraInitializers), this.manipulationComponent);
            this.returnSpeed = this.returnSpeed;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isReturning = false;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("HandleReturnToStart", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.startLocalPosition = this.sceneObject.getTransform().getLocalPosition();
            this.logger.info(`Start position recorded: ${this.startLocalPosition.x.toFixed(3)}, ${this.startLocalPosition.y.toFixed(3)}, ${this.startLocalPosition.z.toFixed(3)}`);
            if (!this.manipulationComponent) {
                this.logger.warn("manipulationComponent is not assigned");
                return;
            }
            this.manipulationComponent.onManipulationEnd.add(() => {
                this.isReturning = true;
                this.logger.info("Manipulation ended — returning to start position");
            });
            this.manipulationComponent.onManipulationStart.add(() => {
                this.isReturning = false;
                this.logger.info("Manipulation started — return cancelled");
            });
        }
        onUpdate() {
            if (!this.isReturning)
                return;
            const transform = this.sceneObject.getTransform();
            const current = transform.getLocalPosition();
            if (this.returnSpeed <= 0) {
                transform.setLocalPosition(this.startLocalPosition);
                this.isReturning = false;
                return;
            }
            const dist = current.distance(this.startLocalPosition);
            if (dist < 0.0005) {
                transform.setLocalPosition(this.startLocalPosition);
                this.isReturning = false;
                this.logger.info("Handle returned to start position");
                return;
            }
            const t = Math.min(this.returnSpeed * getDeltaTime(), 1);
            transform.setLocalPosition(vec3.lerp(current, this.startLocalPosition, t));
        }
    };
    __setFunctionName(_classThis, "HandleReturnToStart");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        HandleReturnToStart = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return HandleReturnToStart = _classThis;
})();
exports.HandleReturnToStart = HandleReturnToStart;
//# sourceMappingURL=HandleReturnToStart.js.map