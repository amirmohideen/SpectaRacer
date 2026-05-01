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
exports.RandomPointsInsideBoxTS = void 0;
var __selfType = requireType("./RandomPointsInsideBoxTS");
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
 * Random box volume instantiation utility that spawns prefabs at random points inside a
 * box-shaped volume. Perfect for filling spaces with particles, debris, or scattered objects.
 */
let RandomPointsInsideBoxTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var RandomPointsInsideBoxTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.boxObject = (__runInitializers(this, _instanceExtraInitializers), this.boxObject);
            this.prefab = this.prefab;
            this.numberOfPoints = this.numberOfPoints;
            this.sizeX = this.sizeX;
            this.sizeY = this.sizeY;
            this.sizeZ = this.sizeZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.boxObject = (__runInitializers(this, _instanceExtraInitializers), this.boxObject);
            this.prefab = this.prefab;
            this.numberOfPoints = this.numberOfPoints;
            this.sizeX = this.sizeX;
            this.sizeY = this.sizeY;
            this.sizeZ = this.sizeZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        // Initialize with the proper pattern
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("RandomPointsInsideBoxTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            this.createEvent("OnStartEvent").bind(() => {
                this.onStart();
                this.logger.debug("Onstart event triggered");
            });
        }
        onStart() {
            this.generateRandomPointsInside();
        }
        generateRandomPointsInside() {
            if (!this.boxObject || !this.prefab) {
                this.logger.debug("Error: Box object or prefab not assigned!");
                return;
            }
            const boxPosition = this.boxObject.getTransform().getWorldPosition();
            // For the TypeScript version, we're using four SceneObjects as the vertices
            // of the box instead of a direct box collider.
            // We'll use the provided sizeX, sizeY, sizeZ parameters for the box dimensions
            for (let i = 0; i < this.numberOfPoints; i++) {
                // Generate random point within the box volume
                const randomPoint = new vec3(boxPosition.x + (Math.random() - 0.5) * this.sizeX, boxPosition.y + (Math.random() - 0.5) * this.sizeY, boxPosition.z + (Math.random() - 0.5) * this.sizeZ);
                // Create a prefab instance at the calculated position
                this.createPrefabInstance(randomPoint);
            }
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
    __setFunctionName(_classThis, "RandomPointsInsideBoxTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        RandomPointsInsideBoxTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return RandomPointsInsideBoxTS = _classThis;
})();
exports.RandomPointsInsideBoxTS = RandomPointsInsideBoxTS;
//# sourceMappingURL=RandomPointsInsideBoxTS.js.map