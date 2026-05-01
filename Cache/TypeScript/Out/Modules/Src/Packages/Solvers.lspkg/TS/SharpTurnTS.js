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
exports.SharpTurnTS = void 0;
var __selfType = requireType("./SharpTurnTS");
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
 * Sharp turn detection system using position history and dot product analysis. Tracks movement path
 * over configurable frame buffer, detects directional changes via normalized vector comparison,
 * triggers callbacks on sharp turns (dot product < -0.1), and provides debug logging for tuning.
 */
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
let SharpTurnTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var SharpTurnTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.step = (__runInitializers(this, _instanceExtraInitializers), this.step);
            this.frameCount = this.frameCount;
            this.minVertexDistance = this.minVertexDistance;
            this.debug = this.debug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Events
            this._onTurn = [];
            // Internal tracking variables
            this._positions = [];
            this._currentIndex = 0;
            this._newestDirection = new vec3(0, 0, 0);
            this._oldestDirection = new vec3(0, 0, 0);
        }
        __initialize() {
            super.__initialize();
            this.step = (__runInitializers(this, _instanceExtraInitializers), this.step);
            this.frameCount = this.frameCount;
            this.minVertexDistance = this.minVertexDistance;
            this.debug = this.debug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Events
            this._onTurn = [];
            // Internal tracking variables
            this._positions = [];
            this._currentIndex = 0;
            this._newestDirection = new vec3(0, 0, 0);
            this._oldestDirection = new vec3(0, 0, 0);
        }
        /**
         * Called when component wakes up - initialize logger
         */
        onAwake() {
            const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
            this.logger = new Logger_1.Logger("SharpTurnTS", shouldLog, true);
            if (this.enableLoggingLifecycle) {
                this.logger.header("SharpTurnTS Initialization");
                this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
            }
            // Initialize positions array
            this._positions = new Array(this.frameCount).fill(null).map(() => new vec3(0, 0, 0));
        }
        /**
         * Called on the first frame when the scene starts
         * Automatically bound to OnStartEvent via SnapDecorators
         */
        onStart() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onStart() - Scene started");
            }
            // Initialize the first position
            this._positions[this._currentIndex] = this.sceneObject.getTransform().getWorldPosition();
        }
        /**
         * Called every frame to detect sharp turns
         * Automatically bound to UpdateEvent via SnapDecorators
         */
        onUpdate() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onUpdate() - Update event");
            }
            // Get current position
            const currentPos = this.sceneObject.getTransform().getWorldPosition();
            // Only record position if moved enough
            if (currentPos.distance(this._positions[this._currentIndex]) > this.minVertexDistance) {
                // Move to the next index, looping around if necessary
                this._currentIndex = (this._currentIndex + 1) % this.frameCount;
                this._positions[this._currentIndex] = currentPos;
                // Ensure there are enough points for direction calculations
                if (this._currentIndex >= this.step) {
                    // Calculate directions
                    const prevIndex = (this._currentIndex - 1 + this.frameCount) % this.frameCount;
                    const oldIndex = (this._currentIndex - this.step + this.frameCount) % this.frameCount;
                    this._newestDirection = this._positions[this._currentIndex].sub(this._positions[prevIndex]);
                    this._oldestDirection = this._positions[this._currentIndex].sub(this._positions[oldIndex]);
                    // Detect sharp turn using dot product
                    const dotProduct = this.detectDotProduct(this._newestDirection, this._oldestDirection);
                    if (this.debug) {
                        if (this.enableLogging) {
                            this.logger.info("Dot Product: " + dotProduct.toFixed(4));
                        }
                        else {
                            print("Dot Product: " + dotProduct.toFixed(4));
                        }
                    }
                    // Check if a sharp turn has occurred (dot product < -0.1)
                    if (dotProduct < -0.1) {
                        if (this.debug) {
                            if (this.enableLogging) {
                                this.logger.info("Transform has sharp turned!");
                            }
                            else {
                                print("Transform has sharp turned!");
                            }
                        }
                        // Trigger the turn event
                        this.triggerOnTurn();
                    }
                }
            }
        }
        /**
         * Calculate the dot product between two direction vectors.
         * @param newestDirection The newest direction vector
         * @param oldestDirection The oldest direction vector
         * @returns The dot product (negative values indicate sharp turns)
         */
        detectDotProduct(newestDirection, oldestDirection) {
            // Normalize the vectors
            const normalized1 = newestDirection.normalize();
            const normalized2 = oldestDirection.normalize();
            // Calculate dot product
            return normalized1.dot(normalized2);
        }
        /**
         * Add a listener for the turn event.
         * @param callback The function to call when a sharp turn is detected
         */
        addOnTurnListener(callback) {
            this._onTurn.push(callback);
        }
        /**
         * Remove a listener for the turn event.
         * @param callback The function to remove
         */
        removeOnTurnListener(callback) {
            this._onTurn = this._onTurn.filter(cb => cb !== callback);
        }
        /**
         * Trigger all registered turn callbacks.
         */
        triggerOnTurn() {
            for (const callback of this._onTurn) {
                callback();
            }
        }
    };
    __setFunctionName(_classThis, "SharpTurnTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        SharpTurnTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return SharpTurnTS = _classThis;
})();
exports.SharpTurnTS = SharpTurnTS;
//# sourceMappingURL=SharpTurnTS.js.map