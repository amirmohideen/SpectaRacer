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
exports.CirclePerimeterInstantiatorWithFixedArcLengthTS = void 0;
var __selfType = requireType("./CirclePerimeterInstantiatorWithFixedArcLengthTS");
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
 * Circle perimeter instantiation with fixed arc length spacing. Spawns prefabs along a circle
 * with consistent arc distance between instances, useful for precise circular layouts.
 */
let CirclePerimeterInstantiatorWithFixedArcLengthTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var CirclePerimeterInstantiatorWithFixedArcLengthTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.center = (__runInitializers(this, _instanceExtraInitializers), this.center);
            this.prefab = this.prefab;
            this.radius = this.radius;
            this.numberOfPrefabs = this.numberOfPrefabs;
            this.arcLength = this.arcLength;
            this.startAngle = this.startAngle;
            this.arcAngleSpan = this.arcAngleSpan;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.center = (__runInitializers(this, _instanceExtraInitializers), this.center);
            this.prefab = this.prefab;
            this.radius = this.radius;
            this.numberOfPrefabs = this.numberOfPrefabs;
            this.arcLength = this.arcLength;
            this.startAngle = this.startAngle;
            this.arcAngleSpan = this.arcAngleSpan;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        // Initialize with the proper pattern
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("CirclePerimeterInstantiatorWithFixedArcLengthTS", this.enableLogging || this.enableLoggingLifecycle, true);
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
        // Method to instantiate prefabs along the circle perimeter
        instantiatePrefabs() {
            if (!this.center || !this.prefab || this.radius <= 0 || this.numberOfPrefabs <= 0) {
                this.logger.debug("Error: Invalid parameters! Ensure radius and number of prefabs are greater than zero, and center/prefab are assigned.");
                return;
            }
            // Convert angles to radians
            const startAngleRad = (this.startAngle * Math.PI) / 180;
            const arcSpanRad = (this.arcAngleSpan * Math.PI) / 180;
            // Get the number of prefabs to instantiate
            let prefabCount = this.numberOfPrefabs;
            // Calculate angle step based on the number of prefabs
            const angleStep = (prefabCount > 1) ? arcSpanRad / (prefabCount - 1) : 0;
            // If we're working with a very small arc or just one prefab
            if (prefabCount <= 1 || this.arcAngleSpan <= 0) {
                prefabCount = 1;
            }
            const centerPosition = this.center.getTransform().getWorldPosition();
            for (let i = 0; i < prefabCount; i++) {
                // Calculate angle for each prefab
                const angle = startAngleRad + (i * angleStep);
                // Calculate the position on the perimeter of the circle
                const positionOnCircle = new vec3(centerPosition.x + Math.cos(angle) * this.radius, centerPosition.y + Math.sin(angle) * this.radius, centerPosition.z);
                // Create a prefab instance at the calculated position
                this.createPrefabInstance(positionOnCircle);
            }
        }
        // Helper method to create a prefab instance at a specific position
        createPrefabInstance(position) {
            if (this.prefab) {
                if (this.prefab) {
                    const instance = this.prefab.instantiate(this.sceneObject);
                    instance.getTransform().setWorldPosition(position);
                    this.logger.debug(`Created prefab instance at position: ${position.x}, ${position.y}, ${position.z}`);
                }
            }
        }
    };
    __setFunctionName(_classThis, "CirclePerimeterInstantiatorWithFixedArcLengthTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        CirclePerimeterInstantiatorWithFixedArcLengthTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return CirclePerimeterInstantiatorWithFixedArcLengthTS = _classThis;
})();
exports.CirclePerimeterInstantiatorWithFixedArcLengthTS = CirclePerimeterInstantiatorWithFixedArcLengthTS;
//# sourceMappingURL=CirclePerimeterInstantiatorWithFixedArcLengthTS.js.map