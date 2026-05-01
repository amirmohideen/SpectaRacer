"use strict";
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
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.DebugView = void 0;
var __selfType = requireType("./DebugView");
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
const DebugViewPrefab_1 = require("./DebugViewPrefab");
let DebugView = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var DebugView = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.debugViewPrefab = this.debugViewPrefab;
            this.renderTarget = this.renderTarget;
        }
        __initialize() {
            super.__initialize();
            this.debugViewPrefab = this.debugViewPrefab;
            this.renderTarget = this.renderTarget;
        }
        setTrackedData(data) {
            this.viewInstance.liveDataText.text = data;
        }
        toggleVisibility() {
            const container = this.viewInstance.contentContainer;
            container.enabled = !container.enabled;
        }
        onAwake() {
            this.viewInstance = this.debugViewPrefab.instantiate(this.getSceneObject()).getComponent(DebugViewPrefab_1.DebugViewPrefab.getTypeName());
            for (const child of flatSubtree(this.viewInstance.getSceneObject())) {
                child.layer = this.getSceneObject().layer;
            }
            this.createEvent("TouchStartEvent").bind(ev => {
                const screenPos = ev.getTouchPosition();
                if (this.viewInstance.toggleButton.containsScreenPoint(screenPos)) {
                    this.toggleVisibility();
                }
            });
            this.toggleVisibility();
        }
        bindCamera(camera) {
            camera.renderTarget = this.renderTarget;
            const control = this.renderTarget.control;
            if (global.scene.liveOverlayTarget) {
                control.clearColorOption = ClearColorOption.CustomTexture;
                control.inputTexture = global.scene.liveOverlayTarget;
            }
            else {
                control.clearColorOption = ClearColorOption.Background;
            }
            global.scene.liveOverlayTarget = this.renderTarget;
        }
        static getInstance() {
            if (DebugView._instance) {
                return DebugView._instance;
            }
            const layerSet = LayerSet.makeUnique();
            const cameraObject = global.scene.createSceneObject("DebugViewCamera");
            cameraObject.layer = layerSet;
            const camera = cameraObject.createComponent("Camera");
            camera.type = Camera.Type.Orthographic;
            camera.renderLayer = layerSet;
            camera.renderOrder = 1337;
            camera.near = -1;
            camera.far = 200;
            DebugView._instance = cameraObject.createComponent(DebugView.getTypeName());
            DebugView._instance.bindCamera(camera);
            return DebugView._instance;
        }
    };
    __setFunctionName(_classThis, "DebugView");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        DebugView = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
    })();
    _classThis._instance = null;
    (() => {
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return DebugView = _classThis;
})();
exports.DebugView = DebugView;
function* flatSubtree(root) {
    yield root;
    for (const child of root.children) {
        yield* flatSubtree(child);
    }
}
//# sourceMappingURL=DebugView.js.map