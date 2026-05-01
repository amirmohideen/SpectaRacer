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
exports.RandomPointsInsideSphereTS = void 0;
var __selfType = requireType("./RandomPointsInsideSphereTS");
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
 * Random sphere volume instantiation utility that spawns prefabs at random points inside a
 * spherical volume. Perfect for particle systems, debris fields, or organic distributions.
 */
let RandomPointsInsideSphereTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var RandomPointsInsideSphereTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.sphere = (__runInitializers(this, _instanceExtraInitializers), this.sphere);
            this.prefab = this.prefab;
            this.numberOfPoints = this.numberOfPoints;
            this.radius = this.radius;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.sphere = (__runInitializers(this, _instanceExtraInitializers), this.sphere);
            this.prefab = this.prefab;
            this.numberOfPoints = this.numberOfPoints;
            this.radius = this.radius;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        // Initialize with the proper pattern
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("RandomPointsInsideSphereTS", this.enableLogging || this.enableLoggingLifecycle, true);
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
            if (!this.sphere || !this.prefab) {
                this.logger.debug("Error: Sphere or prefab not assigned!");
                return;
            }
            const spherePosition = this.sphere.getTransform().getWorldPosition();
            for (let i = 0; i < this.numberOfPoints; i++) {
                // Generate a random point inside a unit sphere
                const randomPoint = this.randomPointInsideUnitSphere();
                // Scale by the radius and offset by the sphere position
                const randomPointInsideSphere = new vec3(spherePosition.x + randomPoint.x * this.radius, spherePosition.y + randomPoint.y * this.radius, spherePosition.z + randomPoint.z * this.radius);
                // Create a prefab instance at the calculated position
                this.createPrefabInstance(randomPointInsideSphere);
            }
        }
        // Helper method to create a random point inside a unit sphere
        randomPointInsideUnitSphere() {
            // Implementation of the rejection sampling method
            while (true) {
                // Generate a random point in a cube
                const x = Math.random() * 2 - 1; // Range: -1 to 1
                const y = Math.random() * 2 - 1; // Range: -1 to 1
                const z = Math.random() * 2 - 1; // Range: -1 to 1
                // Check if the point is inside the unit sphere
                const lengthSquared = x * x + y * y + z * z;
                if (lengthSquared <= 1) {
                    return new vec3(x, y, z);
                }
                // If not inside, try again
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
    __setFunctionName(_classThis, "RandomPointsInsideSphereTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        RandomPointsInsideSphereTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return RandomPointsInsideSphereTS = _classThis;
})();
exports.RandomPointsInsideSphereTS = RandomPointsInsideSphereTS;
//# sourceMappingURL=RandomPointsInsideSphereTS.js.map