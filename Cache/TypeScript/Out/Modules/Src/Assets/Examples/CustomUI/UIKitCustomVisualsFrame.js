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
exports.UIKitCustomVisualsFrame = void 0;
var __selfType = requireType("./UIKitCustomVisualsFrame");
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
 * UIKitCustomVisualsFrame – applies a selectable gradient style to a UIKit Frame component.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Frame_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Frame/Frame");
const RoundedRectangle_1 = require("SpectaclesUIKit.lspkg/Scripts/Visuals/RoundedRectangle/RoundedRectangle");
// ─── Style: Candy ─────────────────────────────────────────────────────────────
// Hot-pink → magenta → violet → sky-blue linear gradient
const CANDY_GRAD = {
    enabled: true, type: "Linear",
    start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(1.00, 0.42, 0.71, 1.0) },
    stop1: { enabled: true, percent: 0.35, color: new vec4(0.88, 0.38, 0.82, 1.0) },
    stop2: { enabled: true, percent: 0.65, color: new vec4(0.55, 0.48, 0.90, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.26, 0.72, 0.94, 1.0) },
};
const CANDY_BORDER = new vec4(1.00, 1.00, 1.00, 0.70);
// ─── Style: Ocean ─────────────────────────────────────────────────────────────
// Radial gradient: bright cyan center glow → deep navy edges, semi-transparent
const OCEAN_GRAD = {
    enabled: true, type: "Radial",
    start: new vec2(0, 0), end: new vec2(1, 0),
    stop0: { enabled: true, percent: 0, color: new vec4(0.55, 0.95, 1.00, 0.85) },
    stop1: { enabled: true, percent: 0.35, color: new vec4(0.08, 0.50, 0.88, 0.80) },
    stop2: { enabled: true, percent: 0.65, color: new vec4(0.02, 0.20, 0.50, 0.85) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.00, 0.08, 0.28, 0.90) },
};
const OCEAN_BORDER = new vec4(0.30, 0.80, 1.00, 0.60);
// ─── Style: Lime ──────────────────────────────────────────────────────────────
// Electric yellow-green → lime → forest green linear gradient
const LIME_GRAD = {
    enabled: true, type: "Linear",
    start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(0.90, 1.00, 0.05, 1.0) },
    stop1: { enabled: true, percent: 0.35, color: new vec4(0.55, 0.95, 0.05, 1.0) },
    stop2: { enabled: true, percent: 0.65, color: new vec4(0.25, 0.80, 0.10, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.12, 0.55, 0.05, 1.0) },
};
const LIME_BORDER = new vec4(0.45, 0.88, 0.18, 0.80);
const PRESETS = [
    /* 0 Candy */ { gradient: CANDY_GRAD, border: CANDY_BORDER },
    /* 1 Ocean */ { gradient: OCEAN_GRAD, border: OCEAN_BORDER },
    /* 2 Lime  */ { gradient: LIME_GRAD, border: LIME_BORDER },
];
/**
 * Applies a selectable gradient overlay to a UIKit Frame component.
 *
 * The Frame's glass/frosted shader ignores setBackgroundGradient, so this script
 * spawns a RoundedRectangle panel one render-order step above the glass, fully
 * covering it while remaining below all child content (buttons, labels, etc.).
 *
 * Attach to the same SceneObject as the Frame component.
 */
let UIKitCustomVisualsFrame = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var UIKitCustomVisualsFrame = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.styleIndex = (__runInitializers(this, _instanceExtraInitializers), this.styleIndex);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._gradientPanel = null;
        }
        __initialize() {
            super.__initialize();
            this.styleIndex = (__runInitializers(this, _instanceExtraInitializers), this.styleIndex);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._gradientPanel = null;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("UIKitCustomVisualsFrame", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this._preset = PRESETS[Math.max(0, Math.min(PRESETS.length - 1, this.styleIndex))];
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            const frame = this.sceneObject.getComponent(Frame_1.Frame.getTypeName());
            if (!frame) {
                this.logger.error("Frame component not found on this SceneObject");
                return;
            }
            const apply = () => {
                this._gradientPanel = this.createGradientPanel(frame);
                frame.onScalingUpdate.add(() => {
                    if (this._gradientPanel) {
                        this._gradientPanel.size = frame.totalSize;
                    }
                });
                this.logger.info("Gradient panel created with style index " + this.styleIndex);
            };
            if (frame.roundedRectangle) {
                apply();
            }
            else {
                frame.onInitialized.add(apply);
            }
        }
        createGradientPanel(frame) {
            const bgObj = global.scene.createSceneObject("GradientBackground");
            bgObj.setParent(frame.sceneObject);
            bgObj.layer = frame.sceneObject.layer;
            bgObj.getTransform().setLocalPosition(new vec3(0, 0, 0));
            const rr = bgObj.createComponent(RoundedRectangle_1.RoundedRectangle.getTypeName());
            rr.cornerRadius = frame.roundedRectangle.cornerRadius;
            rr.initialize();
            rr.size = frame.totalSize;
            rr.setBackgroundGradient(this._preset.gradient);
            rr.borderColor = this._preset.border;
            // One step above the Frame glass, below all child content
            const frameOrder = frame.roundedRectangle.renderMeshVisual.getRenderOrder();
            rr.renderMeshVisual.setRenderOrder(frameOrder + 1);
            this.logger.debug("GradientBackground panel render order set to " + (frameOrder + 1));
            return rr;
        }
    };
    __setFunctionName(_classThis, "UIKitCustomVisualsFrame");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        UIKitCustomVisualsFrame = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return UIKitCustomVisualsFrame = _classThis;
})();
exports.UIKitCustomVisualsFrame = UIKitCustomVisualsFrame;
//# sourceMappingURL=UIKitCustomVisualsFrame.js.map