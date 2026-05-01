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
exports.SimpleCircleAreaInstantiatorTS = void 0;
var __selfType = requireType("./SimpleCircleAreaInstantiatorTS");
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
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
/**
 * Specs Inc. 2026
 * Simple circle area instantiation utility that provides a streamlined approach to spawning
 * prefabs within a circular area. Lightweight alternative to the standard circle instantiator.
 */
let SimpleCircleAreaInstantiatorTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var SimpleCircleAreaInstantiatorTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.center = (__runInitializers(this, _instanceExtraInitializers), this.center);
            this.prefab = this.prefab;
            this.numberOfPrefabs = this.numberOfPrefabs;
            this.radius = this.radius;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.center = (__runInitializers(this, _instanceExtraInitializers), this.center);
            this.prefab = this.prefab;
            this.numberOfPrefabs = this.numberOfPrefabs;
            this.radius = this.radius;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        // Initialize with the proper pattern
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("SimpleCircleAreaInstantiatorTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            this.createEvent("OnStartEvent").bind(() => {
                this.onStart();
                this.logger.debug("Onstart event triggered");
            });
        }
        onStart() {
            this.instantiatePrefabs();
        }
        // Method to instantiate prefabs within the circle area
        instantiatePrefabs() {
            if (!this.center || !this.prefab) {
                this.logger.debug("Error: Center or prefab not assigned!");
                return;
            }
            const centerPosition = this.center.getTransform().getWorldPosition();
            for (let i = 0; i < this.numberOfPrefabs; i++) {
                // Generate a random point in a unit circle (on XZ plane)
                const randomPoint = this.randomPointInsideUnitCircle();
                // Scale by radius and position at center
                const randomPosition = new vec3(centerPosition.x + randomPoint.x * this.radius, centerPosition.y + randomPoint.y * this.radius, centerPosition.z);
                // Create a prefab instance at the calculated position
                this.createPrefabInstance(randomPosition);
            }
        }
        // Helper method to generate a random point inside a unit circle
        randomPointInsideUnitCircle() {
            // Implementation based on rejection sampling
            let x, y;
            let lengthSquared;
            do {
                // Generate random point in the [-1,1] square
                x = Math.random() * 2 - 1;
                y = Math.random() * 2 - 1;
                // Check if it's inside the unit circle
                lengthSquared = x * x + y * y;
            } while (lengthSquared > 1.0 || lengthSquared == 0);
            return { x, y };
        }
        // Helper method to create a prefab instance at a specific position
        createPrefabInstance(position) {
            if (this.prefab) {
                const instance = this.prefab.instantiate(this.sceneObject);
                instance.getTransform().setWorldPosition(position);
                this.logger.debug(`Created prefab instance at position: ${position.x}, ${position.y}, ${position.z}`);
            }
        }
    };
    __setFunctionName(_classThis, "SimpleCircleAreaInstantiatorTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        SimpleCircleAreaInstantiatorTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return SimpleCircleAreaInstantiatorTS = _classThis;
})();
exports.SimpleCircleAreaInstantiatorTS = SimpleCircleAreaInstantiatorTS;
//# sourceMappingURL=SimpleCircleAreaInstantiatorTS.js.map