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
exports.DragAndDrop = void 0;
var __selfType = requireType("./DragAndDrop");
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
 * Drag And Drop component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
// Interaction System https://developers.snap.com/spectacles/spectacles-frameworks/spectacles-interaction-kit/features/interactionsystem
// Instantiate https://developers.snap.com/lens-studio/api/lens-scripting/classes/Built-In.ObjectPrefab.html#instantiateasync or https://developers.snap.com/lens-studio/lens-studio-workflow/prefabs
let DragAndDrop = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var DragAndDrop = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.manipulateObject = (__runInitializers(this, _instanceExtraInitializers), this.manipulateObject);
            this.manipulationComponent = this.manipulationComponent;
            this.physicsBody = this.physicsBody;
            this.destroyDelay = this.destroyDelay;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.latestObject = null;
        }
        __initialize() {
            super.__initialize();
            this.manipulateObject = (__runInitializers(this, _instanceExtraInitializers), this.manipulateObject);
            this.manipulationComponent = this.manipulationComponent;
            this.physicsBody = this.physicsBody;
            this.destroyDelay = this.destroyDelay;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.latestObject = null;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("DragAndDrop", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.logger.info("Onstart event triggered");
            const onTriggerStartCallback = (event) => {
                this.objectIsSelected();
            };
            this.manipulateObject.onInteractorTriggerStart(onTriggerStartCallback);
            const onTriggerEndCallback = (event) => {
                this.objectIsDropped();
            };
            this.manipulateObject.onInteractorTriggerEnd(onTriggerEndCallback);
            if (this.manipulationComponent) {
                this.manipulationComponent.onManipulationStart.add((event) => {
                    this.onManipulationStarted(event);
                });
                this.manipulationComponent.onManipulationEnd.add((event) => {
                    this.onManipulationEnded(event);
                });
            }
            else {
                this.logger.warn("No InteractableManipulation component provided, advanced manipulation events won't be available");
            }
        }
        onManipulationStarted(event) {
            this.logger.info("Manipulation started");
        }
        onManipulationEnded(event) {
            this.logger.info("Manipulation ended");
            this.physicsBody.dynamic = true;
        }
        objectIsSelected() {
            this.latestObject = this.manipulateObject.getSceneObject();
            this.logger.info("Object selected: " + this.latestObject.name);
        }
        objectIsDropped() {
            if (!this.latestObject) {
                this.logger.warn("No object to drop");
                return;
            }
            const delayedEvent = this.createEvent("DelayedCallbackEvent");
            delayedEvent.bind(() => {
                if (this.latestObject) {
                    this.latestObject.destroy();
                    this.logger.info(`Object destroyed after ${this.destroyDelay} seconds`);
                    this.latestObject = null;
                }
            });
            delayedEvent.reset(this.destroyDelay);
            this.logger.info("Object dropped, will be destroyed in " + this.destroyDelay + " seconds");
        }
    };
    __setFunctionName(_classThis, "DragAndDrop");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        DragAndDrop = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return DragAndDrop = _classThis;
})();
exports.DragAndDrop = DragAndDrop;
//# sourceMappingURL=DragAndDrop.js.map