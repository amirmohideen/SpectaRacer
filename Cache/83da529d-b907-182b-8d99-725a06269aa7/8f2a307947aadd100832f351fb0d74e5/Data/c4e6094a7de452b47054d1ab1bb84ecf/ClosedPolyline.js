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
exports.ClosedPolyline = void 0;
var __selfType = requireType("./ClosedPolyline");
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
 * Runtime closed polyline gizmo for visualizing connected paths. Renders a sequence of lines
 * through control points with options for continuous or split segments, customizable colors,
 * and dynamic updates for path visualization.
 */
const color_1 = require("SpectaclesInteractionKit.lspkg/Utils/color");
const InteractorLineRenderer_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/InteractorLineVisual/InteractorLineRenderer");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let ClosedPolyline = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onDestroy_decorators;
    var ClosedPolyline = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.points = (__runInitializers(this, _instanceExtraInitializers), this.points);
            this.lineMaterial = this.lineMaterial;
            this._color = this._color;
            this.lineWidth = this.lineWidth;
            this.lineStyle = this.lineStyle;
            this.continuousLine = this.continuousLine;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._enabled = true;
            this.lines = [];
        }
        __initialize() {
            super.__initialize();
            this.points = (__runInitializers(this, _instanceExtraInitializers), this.points);
            this.lineMaterial = this.lineMaterial;
            this._color = this._color;
            this.lineWidth = this.lineWidth;
            this.lineStyle = this.lineStyle;
            this.continuousLine = this.continuousLine;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this._enabled = true;
            this.lines = [];
        }
        set isEnabled(isEnabled) {
            this._enabled = isEnabled;
            this.lines.forEach(line => {
                line.getSceneObject().enabled = isEnabled;
            });
        }
        get isEnabled() {
            return this._enabled;
        } /**
       * Called when component is initialized
       */
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("ClosedPolyline", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            if (!this.points || this.points.length < 2) {
                throw new Error("ClosedPolylineVisual requires at least 2 points");
            }
            this.transform = this.sceneObject.getTransform();
            this.createOrUpdateLines();
        }
        refreshLine() {
            if (!this.points || this.points.length < 2) {
                this.logger.debug("Cannot refresh line: Invalid state");
                return;
            }
            // Recalculate positions and update the lines
            this.createOrUpdateLines();
        }
        createOrUpdateLines() {
            // Clear existing lines
            this.lines.forEach(line => line.destroy());
            this.lines = [];
            const positions = this.points.map(point => point.getTransform().getLocalPosition());
            if (this.continuousLine) {
                // Render as a single closed line
                positions.push(positions[0]);
                const line = new InteractorLineRenderer_1.default({
                    material: this.lineMaterial,
                    points: positions,
                    startColor: (0, color_1.withAlpha)(this._color, 1),
                    endColor: (0, color_1.withAlpha)(this._color, 1),
                    startWidth: this.lineWidth,
                    endWidth: this.lineWidth,
                });
                line.getSceneObject().setParent(this.sceneObject);
                line.visualStyle = this.lineStyle;
                this.lines.push(line);
            }
            else {
                // Render as separate lines between each pair of points
                for (let i = 0; i < positions.length; i++) {
                    const startIndex = i;
                    const endIndex = (i + 1) % positions.length;
                    const line = new InteractorLineRenderer_1.default({
                        material: this.lineMaterial,
                        points: [positions[startIndex], positions[endIndex]],
                        startColor: (0, color_1.withAlpha)(this._color, 1),
                        endColor: (0, color_1.withAlpha)(this._color, 1),
                        startWidth: this.lineWidth,
                        endWidth: this.lineWidth,
                    });
                    line.getSceneObject().setParent(this.sceneObject);
                    line.visualStyle = this.lineStyle;
                    this.lines.push(line);
                }
            }
            this.isEnabled = this._enabled;
        }
        onDestroy() {
            this.lines.forEach(line => line.destroy());
            this.sceneObject.destroy();
        }
        getPoints() {
            return this.points || [];
        }
        setColor(color) {
            this._color = color;
            this.lines.forEach(line => {
                const colorWithAlpha = (0, color_1.withAlpha)(color, 1);
                line.startColor = colorWithAlpha;
                line.endColor = colorWithAlpha;
            });
        }
        setPoints(newPoints) {
            if (newPoints.length < 2) {
                this.logger.debug("Error: At least 2 points are required");
                return;
            }
            this.points = newPoints;
            this.refreshLine();
        }
    };
    __setFunctionName(_classThis, "ClosedPolyline");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onDestroy_decorators = [decorators_1.bindDestroyEvent];
        __esDecorate(_classThis, null, _onDestroy_decorators, { kind: "method", name: "onDestroy", static: false, private: false, access: { has: obj => "onDestroy" in obj, get: obj => obj.onDestroy }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ClosedPolyline = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ClosedPolyline = _classThis;
})();
exports.ClosedPolyline = ClosedPolyline;
//# sourceMappingURL=ClosedPolyline.js.map