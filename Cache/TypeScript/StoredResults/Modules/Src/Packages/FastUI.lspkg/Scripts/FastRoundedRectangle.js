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
exports.FastRoundedRectangle = void 0;
exports.getRoundedRectangleSizeFromText = getRoundedRectangleSizeFromText;
exports.buildRoundedRectangleOnto = buildRoundedRectangleOnto;
exports.createRoundedRectangle = createRoundedRectangle;
var __selfType = requireType("./FastRoundedRectangle");
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
 * FastRoundedRectangle – a single resizable button (rounded rectangle) driven by text content.
 * No prefabs. Builds RectangleButton + RoundedRectangleVisual + Text programmatically.
 * Use as a component on a scene object, or call FastRoundedRectangle.buildRoundedRectangleOnto() / createRoundedRectangle() from FastChat.
 */
const RectangleButton_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Button/RectangleButton");
const RoundedRectangleVisual_1 = require("SpectaclesUIKit.lspkg/Scripts/Visuals/RoundedRectangle/RoundedRectangleVisual");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
/** Reference: 1 row of 30 chars → rect 21×4; 4 rows → 21×10. Layout rect width 18, font 48. */
const DEFAULT_WIDTH = 21;
const DEFAULT_MIN_HEIGHT = 4;
/** Characters per row (space included) – matches reference text layout. */
const CHARS_PER_LINE = 30;
/** Vertical padding (cm): top and bottom insets so text doesn't touch card edges.
 *  Asymmetry compensates for font ascender/line spacing so top and bottom gaps look equal (Top alignment). */
