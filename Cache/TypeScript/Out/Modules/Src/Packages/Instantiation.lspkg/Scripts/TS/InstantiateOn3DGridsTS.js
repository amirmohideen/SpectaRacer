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
exports.InstantiateOn3DGridsTS = void 0;
var __selfType = requireType("./InstantiateOn3DGridsTS");
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
 * 3D grid instantiation utility that creates volumetric grid patterns in three-dimensional space.
 * Ideal for creating voxel-based structures, particle volumes, or 3D data visualizations.
 */
let InstantiateOn3DGridsTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var InstantiateOn3DGridsTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.prefab = (__runInitializers(this, _instanceExtraInitializers), this.prefab);
            this.gridCenter = this.gridCenter;
            this.gridWidth = this.gridWidth;
            this.gridHeight = this.gridHeight;
            this.gridDepth = this.gridDepth;
            this.spacingX = this.spacingX;
            this.spacingY = this.spacingY;
            this.spacingZ = this.spacingZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            this.prefab = (__runInitializers(this, _instanceExtraInitializers), this.prefab);
            this.gridCenter = this.gridCenter;
            this.gridWidth = this.gridWidth;
            this.gridHeight = this.gridHeight;
            this.gridDepth = this.gridDepth;
            this.spacingX = this.spacingX;
            this.spacingY = this.spacingY;
            this.spacingZ = this.spacingZ;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        // Initialize with the proper pattern
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("InstantiateOn3DGridsTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            this.createEvent("OnStartEvent").bind(() => {
                this.onStart();
                this.logger.debug("Onstart event triggered");
            });
        }
        onStart() {
            this.instantiateGrid();
        }
        instantiateGrid() {
            if (!this.prefab || !this.gridCenter) {
                this.logger.debug("Please assign both the prefab and the grid center Transform.");
                return;
            }
            // Calculate the total width, height, and depth of the grid
            const totalWidth = (this.gridWidth - 1) * this.spacingX;
            const totalHeight = (this.gridHeight - 1) * this.spacingY;
            const totalDepth = (this.gridDepth - 1) * this.spacingZ;
            // Calculate the starting position so that the grid is centered at gridCenter
            const centerPosition = this.gridCenter.getTransform().getWorldPosition();
            const startPosition = new vec3(centerPosition.x - totalWidth / 2, centerPosition.y - totalHeight / 2, centerPosition.z - totalDepth / 2);
            // Loop through the width, height, and depth to instantiate the prefabs
            for (let x = 0; x < this.gridWidth; x++) {
                for (let y = 0; y < this.gridHeight; y++) {
                    for (let z = 0; z < this.gridDepth; z++) {
                        // Calculate the position for each prefab
                        const position = new vec3(startPosition.x + x * this.spacingX, startPosition.y + y * this.spacingY, startPosition.z + z * this.spacingZ);
                        // Create a prefab instance at the calculated position
                        this.createPrefabInstance(position);
                    }
                }
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
    __setFunctionName(_classThis, "InstantiateOn3DGridsTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        InstantiateOn3DGridsTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return InstantiateOn3DGridsTS = _classThis;
})();
exports.InstantiateOn3DGridsTS = InstantiateOn3DGridsTS;
//# sourceMappingURL=InstantiateOn3DGridsTS.js.map