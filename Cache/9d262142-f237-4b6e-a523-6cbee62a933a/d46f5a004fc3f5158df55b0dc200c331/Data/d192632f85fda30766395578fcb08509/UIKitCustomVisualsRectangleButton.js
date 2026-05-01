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
exports.UIKitCustomVisualsRectangleButton = void 0;
var __selfType = requireType("./UIKitCustomVisualsRectangleButton");
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
 * UIKitCustomVisualsRectangleButton – applies a selectable gradient style to a UIKit RectangleButton.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const RectangleButton_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Button/RectangleButton");
const RoundedRectangleVisual_1 = require("SpectaclesUIKit.lspkg/Scripts/Visuals/RoundedRectangle/RoundedRectangleVisual");
// ─── Style: Candy ─────────────────────────────────────────────────────────────
const CANDY_DEFAULT = {
    enabled: true, type: "Linear", start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(1.00, 0.42, 0.71, 1.0) },
    stop1: { enabled: true, percent: 0.35, color: new vec4(0.88, 0.38, 0.82, 1.0) },
    stop2: { enabled: true, percent: 0.65, color: new vec4(0.55, 0.48, 0.90, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.26, 0.72, 0.94, 1.0) },
};
const CANDY_HOVERED = {
    enabled: true, type: "Linear", start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(1.00, 0.60, 0.82, 1.0) },
    stop1: { enabled: true, percent: 0.40, color: new vec4(0.68, 0.60, 0.96, 1.0) },
    stop2: { enabled: true, percent: 0.75, color: new vec4(0.68, 0.60, 0.96, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.48, 0.82, 0.98, 1.0) },
};
// ─── Style: Ocean ─────────────────────────────────────────────────────────────
const OCEAN_DEFAULT = {
    enabled: true, type: "Radial", start: new vec2(0, 0), end: new vec2(1, 0),
    stop0: { enabled: true, percent: 0, color: new vec4(0.55, 0.95, 1.00, 0.85) },
    stop1: { enabled: true, percent: 0.40, color: new vec4(0.10, 0.55, 0.90, 0.80) },
    stop2: { enabled: true, percent: 0.75, color: new vec4(0.02, 0.22, 0.52, 0.85) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.00, 0.08, 0.28, 0.90) },
};
const OCEAN_HOVERED = {
    enabled: true, type: "Radial", start: new vec2(0, 0), end: new vec2(1, 0),
    stop0: { enabled: true, percent: 0, color: new vec4(0.78, 1.00, 1.00, 0.90) },
    stop1: { enabled: true, percent: 0.40, color: new vec4(0.22, 0.72, 0.98, 0.85) },
    stop2: { enabled: true, percent: 0.75, color: new vec4(0.05, 0.32, 0.68, 0.85) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.00, 0.12, 0.36, 0.90) },
};
// ─── Style: Lime ──────────────────────────────────────────────────────────────
const LIME_DEFAULT = {
    enabled: true, type: "Linear", start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(0.90, 1.00, 0.05, 1.0) },
    stop1: { enabled: true, percent: 0.35, color: new vec4(0.55, 0.95, 0.05, 1.0) },
    stop2: { enabled: true, percent: 0.65, color: new vec4(0.25, 0.80, 0.10, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.12, 0.55, 0.05, 1.0) },
};
const LIME_HOVERED = {
    enabled: true, type: "Linear", start: new vec2(0, 1), end: new vec2(0, -1),
    stop0: { enabled: true, percent: 0, color: new vec4(0.98, 1.00, 0.40, 1.0) },
    stop1: { enabled: true, percent: 0.40, color: new vec4(0.72, 1.00, 0.25, 1.0) },
    stop2: { enabled: true, percent: 0.75, color: new vec4(0.40, 0.90, 0.15, 1.0) },
    stop3: { enabled: true, percent: 1.0, color: new vec4(0.20, 0.70, 0.08, 1.0) },
};
const PRESETS = [
    /* 0 Candy */ {
        defaultGrad: CANDY_DEFAULT, hoveredGrad: CANDY_HOVERED,
        border: new vec4(1.00, 1.00, 1.00, 0.70), borderH: new vec4(1.00, 0.85, 0.95, 1.0),
    },
    /* 1 Ocean */ {
        defaultGrad: OCEAN_DEFAULT, hoveredGrad: OCEAN_HOVERED,
        border: new vec4(0.30, 0.80, 1.00, 0.60), borderH: new vec4(0.55, 0.95, 1.00, 0.80),
    },
    /* 2 Lime  */ {
        defaultGrad: LIME_DEFAULT, hoveredGrad: LIME_HOVERED,
        border: new vec4(0.45, 0.88, 0.18, 0.80), borderH: new vec4(0.65, 1.00, 0.35, 0.90),
    },
];
/**
 * Applies a selectable gradient style to a UIKit RectangleButton.
 *
 * Two-path approach handles both pre-initialized and not-yet-initialized buttons:
 *  A) onAwake:  sets a custom RoundedRectangleVisual before the button auto-initializes
 *  B) onStart:  overrides the visual's gradient via public API as a guaranteed fallback
 *
 * Attach to the same SceneObject as the RectangleButton component.
 */