const TEXT_INSET_TOP = 0.04;
const TEXT_INSET_BOTTOM = 0.36;
/** Total vertical padding for height formula. */
const TEXT_INSET_TOTAL = TEXT_INSET_TOP + TEXT_INSET_BOTTOM;
/** Height (cm) per line of text – card height = total inset + lines*this so gap stays constant. */
const HEIGHT_PER_LINE = 2.0;
/** Text layout rect: left -9, right 9 → width 18. */
const TEXT_LAYOUT_WIDTH_HALF = 9;
const TEXT_FONT_SIZE = 48;
/** Truncate content to fit within maxLines; add "..." if truncated. */
function truncateToMaxLines(content, maxLines) {
    const maxChars = Math.max(1, Math.floor(maxLines) * CHARS_PER_LINE);
    const s = (content || "").trim();
    if (s.length <= maxChars)
        return s;
    return s.substring(0, maxChars - 3) + "...";
}
/** Text fill colors for content (dropdown presets). */
const TEXT_COLORS = {
    white: new vec4(0.99, 0.99, 0.99, 1),
    black: new vec4(0.08, 0.08, 0.08, 1),
    gray: new vec4(0.45, 0.45, 0.48, 1),
};
const USER_COLORS = {
    default: new vec4(0.2, 0.5, 0.9, 1),
    hover: new vec4(0.3, 0.55, 0.95, 1),
    triggered: new vec4(0.1, 0.35, 0.75, 1),
    border: new vec4(0.1, 0.35, 0.75, 1),
};
const BOT_COLORS = {
    default: new vec4(0.25, 0.25, 0.28, 1),
    hover: new vec4(0.35, 0.35, 0.38, 1),
    triggered: new vec4(0.2, 0.2, 0.22, 1),
    border: new vec4(0.2, 0.2, 0.2, 1),
};
/** Gradient stop helper for multi-stop rectangle gradients. */
function rectGrad(s0, c0, s1, c1, s2, c2, s3, c3) {
    return {
        enabled: true,
        type: "Rectangle",
        stop0: { enabled: true, percent: s0, color: c0 },
        stop1: { enabled: true, percent: s1, color: c1 },
        stop2: { enabled: true, percent: s2, color: c2 },
        stop3: { enabled: true, percent: s3, color: c3 },
    };
}
/** Flat single-color gradient (legacy user/bot). */
function flatGrad(c) {
    return rectGrad(0, c, 0.5, c, 1, c, 1, c);
}
/** Preset palettes: bot/user use flat colors in buildVisualStyle; green is gradient, no border. */
const VISUAL_STYLE_PRESETS = {
    user: {}, // built in buildVisualStyle (blue)
    bot: {}, // built in buildVisualStyle (gray)
    green: {
        default: {
            baseType: "Gradient",
            hasBorder: false,
            baseGradient: rectGrad(0, new vec4(0.25, 0.82, 0.35, 1), // light green
            0.35, new vec4(0.12, 0.58, 0.22, 1), // mid green
            0.7, new vec4(0.06, 0.38, 0.14, 1), // dark green
            1, new vec4(0.03, 0.22, 0.08, 1) // deeper green
            ),
        },
        hovered: {
            baseGradient: rectGrad(0, new vec4(0.35, 0.88, 0.42, 1), 0.25, new vec4(0.18, 0.65, 0.28, 1), 0.6, new vec4(0.1, 0.45, 0.18, 1), 1, new vec4(0.05, 0.28, 0.1, 1)),
        },
        triggered: {
            baseGradient: rectGrad(0, new vec4(0.18, 0.6, 0.25, 1), 0.4, new vec4(0.1, 0.42, 0.16, 1), 0.75, new vec4(0.05, 0.28, 0.1, 1), 1, new vec4(0.03, 0.18, 0.06, 1)),
        },
    },
};
function buildVisualStyle(options) {
    const styleName = (options.style || "bot");
    const borderSize = options.borderSize ?? 0.1;
    const preset = VISUAL_STYLE_PRESETS[styleName];
    if (preset && Object.keys(preset).length > 0) {
        const base = preset.default ?? {};
        const useBorder = base.hasBorder !== false;
        return {
            default: {
                ...base,
                hasBorder: useBorder,
                ...(useBorder && { borderSize }),
            },
            hovered: preset.hovered ?? base,
            triggered: preset.triggered ?? base,
        };
    }
    const def = options.colorDefault ?? (styleName === "user" ? USER_COLORS.default : BOT_COLORS.default);
    const hov = options.colorHover ?? (styleName === "user" ? USER_COLORS.hover : BOT_COLORS.hover);
    const trig = options.colorTriggered ?? (styleName === "user" ? USER_COLORS.triggered : BOT_COLORS.triggered);
    const border = options.borderColor ?? (styleName === "user" ? USER_COLORS.border : BOT_COLORS.border);
    return {
        default: {
            baseType: "Gradient",
            hasBorder: true,
            borderSize,
            borderType: "Color",
            borderColor: border,
            baseGradient: flatGrad(def),
        },
        hovered: { baseGradient: flatGrad(hov) },
        triggered: { baseGradient: flatGrad(trig) },
    };
}
/**
 * Compute size from text (width fixed, height from line count).
 * Card height = total inset + lines*HEIGHT_PER_LINE so padding stays constant regardless of line count.
 * Result is clamped to [minHeight, maxHeight] when maxHeight is set.
 */
function getRoundedRectangleSizeFromText(content, width = DEFAULT_WIDTH, minHeight = DEFAULT_MIN_HEIGHT, maxHeight, maxLines) {
    const lines = Math.max(1, Math.ceil((content || "").length / CHARS_PER_LINE));
    const contentHeight = TEXT_INSET_TOTAL + lines * HEIGHT_PER_LINE;
    let height = Math.max(minHeight, contentHeight);
    if (maxHeight != null && maxHeight >= minHeight) {
        height = Math.min(height, maxHeight);
    }
    return new vec3(width, height, 0.5);
}
/**
 * Build rounded rectangle UI onto an existing scene object: RectangleButton + RoundedRectangleVisual + Text child.
 * Does not create the scene object. Use from FastChat: createSceneObject, then buildRoundedRectangleOnto(obj, options).
 */
