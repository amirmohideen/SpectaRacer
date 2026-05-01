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
exports.SoftPressController = void 0;
var __selfType = requireType("./SoftPressControllerTS");
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
 * Soft Press Controller for the Essentials Spectacles lens experience.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const animate_1 = require("SpectaclesInteractionKit.lspkg/Utils/animate");
const mathUtils_1 = require("SpectaclesInteractionKit.lspkg/Utils/mathUtils");
let SoftPressController = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _update_decorators;
    var SoftPressController = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.colliderObject = (__runInitializers(this, _instanceExtraInitializers), this.colliderObject);
            this.interactorObject = this.interactorObject;
            this.closestPointMarker = this.closestPointMarker;
            this.topVertex0 = this.topVertex0;
            this.topVertex1 = this.topVertex1;
            this.topVertex2 = this.topVertex2;
            this.topVertex3 = this.topVertex3;
            this.bottomVertex0 = this.bottomVertex0;
            this.bottomVertex1 = this.bottomVertex1;
            this.bottomVertex2 = this.bottomVertex2;
            this.bottomVertex3 = this.bottomVertex3;
            this.pressThreshold = this.pressThreshold;
            this.resetDuration = this.resetDuration;
            this.next = this.next;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isInteracting = false;
            this.pressValue = 0;
            this.hasTriggeredEvent = false;
            this.isResetting = false;
            this.resetProgress = 0;
            this.activeOverlapId = null;
        }
        __initialize() {
            super.__initialize();
            this.colliderObject = (__runInitializers(this, _instanceExtraInitializers), this.colliderObject);
            this.interactorObject = this.interactorObject;
            this.closestPointMarker = this.closestPointMarker;
            this.topVertex0 = this.topVertex0;
            this.topVertex1 = this.topVertex1;
            this.topVertex2 = this.topVertex2;
            this.topVertex3 = this.topVertex3;
            this.bottomVertex0 = this.bottomVertex0;
            this.bottomVertex1 = this.bottomVertex1;
            this.bottomVertex2 = this.bottomVertex2;
            this.bottomVertex3 = this.bottomVertex3;
            this.pressThreshold = this.pressThreshold;
            this.resetDuration = this.resetDuration;
            this.next = this.next;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isInteracting = false;
            this.pressValue = 0;
            this.hasTriggeredEvent = false;
            this.isResetting = false;
            this.resetProgress = 0;
            this.activeOverlapId = null;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("SoftPressController", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this.collider = this.colliderObject.getComponent("Physics.ColliderComponent");
            const topPositions = [
                this.topVertex0.getTransform().getWorldPosition(),
                this.topVertex1.getTransform().getWorldPosition(),
                this.topVertex2.getTransform().getWorldPosition(),
                this.topVertex3.getTransform().getWorldPosition()
            ];
            const bottomPositions = [
                this.bottomVertex0.getTransform().getWorldPosition(),
                this.bottomVertex1.getTransform().getWorldPosition(),
                this.bottomVertex2.getTransform().getWorldPosition(),
                this.bottomVertex3.getTransform().getWorldPosition()
            ];
            const worldTop = topPositions.reduce((sum, pos) => sum.add(pos), vec3.zero()).scale(new vec3(0.25, 0.25, 0.25));
            const worldBottom = bottomPositions
                .reduce((sum, pos) => sum.add(pos), vec3.zero())
                .scale(new vec3(0.25, 0.25, 0.25));
            const colliderTransform = this.colliderObject.getTransform();
            const inverseWorldTransform = colliderTransform.getInvertedWorldTransform();
            this.localTop = inverseWorldTransform.multiplyPoint(worldTop);
            this.localBottom = inverseWorldTransform.multiplyPoint(worldBottom);
            this.pressValue = 0;
            this.lastClosestPointLocal = this.localTop;
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.collider.onOverlapEnter.add((e) => {
                const overlap = e.overlap;
                if (overlap.collider.getSceneObject() === this.interactorObject) {
                    if (this.isEnteringFromTop()) {
                        this.logger.debug(`OverlapEnter(${overlap.id}): Interactor entered from the top. Starting soft press interaction.`);
                        this.isInteracting = true;
                        this.isResetting = false;
                        this.resetProgress = 0;
                        this.activeOverlapId = overlap.id;
                    }
                    else {
                        this.logger.debug(`OverlapEnter(${overlap.id}): Interactor did not enter from the top. Ignoring.`);
                    }
                }
            });
            this.collider.onOverlapStay.add((e) => {
                const overlap = e.overlap;
                if (overlap.collider.getSceneObject() === this.interactorObject &&
                    this.isInteracting &&
                    overlap.id === this.activeOverlapId) {
                    this.logger.debug(`OverlapStay(${overlap.id}): Processing soft press interaction.`);
                    this.calculatePressValue();
                }
            });
            this.collider.onOverlapExit.add((e) => {
                const overlap = e.overlap;
                if (overlap.collider.getSceneObject() === this.interactorObject && overlap.id === this.activeOverlapId) {
                    this.logger.debug(`OverlapExit(${overlap.id}): Interactor exited the collider. Starting smooth reset of press value.`);
                    this.isInteracting = false;
                    this.isResetting = true;
                    this.resetProgress = 0;
                    this.activeOverlapId = null;
                }
            });
        }
        isEnteringFromTop() {
            const interactorPos = this.interactorObject.getTransform().getWorldPosition();
            const colliderPos = this.colliderObject.getTransform().getWorldPosition();
            const colliderUp = this.colliderObject.getTransform().up;
            const directionToInteractor = interactorPos.sub(colliderPos).normalize();
            const dot = directionToInteractor.dot(colliderUp);
            return dot > 0.5;
        }
        calculatePressValue() {
            const interactorPos = this.interactorObject.getTransform().getWorldPosition();
            const colliderTransform = this.colliderObject.getTransform();
            const inverseWorldTransform = colliderTransform.getInvertedWorldTransform();
            const worldTop = colliderTransform.getWorldTransform().multiplyPoint(this.localTop);
            const worldBottom = colliderTransform.getWorldTransform().multiplyPoint(this.localBottom);
            const topToBottom = worldBottom.sub(worldTop);
            const topToInteractor = interactorPos.sub(worldTop);
            const projectionRatio = (0, mathUtils_1.clamp)(topToInteractor.dot(topToBottom) / topToBottom.dot(topToBottom), 0, 1);
            const closestPointWorld = worldTop.add(topToBottom.scale(new vec3(projectionRatio, projectionRatio, projectionRatio)));
            const closestPointLocal = inverseWorldTransform.multiplyPoint(closestPointWorld);
            this.lastClosestPointLocal = closestPointLocal;
            const localTopToBottom = this.localBottom.sub(this.localTop);
            const topToClosest = closestPointLocal.sub(this.localTop);
            const projectionLength = topToClosest.dot(localTopToBottom.normalize());
            const totalLength = localTopToBottom.length;
            const newPressValue = (0, mathUtils_1.clamp)(projectionLength / totalLength, 0, 1);
            this.pressValue = newPressValue;
            this.logger.debug(`Press value: ${this.pressValue}`);
            if (this.closestPointMarker) {
                this.closestPointMarker.getTransform().setWorldPosition(closestPointWorld);
            }
            if (this.pressValue >= this.pressThreshold && !this.hasTriggeredEvent) {
                this.onPressThresholdReached();
                this.hasTriggeredEvent = true;
            }
            if (this.pressValue <= 0 && this.hasTriggeredEvent) {
                this.logger.debug("Press value reset to 0. Event can trigger again on next press.");
                this.hasTriggeredEvent = false;
            }
        }
        smoothReset() {
            if (!this.isResetting)
                return;
            this.resetProgress += getDeltaTime() / this.resetDuration;
            this.resetProgress = (0, mathUtils_1.clamp)(this.resetProgress, 0, 1);
            const interpolatedPointLocal = (0, animate_1.mix)(this.lastClosestPointLocal, this.localTop, this.resetProgress);
            const topToBottom = this.localBottom.sub(this.localTop);
            const topToCurrent = interpolatedPointLocal.sub(this.localTop);
            const projectionLength = topToCurrent.dot(topToBottom.normalize());
            const totalLength = topToBottom.length;
            this.pressValue = (0, mathUtils_1.clamp)(projectionLength / totalLength, 0, 1);
            if (this.closestPointMarker) {
                const colliderTransform = this.colliderObject.getTransform();
                const interpolatedPointWorld = colliderTransform.getWorldTransform().multiplyPoint(interpolatedPointLocal);
                this.closestPointMarker.getTransform().setWorldPosition(interpolatedPointWorld);
            }
            if (this.pressValue <= 0 && this.hasTriggeredEvent) {
                this.logger.debug("Press value reset to 0 during smooth reset. Event can trigger again on next press.");
                this.hasTriggeredEvent = false;
            }
            if (this.resetProgress >= 1) {
                this.isResetting = false;
                this.resetProgress = 0;
                this.pressValue = 0;
                this.lastClosestPointLocal = this.localTop;
                this.logger.debug("Smooth reset complete.");
            }
        }
        onPressThresholdReached() {
            this.logger.debug(`Press threshold of ${this.pressThreshold} reached! Triggering event.`);
            if (this.next) {
                this.navigateToNext();
            }
            else {
                this.navigateToPrevious();
            }
        }
        navigateToNext() {
            this.logger.info("PRESSED FOR NEXT ACTION - Going to next slide");
        }
        navigateToPrevious() {
            this.logger.info("PRESSED FOR PREVIOUS ACTION - Going to previous slide");
        }
        update() {
            if (this.isInteracting) {
                this.calculatePressValue();
            }
            if (this.isResetting) {
                this.smoothReset();
            }
        }
    };
    __setFunctionName(_classThis, "SoftPressController");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _update_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _update_decorators, { kind: "method", name: "update", static: false, private: false, access: { has: obj => "update" in obj, get: obj => obj.update }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        SoftPressController = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return SoftPressController = _classThis;
})();
exports.SoftPressController = SoftPressController;
//# sourceMappingURL=SoftPressControllerTS.js.map