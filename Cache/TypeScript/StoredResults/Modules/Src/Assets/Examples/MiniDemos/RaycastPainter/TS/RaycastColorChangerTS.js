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
exports.RaycastColorChangerTS = void 0;
var __selfType = requireType("./RaycastColorChangerTS");
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
 * Raycast Color Changer TS component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let RaycastColorChangerTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onUpdate_decorators;
    var RaycastColorChangerTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.playerCamera = (__runInitializers(this, _instanceExtraInitializers), this.playerCamera);
            this.raycastDistance = this.raycastDistance;
            this.paintablePattern = this.paintablePattern;
            this.continuousPainting = this.continuousPainting;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isPainting = false;
            this.touchPosition = new vec2(0.5, 0.5);
        }
        __initialize() {
            super.__initialize();
            this.playerCamera = (__runInitializers(this, _instanceExtraInitializers), this.playerCamera);
            this.raycastDistance = this.raycastDistance;
            this.paintablePattern = this.paintablePattern;
            this.continuousPainting = this.continuousPainting;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isPainting = false;
            this.touchPosition = new vec2(0.5, 0.5);
        }
        onAwake() {
            this.logger = new Logger_1.Logger("RaycastColorChangerTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this.createEvent("TouchStartEvent").bind(this.onTouchStart.bind(this));
            this.createEvent("TouchMoveEvent").bind(this.onTouchMove.bind(this));
            this.createEvent("TouchEndEvent").bind(this.onTouchEnd.bind(this));
        }
        onTouchStart(eventData) {
            this.touchPosition = eventData.getTouchPosition();
            this.startPainting();
        }
        onTouchMove(eventData) {
            this.touchPosition = eventData.getTouchPosition();
        }
        onTouchEnd(eventData) {
            if (this.continuousPainting) {
                this.stopPainting();
            }
        }
        onUpdate() {
            if (!this.isPainting)
                return;
            const camera = this.getCamera();
            if (!camera)
                return;
            const rayDir = this.screenPointToWorldDirection(camera, this.touchPosition);
            const rayOrigin = camera.getTransform().getWorldPosition();
            const globalProbe = Physics.createGlobalProbe();
            const self = this;
            globalProbe.rayCast(rayOrigin, rayOrigin.add(rayDir.uniformScale(this.raycastDistance)), (hit) => {
                if (hit) {
                    const hitObject = hit.collider.getSceneObject();
                    if (self.isPaintableObject(hitObject)) {
                        self.changeMaterialColor(hitObject);
                        if (!self.continuousPainting) {
                            self.stopPainting();
                        }
                    }
                }
            });
        }
        startPainting() {
            this.isPainting = true;
        }
        stopPainting() {
            this.isPainting = false;
        }
        changeMaterialColor(hitObject) {
            const objectRenderer = hitObject.getComponent("Component.RenderMeshVisual");
            if (objectRenderer) {
                const randomColor = new vec4(Math.random(), Math.random(), Math.random(), 1.0);
                try {
                    const material = objectRenderer.getMaterial();
                    if (material) {
                        if (material.mainPass) {
                            material.mainPass.baseColor = randomColor;
                            this.logger.info("Changed color of object: " + hitObject.name);
                        }
                    }
                    else {
                        this.logger.warn("Could not access material for " + hitObject.name);
                    }
                }
                catch (e) {
                    this.logger.error("Error changing material color: " + e);
                    objectRenderer.baseColor = randomColor;
                }
            }
            else {
                this.logger.warn("No renderer component found on object: " + hitObject.name);
            }
        }
        isPaintableObject(obj) {
            const objName = obj.name.toLowerCase();
            const pattern = this.paintablePattern.toLowerCase();
            return objName.includes(pattern);
        }
        getCamera() {
            if (this.playerCamera) {
                return this.playerCamera;
            }
            return this.getSceneObject().getComponent("Camera") || null;
        }
        screenPointToWorldDirection(camera, screenPoint) {
            const cameraTransform = camera.getTransform();
            const ndcX = screenPoint.x * 2 - 1;
            const ndcY = 1 - screenPoint.y * 2;
            const forward = cameraTransform.forward;
            const right = cameraTransform.right;
            const up = cameraTransform.up;
            const direction = forward.add(right.uniformScale(ndcX).add(up.uniformScale(ndcY))).normalize();
            return direction;
        }
    };
    __setFunctionName(_classThis, "RaycastColorChangerTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        RaycastColorChangerTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return RaycastColorChangerTS = _classThis;
})();
exports.RaycastColorChangerTS = RaycastColorChangerTS;
//# sourceMappingURL=RaycastColorChangerTS.js.map