function buildRoundedRectangleOnto(sceneObject, options) {
    const width = options.width ?? DEFAULT_WIDTH;
    const minHeight = options.minHeight ?? DEFAULT_MIN_HEIGHT;
    const maxHeight = options.maxHeight;
    const maxLines = options.maxLines;
    const displayContent = maxLines != null && maxLines > 0
        ? truncateToMaxLines(options.content, maxLines)
        : (options.content || "");
    const size = getRoundedRectangleSizeFromText(displayContent, width, minHeight, maxHeight, maxLines);
    let button = sceneObject.getComponent(RectangleButton_1.RectangleButton.getTypeName());
    if (!button) {
        button = sceneObject.createComponent(RectangleButton_1.RectangleButton.getTypeName());
    }
    const style = buildVisualStyle(options);
    const visual = new RoundedRectangleVisual_1.RoundedRectangleVisual({ sceneObject: sceneObject, style });
    button.visual = visual;
    button.size = size;
    button.initialize();
    const rectHeight = size.y;
    const half = rectHeight * 0.5;
    const textBottom = -half + TEXT_INSET_BOTTOM;
    const textTop = half - TEXT_INSET_TOP;
    let textObj = null;
    for (let i = 0; i < sceneObject.getChildrenCount(); i++) {
        const c = sceneObject.getChild(i);
        if (c.name === "Content") {
            textObj = c;
            break;
        }
    }
    const textColorName = options.textColor ?? "white";
    const textColor = TEXT_COLORS[textColorName] ?? TEXT_COLORS.white;
    if (!textObj) {
        textObj = global.scene.createSceneObject("Content");
        textObj.setParent(sceneObject);
        textObj.getTransform().setLocalPosition(new vec3(0, 0, 0.1));
        const textComp = textObj.createComponent("Component.Text");
        if (textComp) {
            textComp.text = displayContent;
            textComp.size = TEXT_FONT_SIZE;
            textComp.worldSpaceRect = Rect.create(-TEXT_LAYOUT_WIDTH_HALF, TEXT_LAYOUT_WIDTH_HALF, textBottom, textTop);
            textComp.horizontalOverflow = HorizontalOverflow.Wrap;
            textComp.verticalOverflow = VerticalOverflow.Overflow;
            textComp.horizontalAlignment = HorizontalAlignment.Left;
            textComp.verticalAlignment = VerticalAlignment.Center;
            textComp.textFill.mode = TextFillMode.Solid;
            textComp.textFill.color = textColor;
        }
    }
    else {
        const textComp = textObj.getComponent("Component.Text");
        if (textComp) {
            textComp.text = displayContent;
            textComp.size = TEXT_FONT_SIZE;
            textComp.worldSpaceRect = Rect.create(-TEXT_LAYOUT_WIDTH_HALF, TEXT_LAYOUT_WIDTH_HALF, textBottom, textTop);
            textComp.horizontalAlignment = HorizontalAlignment.Left;
            textComp.verticalAlignment = VerticalAlignment.Center;
            textComp.textFill.mode = TextFillMode.Solid;
            textComp.textFill.color = textColor;
        }
    }
}
/**
 * Create a new scene object under parent and build rounded rectangle onto it. Returns the new scene object.
 */
