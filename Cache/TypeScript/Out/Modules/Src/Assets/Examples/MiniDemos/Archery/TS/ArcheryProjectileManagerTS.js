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
exports.ArcheryProjectileManagerTS = void 0;
var __selfType = requireType("./ArcheryProjectileManagerTS");
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
 * Archery Projectile Manager TS handling core logic for the Essentials lens.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let ArcheryProjectileManagerTS = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var ArcheryProjectileManagerTS = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.initialSpeed = (__runInitializers(this, _instanceExtraInitializers), this.initialSpeed);
            this.gravityStrength = this.gravityStrength;
            this.dragFactor = this.dragFactor;
            this.projectile = this.projectile;
            this.shootingRayStart = this.shootingRayStart;
            this.shootingRayEnd = this.shootingRayEnd;
            this.lineA = this.lineA;
            this.lineB = this.lineB;
            this.archCharger = this.archCharger;
            this.manipulatingObject = this.manipulatingObject;
            this.chargingText = this.chargingText;
            this.scoreText = this.scoreText;
            this.rotatingTarget = this.rotatingTarget;
            this.interactableManipulation = this.interactableManipulation;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.score = 0;
            this.previousChargeLevel = 0;
            this.chargeThreshold = 1.0;
            this.shootCount = 0;
            this.canShoot = true;
            this.shotCooldownTime = 1.0;
            this.lastShotTime = 0;
        }
        __initialize() {
            super.__initialize();
            this.initialSpeed = (__runInitializers(this, _instanceExtraInitializers), this.initialSpeed);
            this.gravityStrength = this.gravityStrength;
            this.dragFactor = this.dragFactor;
            this.projectile = this.projectile;
            this.shootingRayStart = this.shootingRayStart;
            this.shootingRayEnd = this.shootingRayEnd;
            this.lineA = this.lineA;
            this.lineB = this.lineB;
            this.archCharger = this.archCharger;
            this.manipulatingObject = this.manipulatingObject;
            this.chargingText = this.chargingText;
            this.scoreText = this.scoreText;
            this.rotatingTarget = this.rotatingTarget;
            this.interactableManipulation = this.interactableManipulation;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.score = 0;
            this.previousChargeLevel = 0;
            this.chargeThreshold = 1.0;
            this.shootCount = 0;
            this.canShoot = true;
            this.shotCooldownTime = 1.0;
            this.lastShotTime = 0;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("ArcheryProjectileManagerTS", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onAwake()");
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            const onTriggerStartCallback = (event) => {
                this.logger.debug("TRIGGER START DETECTED");
                this.logger.info("Trigger start detected");
            };
            const onTriggerEndCallback = (event) => {
                this.logger.debug("TRIGGER END DETECTED - Not shooting on release");
                this.logger.info("TRIGGER END DETECTED - No action needed");
            };
            this.interactableManipulation.onInteractorTriggerStart(onTriggerStartCallback);
            this.interactableManipulation.onInteractorTriggerEnd(onTriggerEndCallback);
            if (this.chargingText) {
                ;
                this.chargingText.text = "0.00";
            }
            if (this.scoreText) {
                ;
                this.scoreText.text = "Score: 0";
            }
            this.logger.debug("ArcheryProjectileManagerTS initialized");
        }
        onUpdate() {
            if (!this.canShoot) {
                const currentTime = getTime();
                const timeSinceLastShot = currentTime - this.lastShotTime;
                if (timeSinceLastShot > this.shotCooldownTime) {
                    this.canShoot = true;
                    this.logger.debug("Ready to shoot again");
                }
            }
            if (this.manipulatingObject && this.lineA && this.lineB) {
                const closestPoint = this.closestPointOnLine(this.manipulatingObject.getTransform().getWorldPosition(), this.lineA.getTransform().getWorldPosition(), this.lineB.getTransform().getWorldPosition());
                this.archCharger.getTransform().setWorldPosition(closestPoint);
                const startPos = this.lineA.getTransform().getWorldPosition();
                const endPos = this.lineB.getTransform().getWorldPosition();
                const lineVector = endPos.sub(startPos);
                const pointVector = closestPoint.sub(startPos);
                const dotProduct = pointVector.dot(lineVector.normalize());
                const lineLength = lineVector.length;
                const chargeLevel = lineLength > 0 ? Math.max(0, Math.min(1, dotProduct / lineLength)) : 0;
                this.logger.debug("Current charge level: " +
                    chargeLevel.toFixed(2) +
                    ", Previous: " +
                    this.previousChargeLevel.toFixed(2) +
                    ", Can Shoot: " +
                    this.canShoot);
                if (chargeLevel < 0.9 && this.previousChargeLevel >= 0.9) {
                    this.canShoot = true;
                    this.logger.debug("Charge reset, ready for next shot");
                }
                if (chargeLevel >= this.chargeThreshold && this.previousChargeLevel < this.chargeThreshold && this.canShoot) {
                    this.logger.debug("THRESHOLD CROSSED! SHOOTING ARROW NOW!");
                    this.logger.info("SHOOTING ARROW - Threshold crossed from below!");
                    this.shootArrow();
                    this.canShoot = false;
                    this.lastShotTime = getTime();
                }
                this.previousChargeLevel = chargeLevel;
                if (this.chargingText) {
                    ;
                    this.chargingText.text = chargeLevel.toFixed(2);
                    if (chargeLevel >= this.chargeThreshold) {
                        if (!this.canShoot) {
                            ;
                            this.chargingText.textColor = new vec4(1, 0.5, 0, 1);
                        }
                        else {
                            ;
                            this.chargingText.textColor = new vec4(0, 1, 0, 1);
                        }
                    }
                    else {
                        ;
                        this.chargingText.textColor = new vec4(1, 1, 1, 1);
                    }
                }
                if (this.scoreText) {
                    ;
                    this.scoreText.text = "Score: " + this.score;
                }
            }
        }
        shootArrow() {
            this.shootCount++;
            this.logger.debug("SHOOT ARROW CALLED! Shot #" + this.shootCount);
            this.logger.info("SHOOTING ARROW - Shot #" + this.shootCount);
            if (!this.shootingRayStart || !this.shootingRayEnd) {
                this.logger.debug("Shooting ray points not set");
                return;
            }
            const startPos = this.shootingRayStart.getTransform().getWorldPosition();
            const endPos = this.shootingRayEnd.getTransform().getWorldPosition();
            if (startPos.distance(endPos) < 0.001) {
                this.logger.debug("Start and end positions are too close");
                return;
            }
            const shootDir = endPos.sub(startPos).normalize();
            this.logger.debug("Shooting from: " + startPos.toString());
            this.logger.debug("Shooting to: " + endPos.toString());
            this.logger.debug("Direction vector: " + shootDir.toString());
            if (this.projectile) {
                const instance = this.projectile.instantiate(this.sceneObject);
                if (!instance) {
                    this.logger.debug("Failed to instantiate projectile");
                    return;
                }
                instance.enabled = true;
                instance.getTransform().setWorldPosition(startPos);
                const lookRotation = this.getLookRotation(shootDir);
                instance.getTransform().setWorldRotation(lookRotation);
                this.logger.debug("Rotation set to align projectile with direction: " + shootDir.toString());
                const objectMatrix = instance.getTransform().getWorldTransform();
                const worldForward = objectMatrix.multiplyDirection(new vec3(0, 0, 1));
                this.logger.debug("Projectile Z-axis (world space): " + worldForward.normalize().toString());
                const physicsBody = instance.getComponent("Physics.BodyComponent");
                if (physicsBody) {
                    physicsBody.velocity = new vec3(0, 0, 0);
                    physicsBody.angularVelocity = new vec3(0, 0, 0);
                    try {
                        this.logger.debug("Using manual motion for more reliable trajectory");
                        physicsBody.enabled = false;
                        this.setupManualMotion(instance, shootDir);
                    }
                    catch (e) {
                        this.logger.debug("Error applying physics: " + e.toString());
                        this.logger.error("Error with physics - falling back to manual motion");
                        this.setupManualMotion(instance, shootDir);
                    }
                    this.setupCollisionDetection(instance);
                }
                else {
                    this.logger.debug("No physics body found on projectile - using manual motion");
                    this.setupManualMotion(instance, shootDir);
                }
            }
            else {
                this.logger.error("Projectile prefab not assigned!");
            }
        }
        setupManualMotion(projectile, direction) {
            const moveScript = projectile.createComponent("ScriptComponent");
            if (moveScript) {
                moveScript.startPosition = projectile.getTransform().getWorldPosition();
                moveScript.direction = direction.normalize();
                moveScript.speed = this.initialSpeed;
                moveScript.gravity = this.gravityStrength;
                moveScript.drag = this.dragFactor;
                moveScript.flightTime = 0;
                this.logger.debug("Starting position: " + moveScript.startPosition.toString());
                this.logger.debug("Direction: " + moveScript.direction.toString());
                this.logger.debug("Speed: " + moveScript.speed);
                moveScript.createEvent("UpdateEvent").bind(() => {
                    const dt = getDeltaTime();
                    moveScript.flightTime += dt;
                    const baseVelocity = moveScript.direction.uniformScale(moveScript.speed);
                    const horizontalOffset = baseVelocity.uniformScale(moveScript.flightTime);
                    const time_squared = moveScript.flightTime * moveScript.flightTime;
                    const gravityDrop = new vec3(0, -0.5 * moveScript.gravity * time_squared, 0);
                    const dragFactor = Math.max(0, 1.0 - moveScript.drag * moveScript.flightTime);
                    const horizontalWithDrag = horizontalOffset.uniformScale(dragFactor);
                    const newPos = moveScript.startPosition.add(horizontalWithDrag).add(gravityDrop);
                    projectile.getTransform().setWorldPosition(newPos);
                    const horizVelocity = baseVelocity.uniformScale(dragFactor);
                    const vertVelocity = new vec3(0, -moveScript.gravity * moveScript.flightTime, 0);
                    const currentVelocity = horizVelocity.add(vertVelocity);
                    if (currentVelocity.length > 0.001) {
                        const flightDir = currentVelocity.normalize();
                        const lookRotation = this.getLookRotation(flightDir);
                        projectile.getTransform().setWorldRotation(lookRotation);
                    }
                });
                this.setupSimpleCollisionDetection(projectile, moveScript);
            }
        }
        setupCollisionDetection(projectile) {
            const collider = projectile.getComponent("Physics.ColliderComponent");
            if (collider) {
                collider.onOverlapEnter.add((e) => {
                    const hitObject = e.overlap.collider.getSceneObject();
                    if ((this.rotatingTarget && hitObject === this.rotatingTarget) || hitObject.name.includes("Target")) {
                        this.score += 10;
                        this.logger.debug("Target hit! Score: " + this.score);
                        if (this.scoreText) {
                            ;
                            this.scoreText.text = "Score: " + this.score;
                        }
                        projectile.destroy();
                    }
                });
            }
        }
        setupSimpleCollisionDetection(projectile, moveScript) {
            moveScript.createEvent("UpdateEvent").bind(() => {
                const projectilePos = projectile.getTransform().getWorldPosition();
                if (this.rotatingTarget) {
                    const targetPos = this.rotatingTarget.getTransform().getWorldPosition();
                    const distance = targetPos.sub(projectilePos).length;
                    if (distance < 5.0) {
                        this.score += 10;
                        this.logger.debug("Rotating target hit! Score: " + this.score);
                        if (this.scoreText) {
                            ;
                            this.scoreText.text = "Score: " + this.score;
                        }
                        projectile.destroy();
                    }
                }
            });
        }
        closestPointOnLine(point, start, end) {
            const lineDirection = end.sub(start);
            const lineLength = lineDirection.length;
            const normalizedDirection = lineDirection.normalize();
            const pointDirection = point.sub(start);
            const dot = pointDirection.dot(normalizedDirection);
            const clampedDot = Math.max(0, Math.min(dot, lineLength));
            return start.add(normalizedDirection.uniformScale(clampedDot));
        }
        getLookRotation(forward) {
            forward = forward.normalize();
            let upVector = new vec3(0, 1, 0);
            if (Math.abs(forward.dot(upVector)) > 0.99999) {
                upVector = new vec3(1, 0, 0);
            }
            const right = upVector.cross(forward).normalize();
            const up = forward.cross(right).normalize();
            const m00 = right.x;
            const m01 = right.y;
            const m02 = right.z;
            const m10 = up.x;
            const m11 = up.y;
            const m12 = up.z;
            const m20 = forward.x;
            const m21 = forward.y;
            const m22 = forward.z;
            const trace = m00 + m11 + m22;
            const q = new quat(0, 0, 0, 1);
            if (trace > 0) {
                const s = 0.5 / Math.sqrt(trace + 1.0);
                q.w = 0.25 / s;
                q.x = (m12 - m21) * s;
                q.y = (m20 - m02) * s;
                q.z = (m01 - m10) * s;
            }
            else if (m00 > m11 && m00 > m22) {
                const s = 2.0 * Math.sqrt(1.0 + m00 - m11 - m22);
                q.w = (m12 - m21) / s;
                q.x = 0.25 * s;
                q.y = (m01 + m10) / s;
                q.z = (m20 + m02) / s;
            }
            else if (m11 > m22) {
                const s = 2.0 * Math.sqrt(1.0 + m11 - m00 - m22);
                q.w = (m20 - m02) / s;
                q.x = (m01 + m10) / s;
                q.y = 0.25 * s;
                q.z = (m12 + m21) / s;
            }
            else {
                const s = 2.0 * Math.sqrt(1.0 + m22 - m00 - m11);
                q.w = (m01 - m10) / s;
                q.x = (m20 + m02) / s;
                q.y = (m12 + m21) / s;
                q.z = 0.25 * s;
            }
            return q;
        }
    };
    __setFunctionName(_classThis, "ArcheryProjectileManagerTS");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ArcheryProjectileManagerTS = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ArcheryProjectileManagerTS = _classThis;
})();
exports.ArcheryProjectileManagerTS = ArcheryProjectileManagerTS;
//# sourceMappingURL=ArcheryProjectileManagerTS.js.map