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
exports.ImageTrackingController = void 0;
var __selfType = requireType("./ImageTrackingController");
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
 * Image tracking controller with utilities for aspect ratio resizing and custom callbacks. Provides
 * advanced image tracking features including marker found/lost events and object scaling.
 */
const Utils_1 = require("./Utils");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
/* enable ruler as well as trigger callbacks when marker is found or lost. */
let ImageTrackingController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var ImageTrackingController = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.markerTrackingComponent = this.markerTrackingComponent;
            this.resizeObjectArray = this.resizeObjectArray;
            this.editEventCallbacks = this.editEventCallbacks;
            this.customFunctionScript = this.customFunctionScript;
            this.onMarkerFoundFunctionNames = this.onMarkerFoundFunctionNames;
            this.onMarkerLostFunctionNames = this.onMarkerLostFunctionNames;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.markerTrackingComponent = this.markerTrackingComponent;
            this.resizeObjectArray = this.resizeObjectArray;
            this.editEventCallbacks = this.editEventCallbacks;
            this.customFunctionScript = this.customFunctionScript;
            this.onMarkerFoundFunctionNames = this.onMarkerFoundFunctionNames;
            this.onMarkerLostFunctionNames = this.onMarkerLostFunctionNames;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        /**
         * Called when component is initialized
         */
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("ImageTrackingController", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            const mainCamera = Utils_1.Utils.getRootCamera(); // Ensure the camera is set up correctly
            /* Check if the camera is found */
            if (mainCamera) {
                /* Set the parent of this object to the main camera */
                this.getSceneObject().setParent(mainCamera);
                this.logger.debug("ImageTrackingController onAwake");
                /* Get the aspect ratio (width / height) of the texture used by the marker asset. */
                this.aspectRatio = this.markerTrackingComponent.marker.getAspectRatio();
                /* Get the height of the marker asset in real-life centimeters. */
                this.height = this.markerTrackingComponent.marker.height;
                this.createEvent("OnStartEvent").bind(() => {
                    this.logger.debug("ImageTrackingController OnStartEvent");
                    /* Resize object array to scale with the marker size. */
                    this.scaleResizeObjectArray();
                    /* Run callback when marker is found/lost. */
                    if (this.markerTrackingComponent.enabled) {
                        this.markerTrackingComponent.onMarkerFound = () => {
                            this.onMarkerFoundCallback();
                        };
                        this.markerTrackingComponent.onMarkerLost = () => {
                            this.onMarkerLostCallback();
                        };
                    }
                });
            }
            else {
                // If no camera is found, log an error from the Utils
                return null;
            }
        }
        onMarkerFoundCallback() {
            if (this.editEventCallbacks && this.customFunctionScript) {
                const executeCallback = Utils_1.Utils.createMarkerCallback(this.customFunctionScript, this.onMarkerFoundFunctionNames);
                executeCallback(true);
            }
        }
        onMarkerLostCallback() {
            if (this.editEventCallbacks && this.customFunctionScript) {
                const executeCallback = Utils_1.Utils.createMarkerCallback(this.customFunctionScript, this.onMarkerLostFunctionNames);
                executeCallback(true);
            }
        }
        /* Scales ResizeObjectArray with unit size to size of marker*/
        scaleResizeObjectArray() {
            for (let i = 0; i < this.resizeObjectArray.length; i++) {
                const children = this.resizeObjectArray[i];
                if (children) {
                    children
                        .getTransform()
                        .setLocalScale(new vec3(this.aspectRatio * this.height, this.height, this.height));
                }
            }
        }
    };
    __setFunctionName(_classThis, "ImageTrackingController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ImageTrackingController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ImageTrackingController = _classThis;
})();
exports.ImageTrackingController = ImageTrackingController;
//# sourceMappingURL=ImageTrackingController.js.map