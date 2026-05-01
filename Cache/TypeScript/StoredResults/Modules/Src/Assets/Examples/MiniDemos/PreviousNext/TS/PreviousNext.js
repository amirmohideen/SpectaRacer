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
exports.PreviousNext = void 0;
var __selfType = requireType("./PreviousNext");
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
 * Defines Previous Next, Array Navigator for the Essentials lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let PreviousNext = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var PreviousNext = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.sceneObjects = (__runInitializers(this, _instanceExtraInitializers), this.sceneObjects);
            this.textObject = this.textObject;
            this.nextInteractable = this.nextInteractable;
            this.previousInteractable = this.previousInteractable;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.sceneObjects = (__runInitializers(this, _instanceExtraInitializers), this.sceneObjects);
            this.textObject = this.textObject;
            this.nextInteractable = this.nextInteractable;
            this.previousInteractable = this.previousInteractable;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("PreviousNext", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            if (!this.sceneObjects || this.sceneObjects.length === 0) {
                this.logger.warn("No scene objects to navigate.");
                return;
            }
            const navigator = new ArrayNavigator(this.sceneObjects);
            this.activateCurrentObject(navigator.getCurrentItem());
            const onTriggerStartCallbackNext = (event) => {
                const nextItem = navigator.next();
                this.activateCurrentObject(nextItem);
            };
            const onTriggerStartCallbackPrevious = (event) => {
                const previousItem = navigator.previous();
                this.activateCurrentObject(previousItem);
            };
            if (this.nextInteractable) {
                this.nextInteractable.onInteractorTriggerStart(onTriggerStartCallbackNext);
            }
            else {
                this.logger.warn("Next interactable is not defined.");
            }
            if (this.previousInteractable) {
                this.previousInteractable.onInteractorTriggerStart(onTriggerStartCallbackPrevious);
            }
            else {
                this.logger.warn("Previous interactable is not defined.");
            }
        }
        activateCurrentObject(currentObject) {
            this.sceneObjects.forEach((obj) => {
                obj.enabled = false;
            });
            currentObject.enabled = true;
            this.logger.info(`Activated object: ${currentObject.name}`);
            if (this.textObject) {
                this.textObject.text = currentObject.name;
                this.logger.info(`Updated text object with name: ${currentObject.name}`);
            }
            else {
                this.logger.warn("Text object is not defined.");
            }
        }
    };
    __setFunctionName(_classThis, "PreviousNext");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        PreviousNext = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return PreviousNext = _classThis;
})();
exports.PreviousNext = PreviousNext;
class ArrayNavigator {
    constructor(items) {
        this.items = items;
        this.currentIndex = 0;
    }
    next() {
        this.currentIndex = (this.currentIndex + 1) % this.items.length;
        return this.items[this.currentIndex];
    }
    previous() {
        this.currentIndex = (this.currentIndex - 1 + this.items.length) % this.items.length;
        return this.items[this.currentIndex];
    }
    getCurrentItem() {
        return this.items[this.currentIndex];
    }
}
//# sourceMappingURL=PreviousNext.js.map