let UIKitCustomVisualsRectangleButton = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var UIKitCustomVisualsRectangleButton = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.styleIndex = (__runInitializers(this, _instanceExtraInitializers), this.styleIndex);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._button = null;
        }
        __initialize() {
            super.__initialize();
            this.styleIndex = (__runInitializers(this, _instanceExtraInitializers), this.styleIndex);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._button = null;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("UIKitCustomVisualsRectangleButton", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this._button = this.sceneObject.getComponent(RectangleButton_1.RectangleButton.getTypeName());
            if (!this._button) {
                this.logger.error("RectangleButton component not found on this SceneObject");
                return;
            }
            this._preset = PRESETS[Math.max(0, Math.min(PRESETS.length - 1, this.styleIndex))];
            const p = this._preset;
            // Path A — set visual before the button's own OnStartEvent fires
            const style = {
                default: { hasBorder: true, borderSize: 0.08, borderType: "Color", borderColor: p.border, baseGradient: p.defaultGrad },
                hovered: { hasBorder: true, borderSize: 0.08, borderType: "Color", borderColor: p.borderH, baseGradient: p.hoveredGrad },
                triggered: { hasBorder: true, borderSize: 0.10, borderType: "Color", borderColor: p.border, baseGradient: p.defaultGrad },
            };
            const customVisual = new RoundedRectangleVisual_1.RoundedRectangleVisual({ sceneObject: this._button.sceneObject, style });
            this._button.visual = customVisual;
            this._button.initialize();
            this.logger.info("Custom visual applied (Path A) with style index " + this.styleIndex);
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            if (!this._button)
                return;
            const p = this._preset;
            // Path B — guaranteed override via public API regardless of initialization timing
            const vis = this._button.visual;
            if (!vis) {
                this.logger.warn("RoundedRectangleVisual not available on button in onStart");
                return;
            }
            vis.defaultBaseType = "Gradient";
            vis.hoveredBaseType = "Gradient";
            vis.triggeredBaseType = "Gradient";
            vis.defaultGradient = p.defaultGrad;
            vis.hoveredGradient = p.hoveredGrad;
            vis.triggeredGradient = p.defaultGrad;
            vis.defaultHasBorder = true;
            vis.hoveredHasBorder = true;
            vis.triggeredHasBorder = true;
            vis.defaultBorderSize = 0.08;
            vis.hoveredBorderSize = 0.08;
            vis.triggeredBorderSize = 0.10;
            vis.defaultBorderType = "Color";
            vis.hoveredBorderType = "Color";
            vis.triggeredBorderType = "Color";
            vis.borderDefaultColor = p.border;
            vis.borderHoveredColor = p.borderH;
            vis.borderTriggeredColor = p.border;
            this.logger.info("Custom visual confirmed (Path B) with style index " + this.styleIndex);
        }
    };
    __setFunctionName(_classThis, "UIKitCustomVisualsRectangleButton");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        UIKitCustomVisualsRectangleButton = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return UIKitCustomVisualsRectangleButton = _classThis;
})();
exports.UIKitCustomVisualsRectangleButton = UIKitCustomVisualsRectangleButton;
//# sourceMappingURL=UIKitCustomVisualsRectangleButton.js.map