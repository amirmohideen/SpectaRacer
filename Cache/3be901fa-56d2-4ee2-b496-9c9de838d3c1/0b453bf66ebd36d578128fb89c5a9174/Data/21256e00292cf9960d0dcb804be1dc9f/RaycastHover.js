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
exports.RaycastHoverTS = void 0;
var __selfType = requireType("./RaycastHover");
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
 * Raycast Hover TS component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const LSTween_1 = require("LSTween.lspkg/Examples/Scripts/LSTween");
let RaycastHoverTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _updateRaycast_decorators;
    var RaycastHoverTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.rayStart = (__runInitializers(this, _instanceExtraInitializers), this.rayStart);
            this.rayEnd = this.rayEnd;
            this.targetPanel = this.targetPanel;
            this.targetCollider = this.targetCollider;
            this.animationDuration = this.animationDuration;
            this.normalScale = this.normalScale;
            this.expandedScale = this.expandedScale;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isHovering = false;
            this.lastHitName = "";
        }
        __initialize() {
            super.__initialize();
            this.rayStart = (__runInitializers(this, _instanceExtraInitializers), this.rayStart);
            this.rayEnd = this.rayEnd;
            this.targetPanel = this.targetPanel;
            this.targetCollider = this.targetCollider;
            this.animationDuration = this.animationDuration;
            this.normalScale = this.normalScale;
            this.expandedScale = this.expandedScale;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isHovering = false;
            this.lastHitName = "";
        }
        onAwake() {
            this.logger = new Logger_1.Logger("RaycastHoverTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            if (!this.rayStart || !this.rayEnd) {
                this.logger.error("Ray start and end points must be defined");
                return;
            }
            if (!this.targetPanel) {
                this.logger.error("Target panel must be defined");
                return;
            }
            if (!this.targetCollider) {
                this.logger.error("Target collider must be defined");
                return;
            }
        }
        updateRaycast() {
            const globalProbe = Physics.createGlobalProbe();
            const self = this;
            globalProbe.rayCast(this.rayStart.getTransform().getWorldPosition(), this.rayEnd.getTransform().getWorldPosition(), function (hit) {
                if (hit) {
                    const hitObject = hit.collider.getSceneObject();
                    const hitName = hitObject.name;
                    const isTargetCollider = hitObject === self.targetCollider || hitName === self.targetCollider.name;
                    if (isTargetCollider && !self.isHovering) {
                        self.onRaycastEnter();
                        self.lastHitName = hitName;
                    }
                    else if (!isTargetCollider && self.isHovering) {
                        self.onRaycastExit();
                    }
                }
                else if (self.isHovering) {
                    self.onRaycastExit();
                }
            });
        }
        onRaycastEnter() {
            this.logger.info("Raycast entered target: " + this.targetCollider.name);
            this.isHovering = true;
            this.scaleUp();
        }
        onRaycastExit() {
            this.logger.info("Raycast exited target: " + this.lastHitName);
            this.isHovering = false;
            this.scaleDown();
        }
        scaleUp() {
            LSTween_1.LSTween.scaleToWorld(this.targetPanel.getTransform(), this.expandedScale, this.animationDuration).start();
        }
        scaleDown() {
            LSTween_1.LSTween.scaleToWorld(this.targetPanel.getTransform(), this.normalScale, this.animationDuration).start();
        }
    };
    __setFunctionName(_classThis, "RaycastHoverTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _updateRaycast_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _updateRaycast_decorators, { kind: "method", name: "updateRaycast", static: false, private: false, access: { has: obj => "updateRaycast" in obj, get: obj => obj.updateRaycast }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        RaycastHoverTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return RaycastHoverTS = _classThis;
})();
exports.RaycastHoverTS = RaycastHoverTS;
//# sourceMappingURL=RaycastHover.js.map