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
exports.SimpleRaycastTS = void 0;
var __selfType = requireType("./SimpleRaycastTS");
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
 * Simple Raycast TS component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let SimpleRaycastTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _updateObjectMovement_decorators;
    var SimpleRaycastTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.rayStart = (__runInitializers(this, _instanceExtraInitializers), this.rayStart);
            this.rayEnd = this.rayEnd;
            this.endPointAttachment = this.endPointAttachment;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.rayStart = (__runInitializers(this, _instanceExtraInitializers), this.rayStart);
            this.rayEnd = this.rayEnd;
            this.endPointAttachment = this.endPointAttachment;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("SimpleRaycastTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this.logger.debug("EndPointAttachment object defined: " + (this.endPointAttachment !== undefined));
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.logger.debug("EndPointAttachment object at start: " + (this.endPointAttachment !== undefined));
            if (this.endPointAttachment) {
                this.logger.debug("EndPointAttachment object name: " + this.endPointAttachment.name);
            }
        }
        updateObjectMovement() {
            const globalProbe = Physics.createGlobalProbe();
            this.logger.debug("EndPointAttachment object before raycast: " + (this.endPointAttachment !== undefined));
            const self = this;
            globalProbe.rayCast(this.rayStart.getTransform().getWorldPosition(), this.rayEnd.getTransform().getWorldPosition(), function (hit) {
                if (hit) {
                    const position = hit.position;
                    self.logger.info("Raycast hit: " + hit.collider.getSceneObject().name);
                    if (self.endPointAttachment) {
                        self.logger.debug("EndPointAttachment exists in callback, setting position");
                        self.endPointAttachment.getTransform().setWorldPosition(position);
                    }
                    else {
                        self.logger.error("EndPointAttachment is undefined in callback");
                    }
                }
            });
        }
    };
    __setFunctionName(_classThis, "SimpleRaycastTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _updateObjectMovement_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _updateObjectMovement_decorators, { kind: "method", name: "updateObjectMovement", static: false, private: false, access: { has: obj => "updateObjectMovement" in obj, get: obj => obj.updateObjectMovement }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        SimpleRaycastTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return SimpleRaycastTS = _classThis;
})();
exports.SimpleRaycastTS = SimpleRaycastTS;
//# sourceMappingURL=SimpleRaycastTS.js.map