function createRoundedRectangle(parent, name, options) {
    const obj = global.scene.createSceneObject(name);
    obj.setParent(parent);
    buildRoundedRectangleOnto(obj, options);
    return obj;
}
let FastRoundedRectangle = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var FastRoundedRectangle = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.content = (__runInitializers(this, _instanceExtraInitializers), this.content);
            /** Width in cm; not exposed in inspector. */
            this.cardWidth = DEFAULT_WIDTH;
            /** Minimum height in cm (1 line); not exposed in inspector. */
            this.cardMinHeight = DEFAULT_MIN_HEIGHT;
            /** Maximum height in cm (reached at max lines); not exposed in inspector. */
            this.cardMaxHeight = 30;
            /** Line count at which height reaches cardMaxHeight; text is truncated beyond this. */
            this.cardMaxLines = 20;
            this.style = this.style;
            /** Border size; not exposed in inspector. */
            this.cardBorderSize = 0.1;
            this.textColor = this.textColor;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.built = false;
        }
        __initialize() {
            super.__initialize();
            this.content = (__runInitializers(this, _instanceExtraInitializers), this.content);
            /** Width in cm; not exposed in inspector. */
            this.cardWidth = DEFAULT_WIDTH;
            /** Minimum height in cm (1 line); not exposed in inspector. */
            this.cardMinHeight = DEFAULT_MIN_HEIGHT;
            /** Maximum height in cm (reached at max lines); not exposed in inspector. */
            this.cardMaxHeight = 30;
            /** Line count at which height reaches cardMaxHeight; text is truncated beyond this. */
            this.cardMaxLines = 20;
            this.style = this.style;
            /** Border size; not exposed in inspector. */
            this.cardBorderSize = 0.1;
            this.textColor = this.textColor;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.built = false;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("FastRoundedRectangle", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            const valid = ["white", "black", "gray"];
            if (valid.indexOf(this.textColor) < 0) {
                this.textColor = "white";
            }
        }
        onStart() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onStart() - Building rounded rectangle");
            }
            this.buildRoundedRectangle();
        }
        /**
         * Build or rebuild from current content and size params.
         * Call from inspector or script when content/size changes.
         */
        buildRoundedRectangle() {
            const styleName = this.style;
            const style = styleName === "user" || styleName === "bot" || styleName === "green" ? styleName : "bot";
            const textColorName = this.textColor;
            const textColor = textColorName === "white" || textColorName === "black" || textColorName === "gray" ? textColorName : "white";
            buildRoundedRectangleOnto(this.sceneObject, {
                content: this.content,
                width: this.cardWidth,
                minHeight: this.cardMinHeight,
                maxHeight: this.cardMaxHeight,
                maxLines: this.cardMaxLines,
                style,
                borderSize: this.cardBorderSize,
                textColor,
            });
            this.built = true;
            if (this.enableLogging) {
                const size = getRoundedRectangleSizeFromText(this.content, this.cardWidth, this.cardMinHeight, this.cardMaxHeight, this.cardMaxLines);
                const lines = Math.max(1, Math.ceil((this.content || "").length / CHARS_PER_LINE));
                const rectHeight = size.y;
                const half = rectHeight * 0.5;
                const textBottom = -half + TEXT_INSET_BOTTOM;
                const textTop = half - TEXT_INSET_TOP;
                this.logger.debug("[build] chars=" +
                    this.content.length +
                    " lines=" +
                    lines +
                    " | size(w×h)=" +
                    size.x.toFixed(2) +
                    "×" +
                    size.y.toFixed(2) +
                    " | rectHeight=" +
                    rectHeight.toFixed(2) +
                    " | textRect bottom=" +
                    textBottom.toFixed(2) +
                    " top=" +
                    textTop.toFixed(2) +
                    " (height=" +
                    (textTop - textBottom).toFixed(2) +
                    ")");
            }
        }
        /**
         * Update content and resize. Call after changing this.content.
         */
        setContent(newContent) {
            this.content = newContent;
            this.buildRoundedRectangle();
        }
        /**
         * Get the current computed size (width × height from text).
         */
        getSize() {
            return getRoundedRectangleSizeFromText(this.content, this.cardWidth, this.cardMinHeight, this.cardMaxHeight, this.cardMaxLines);
        }
    };
    __setFunctionName(_classThis, "FastRoundedRectangle");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        FastRoundedRectangle = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return FastRoundedRectangle = _classThis;
})();
exports.FastRoundedRectangle = FastRoundedRectangle;
//# sourceMappingURL=FastRoundedRectangle.js.map