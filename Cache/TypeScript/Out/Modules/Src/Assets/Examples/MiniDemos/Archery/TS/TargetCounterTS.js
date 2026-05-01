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
exports.TargetCounterTS = void 0;
var __selfType = requireType("./TargetCounterTS");
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
 * Target Counter TS component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let TargetCounterTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var TargetCounterTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.counterText = (__runInitializers(this, _instanceExtraInitializers), this.counterText);
            this.arrowTag = this.arrowTag;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.counter = 0;
        }
        __initialize() {
            super.__initialize();
            this.counterText = (__runInitializers(this, _instanceExtraInitializers), this.counterText);
            this.arrowTag = this.arrowTag;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.counter = 0;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("TargetCounterTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.initializeCollisionDetection();
        }
        initializeCollisionDetection() {
            const collider = this.getSceneObject().getComponent("Physics.ColliderComponent");
            if (collider) {
                if (collider.onCollisionEnter) {
                    ;
                    collider.onCollisionEnter.add((e) => {
                        this.onCollisionEnter(e);
                    });
                    this.logger.info("Target counter: Collision detection initialized");
                }
                else {
                    if (collider.onOverlapEnter) {
                        ;
                        collider.onOverlapEnter.add((e) => {
                            this.onOverlapEnter(e);
                        });
                        this.logger.info("Target counter: Overlap detection initialized");
                    }
                    else {
                        this.logger.warn("Target counter: No collision or overlap events available");
                        this.createEvent("UpdateEvent").bind(this.manualCollisionCheck.bind(this));
                    }
                }
            }
            else {
                this.logger.warn("Target counter: No collider component found");
                this.createEvent("UpdateEvent").bind(this.manualCollisionCheck.bind(this));
            }
            this.updateCounterDisplay();
        }
        onCollisionEnter(collisionData) {
            const collidingObject = collisionData.collision.getOtherObject(this.getSceneObject());
            if (collidingObject && this.isArrow(collidingObject)) {
                this.incrementCounter();
            }
        }
        onOverlapEnter(overlapData) {
            const overlappingObject = overlapData.overlap.collider.getSceneObject();
            if (overlappingObject && this.isArrow(overlappingObject)) {
                this.incrementCounter();
            }
        }
        manualCollisionCheck() {
            this.logger.warn("Using manual collision detection for target counter. This is less accurate.");
        }
        isArrow(obj) {
            const objName = obj.name.toLowerCase();
            return objName.includes("arrow") || objName.includes("projectile");
        }
        incrementCounter() {
            this.counter++;
            this.logger.info("Target hit! Counter: " + this.counter);
            this.updateCounterDisplay();
        }
        updateCounterDisplay() {
            if (this.counterText) {
                const formattedCounter = this.counter.toString().padStart(2, "0");
                this.counterText.text = formattedCounter;
            }
        }
    };
    __setFunctionName(_classThis, "TargetCounterTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TargetCounterTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TargetCounterTS = _classThis;
})();
exports.TargetCounterTS = TargetCounterTS;
//# sourceMappingURL=TargetCounterTS.js.map