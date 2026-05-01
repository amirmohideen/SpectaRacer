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
exports.ScrollView = void 0;
var __selfType = requireType("./ScrollView");
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
const INERTIA_DECELERATION = 0.01;
let ScrollView = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var ScrollView = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.contentTransform = this.contentTransform;
            this.limitContentHeight = this.limitContentHeight;
            this.contentHeight = this.contentHeight;
            this.activeTouchId = null;
            this.lastTouchPosition = null;
        }
        __initialize() {
            super.__initialize();
            this.contentTransform = this.contentTransform;
            this.limitContentHeight = this.limitContentHeight;
            this.contentHeight = this.contentHeight;
            this.activeTouchId = null;
            this.lastTouchPosition = null;
        }
        onAwake() {
            this.screenTransform = this.getSceneObject().getComponent("ScreenTransform");
            this.createEvent("UpdateEvent").bind(ev => this.onUpdate(ev.getDeltaTime()));
            this.observeTouchEvents();
        }
        onUpdate(deltaTime) {
        }
        onTouchDelta(delta) {
            const scrollAmount = this.getScreenScrollAxis().dot(delta);
            const center = this.contentTransform.anchors.getCenter();
            center.y += scrollAmount;
            if (this.limitContentHeight) {
                center.y = Math.min(center.y, Math.max(this.contentHeight - 1, 0));
            }
            center.y = Math.max(center.y, 0);
            this.contentTransform.anchors.setCenter(center);
        }
        observeTouchEvents() {
            this.createEvent("TouchStartEvent").bind(data => {
                if (this.activeTouchId === null) {
                    if (this.screenTransform.containsScreenPoint(data.getTouchPosition())) {
                        this.activeTouchId = data.getTouchId();
                        this.lastTouchPosition = data.getTouchPosition();
                    }
                }
            });
            this.createEvent("TouchMoveEvent").bind(data => {
                if (this.activeTouchId === data.getTouchId() && this.lastTouchPosition) {
                    const delta = data.getTouchPosition().sub(this.lastTouchPosition);
                    this.lastTouchPosition = data.getTouchPosition();
                    this.onTouchDelta(delta);
                }
            });
            this.createEvent("TouchEndEvent").bind(data => {
                if (this.activeTouchId === data.getTouchId()) {
                    this.activeTouchId = null;
                    this.lastTouchPosition = null;
                }
            });
        }
        getScreenScrollAxis() {
            const localToScreen = this.screenTransform.localPointToScreenPoint(vec2.up())
                .sub(this.screenTransform.localPointToScreenPoint(vec2.zero()));
            return localToScreen.normalize().uniformScale(1 / localToScreen.length);
        }
    };
    __setFunctionName(_classThis, "ScrollView");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ScrollView = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ScrollView = _classThis;
})();
exports.ScrollView = ScrollView;
//# sourceMappingURL=ScrollView.js.map