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
exports.DirectionalWorldQuery = void 0;
var __selfType = requireType("./DirectionalWorldQuery");
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
 * Directional World Query component for the Essentials Spectacles lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const WorldQueryModule = require("LensStudio:WorldQueryModule");
const EPSILON = 0.01;
let DirectionalWorldQuery = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onUpdate_decorators;
    var DirectionalWorldQuery = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.directionStart = (__runInitializers(this, _instanceExtraInitializers), this.directionStart);
            this.directionEnd = this.directionEnd;
            this.rayStart = this.rayStart;
            this.objectHitPoint = this.objectHitPoint;
            this.rayLength = this.rayLength;
            this.filterEnabled = this.filterEnabled;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isDirectionSet = false;
        }
        __initialize() {
            super.__initialize();
            this.directionStart = (__runInitializers(this, _instanceExtraInitializers), this.directionStart);
            this.directionEnd = this.directionEnd;
            this.rayStart = this.rayStart;
            this.objectHitPoint = this.objectHitPoint;
            this.rayLength = this.rayLength;
            this.filterEnabled = this.filterEnabled;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.isDirectionSet = false;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("DirectionalWorldQuery", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
            this.logger.info("DirectionalWorldQuery: Initializing...");
            this.hitTestSession = this.createHitTestSession(this.filterEnabled);
            if (!this.directionStart || !this.directionEnd || !this.rayStart) {
                this.logger.error("Please set directionStart, directionEnd, and rayStart inputs");
                return;
            }
            if (!this.objectHitPoint) {
                this.logger.error("Please set objectHitPoint input");
                return;
            }
            const visual = this.objectHitPoint.getComponent("Component.RenderMeshVisual");
            if (!visual) {
                this.logger.warn("objectHitPoint does not have a RenderMeshVisual component. It may not be visible when placed.");
            }
            this.logger.info("DirectionalWorldQuery: Initialization complete");
        }
        createHitTestSession(filterEnabled) {
            const options = HitTestSessionOptions.create();
            options.filter = filterEnabled;
            const session = WorldQueryModule.createHitTestSessionWithOptions(options);
            return session;
        }
        updateDirection() {
            const startPos = this.directionStart.getTransform().getWorldPosition();
            const endPos = this.directionEnd.getTransform().getWorldPosition();
            this.direction = endPos.sub(startPos).normalize();
            this.isDirectionSet = true;
            if (this.direction.y > 0) {
                this.direction = new vec3(-this.direction.x, -this.direction.y, -this.direction.z);
                this.logger.debug("Direction inverted to point downward");
            }
            this.logger.debug("Direction: " + this.direction.toString() + " (from " + startPos.toString() + " to " + endPos.toString() + ")");
        }
        onHitTestResult(results) {
            if (results === null) {
                this.logger.debug("DirectionalWorldQuery: No hit detected");
                this.objectHitPoint.enabled = false;
            }
            else {
                this.logger.debug("DirectionalWorldQuery: Hit detected at " + results.position.toString());
                const hitPosition = results.position;
                const hitNormal = results.normal;
                let lookDirection;
                if (1 - Math.abs(hitNormal.normalize().dot(vec3.up())) < EPSILON) {
                    lookDirection = vec3.forward();
                }
                else {
                    lookDirection = hitNormal.cross(vec3.up());
                }
                const toRotation = quat.lookAt(lookDirection, hitNormal);
                this.objectHitPoint.getTransform().setWorldPosition(hitPosition);
                this.objectHitPoint.getTransform().setWorldRotation(toRotation);
                this.objectHitPoint.enabled = true;
                this.logger.debug("Hit position: " + hitPosition.toString());
                this.logger.debug("Hit normal: " + hitNormal.toString());
                this.logger.debug("Object placed at: " + this.objectHitPoint.getTransform().getWorldPosition().toString());
            }
        }
        performWorldQuery() {
            if (!this.isDirectionSet) {
                this.updateDirection();
            }
            const rayStart = this.rayStart.getTransform().getWorldPosition();
            const scaledDirection = new vec3(this.direction.x * this.rayLength, this.direction.y * this.rayLength, this.direction.z * this.rayLength);
            const rayEnd = rayStart.add(scaledDirection);
            this.logger.debug("Ray: from " + rayStart.toString() + " to " + rayEnd.toString());
            const tryRayLengths = [this.rayLength, this.rayLength * 0.5, this.rayLength * 0.1, this.rayLength * 2];
            let hitDetected = false;
            this.hitTestSession.hitTest(rayStart, rayEnd, (results) => {
                if (results !== null) {
                    hitDetected = true;
                    this.onHitTestResult(results);
                }
                else {
                    this.logger.debug("No hit detected with primary ray length, trying alternatives...");
                }
            });
            if (!hitDetected) {
                for (let i = 0; i < tryRayLengths.length && !hitDetected; i++) {
                    const length = tryRayLengths[i];
                    if (length === this.rayLength)
                        continue;
                    const altScaledDirection = new vec3(this.direction.x * length, this.direction.y * length, this.direction.z * length);
                    const altRayEnd = rayStart.add(altScaledDirection);
                    this.logger.debug("Trying alternative ray length: " + length);
                    this.logger.debug("Alternative ray: from " + rayStart.toString() + " to " + altRayEnd.toString());
                    this.hitTestSession.hitTest(rayStart, altRayEnd, this.onHitTestResult.bind(this));
                }
            }
        }
        onUpdate() {
            this.updateDirection();
            this.performWorldQuery();
        }
        onDestroy() {
        }
    };
    __setFunctionName(_classThis, "DirectionalWorldQuery");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        DirectionalWorldQuery = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return DirectionalWorldQuery = _classThis;
})();
exports.DirectionalWorldQuery = DirectionalWorldQuery;
//# sourceMappingURL=DirectionalWorldQuery.js.map