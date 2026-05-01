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
exports.EventType = exports.InteractableHelper = void 0;
var __selfType = requireType("./InteractableHelper");
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
const LSTween_1 = require("LSTween.lspkg/Examples/Scripts/LSTween");
const Easing_1 = require("LSTween.lspkg/TweenJS/Easing");
const Interactable_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/Interactable/Interactable");
const SceneObjectUtils_1 = require("Utilities.lspkg/Scripts/Utils/SceneObjectUtils");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let InteractableHelper = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _initialize_decorators;
    var InteractableHelper = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.onHoverEnter = (__runInitializers(this, _instanceExtraInitializers), this.onHoverEnter);
            this.onHoverExit = this.onHoverExit;
            this.onPinchDown = this.onPinchDown;
            this.onPinchUp_Select = this.onPinchUp_Select;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.hoverEnterCurrentIterationIndex = 0;
            this.hoverExitCurrentIterationIndex = 0;
            this.triggerDownCurrentIterationIndex = 0;
            this.triggerUpCurrentIterationIndex = 0;
        }
        __initialize() {
            super.__initialize();
            this.onHoverEnter = (__runInitializers(this, _instanceExtraInitializers), this.onHoverEnter);
            this.onHoverExit = this.onHoverExit;
            this.onPinchDown = this.onPinchDown;
            this.onPinchUp_Select = this.onPinchUp_Select;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.hoverEnterCurrentIterationIndex = 0;
            this.hoverExitCurrentIterationIndex = 0;
            this.triggerDownCurrentIterationIndex = 0;
            this.triggerUpCurrentIterationIndex = 0;
        }
        /**
         * Called when component wakes up - initialize logger and setup collider
         */
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("InteractableHelper", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
            }
            // Use Utilities to get or create collider component
            const physicsCollider = SceneObjectUtils_1.SceneObjectUtils.getOrCreateComponent(this.getSceneObject(), "ColliderComponent");
            // Init iteration through children
            this.initIterateThroughChildren(this.onHoverEnter);
            this.initIterateThroughChildren(this.onHoverExit);
            this.initIterateThroughChildren(this.onPinchDown);
            this.initIterateThroughChildren(this.onPinchUp_Select);
            if (this.enableLogging) {
                this.logger.info("InteractableHelper initialized");
            }
        }
        /**
         * Called on the first frame when the scene starts
         * Automatically bound to OnStartEvent via SnapDecorators
         */
        initialize() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: initialize() - Scene started");
            }
            this.setupInteractableCallbacks();
        }
        /**
         * Sets up interactable component and event callbacks
         */
        setupInteractableCallbacks() {
            // Use Utilities to get or create interactable component
            this.interactable = SceneObjectUtils_1.SceneObjectUtils.getOrCreateComponent(this.getSceneObject(), Interactable_1.Interactable.getTypeName());
            if (this.enableLogging) {
                this.logger.info("Interactable callbacks setup complete");
            }
            this.interactable.onHoverEnter(() => {
                if (this.enableLogging) {
                    this.logger.debug("Hover Enter triggered");
                }
                this.onHoverEnter.forEach((item) => {
                    if (!isNull(item.sceneObject)) {
                        this.response(item, EventType.HoverEnter);
                    }
                    else {
                        this.logger.error("Missing SceneObject in On Hover Enter Event");
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing SceneObject in On Hover Enter Event. Assign SceneObject");
                    }
                });
                this.hoverEnterCurrentIterationIndex++;
            });
            this.interactable.onHoverExit(() => {
                if (this.enableLogging) {
                    this.logger.debug("Hover Exit triggered");
                }
                this.onHoverExit.forEach((item) => {
                    if (!isNull(item.sceneObject)) {
                        this.response(item, EventType.HoverExit);
                    }
                    else {
                        this.logger.error("Missing SceneObject in On Hover Exit Event");
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing SceneObject in On Hover Exit Event. Assign SceneObject");
                    }
                });
                this.hoverExitCurrentIterationIndex++;
            });
            this.interactable.onTriggerStart(() => {
                if (this.enableLogging) {
                    this.logger.debug("Trigger Start (Pinch Down) triggered");
                }
                this.onPinchDown.forEach((item) => {
                    if (!isNull(item.sceneObject)) {
                        this.response(item, EventType.TriggerDown);
                    }
                    else {
                        this.logger.error("Missing SceneObject in On Pinch Down Event");
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing SceneObject in On Pinch Down Event. Assign SceneObject");
                    }
                });
                this.triggerDownCurrentIterationIndex++;
            });
            this.interactable.onTriggerEnd(() => {
                if (this.enableLogging) {
                    this.logger.debug("Trigger End (Pinch Up/Select) triggered");
                }
                this.onPinchUp_Select.forEach((item) => {
                    if (!isNull(item.sceneObject)) {
                        this.response(item, EventType.TriggerUp);
                    }
                    else {
                        this.logger.error("Missing SceneObject in On Pinch Up Event");
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing SceneObject in On Pinch Up Event. Assign SceneObject");
                    }
                });
                this.triggerUpCurrentIterationIndex++;
            });
        }
        response(item, eventType) {
            switch (item.eventResponseType) {
                case 0: {
                    //set state
                    const setStateDelayedCallback = this.createEvent("DelayedCallbackEvent");
                    setStateDelayedCallback.bind(() => { this.setState(item); });
                    setStateDelayedCallback.reset(item.delay);
                    break;
                }
                case 1:
                    //toggle
                    item.sceneObject.enabled = !item.sceneObject.enabled;
                    break;
                case 2:
                    //iterate through children
                    this.iterateThroughChildren(item, eventType);
                    break;
                case 3:
                    //animate
                    this.playTransformAnimations(item, eventType);
                    break;
                case 4:
                    //play custom animation
                    this.playCustomAnimation(item, eventType);
                    break;
                case 5:
                    //material property animation
                    this.playMaterialPropertyAnimation(item);
                    break;
                case 6:
                    //material color animation
                    this.changeColor(item);
                    break;
                case 7:
                    //callback
                    this.useCallback(item);
                    break;
                case 8:
                    //blendshape
                    this.animateBlendshape(item, eventType);
                    break;
                case 9:
                    //play audio clip
                    this.playAudioClip(item, eventType);
                    break;
                case 10:
                    this.playVideoTexture(item);
                    break;
            }
        }
        setState(item) {
            switch (item.state) {
                case 0:
                    //on
                    item.sceneObject.enabled = true;
                    break;
                case 1:
                    //off
                    item.sceneObject.enabled = false;
                    break;
            }
        }
        initIterateThroughChildren(itemsArray) {
            for (let i = 0; i < itemsArray.length; i++) {
                const item = itemsArray[i];
                if (item.eventResponseType == 2) {
                    const children = item.sceneObject.children;
                    if (children.length == 0) {
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + " needs " + item.sceneObject.name + " to contain children SceneObjects to iterate through. Add children SceneObjects to " + item.sceneObject.name);
                    }
                    children[0].enabled = true;
                    for (let i = 1; i < children.length; i++) {
                        children[i].enabled = false;
                    }
                }
            }
        }
        iterateThroughChildren(item, eventType) {
            const iterationIndex = this.setIterationIndex(eventType);
            const childrenList = item.sceneObject.children;
            const currentIndexItem = childrenList[iterationIndex % childrenList.length];
            currentIndexItem.enabled = false;
            const nextIndexItem = childrenList[(iterationIndex + 1) % childrenList.length];
            nextIndexItem.enabled = true;
        }
        playTransformAnimations(item, eventType) {
            if (item.animations.length == 0)
                return;
            for (let i = 0; i < item.animations.length; i++) {
                let tween;
                const animationInfo = item.animations[i];
                switch (animationInfo.animationType) {
                    case 0:
                        //move local
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.moveToLocal(item.sceneObject.getTransform(), animationInfo.endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.moveFromToLocal(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.moveFromToLocal(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                    case 1:
                        //move global
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.moveToWorld(item.sceneObject.getTransform(), animationInfo.endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.moveFromToWorld(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.moveFromToWorld(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                    case 2:
                        //scale local
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.scaleToLocal(item.sceneObject.getTransform(), animationInfo.endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.scaleFromToLocal(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.scaleFromToLocal(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                    case 3:
                        //scale global
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.scaleToWorld(item.sceneObject.getTransform(), animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.scaleFromToWorld(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.scaleFromToWorld(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                    case 4:
                        //rotate local
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.rotateToLocalInDegrees(item.sceneObject.getTransform(), animationInfo.endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.rotateFromToLocalInDegrees(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.rotateFromToLocalInDegrees(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                    case 5:
                        //rotate global
                        switch (animationInfo.playOption) {
                            case 0:
                                //play from current value
                                tween = LSTween_1.LSTween.rotateToWorldInDegrees(item.sceneObject.getTransform(), animationInfo.endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 1:
                                //play from set value
                                tween = LSTween_1.LSTween.rotateFromToWorldInDegrees(item.sceneObject.getTransform(), animationInfo.startValue, animationInfo.endValue, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            case 2: {
                                //toggle
                                const iterationIndex = this.setIterationIndex(eventType);
                                let startVal, endVal;
                                if (iterationIndex % 2 == 0) {
                                    startVal = animationInfo.a;
                                    endVal = animationInfo.b;
                                }
                                if (iterationIndex % 2 == 1) {
                                    startVal = animationInfo.b;
                                    endVal = animationInfo.a;
                                }
                                tween = LSTween_1.LSTween.rotateFromToWorldInDegrees(item.sceneObject.getTransform(), startVal, endVal, animationInfo.animationDurationInSeconds * 1000.0);
                                break;
                            }
                        }
                        break;
                }
                tween.delay(animationInfo.delay * 1000.0);
                this.setEasing(tween, animationInfo.easingData);
                tween.onStart(() => {
                    if (animationInfo.doOnStart == true) {
                        if (animationInfo.onStartAction.actionType == 0) {
                            //do callback
                            this.createMyCallback(animationInfo.onStartAction.script, animationInfo.onStartAction.functionName)("a");
                        }
                        if (animationInfo.onStartAction.actionType == 1) {
                            //set On Start
                            animationInfo.onStartAction.targetObjects.forEach((obj) => {
                                if (!isNull(obj.targetObject)) {
                                    obj.targetObject.enabled = obj.setValue;
                                }
                                else {
                                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Start");
                                }
                            });
                        }
                    }
                });
                tween.onComplete(() => {
                    if (animationInfo.doOnComplete == true) {
                        if (animationInfo.onCompleteAction.actionType == 0) {
                            this.createMyCallback(animationInfo.onCompleteAction.script, animationInfo.onCompleteAction.functionName)("a");
                        }
                        if (animationInfo.onCompleteAction.actionType == 1) {
                            //set On Complete
                            animationInfo.onCompleteAction.targetObjects.forEach((obj) => {
                                if (!isNull(obj.targetObject)) {
                                    obj.targetObject.enabled = obj.setValue;
                                }
                                else {
                                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Complete");
                                }
                            });
                        }
                    }
                });
                tween.start();
            }
        }
        playCustomAnimation(item, eventType) {
            const animationPlayer = item.sceneObject.getComponent("AnimationPlayer");
            if (isNull(animationPlayer)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + "is missing AnimationPlayer Component. SceneObject must contain AnimationPlayer Component.");
            }
            const animationClips = animationPlayer.clips;
            if (item.customAnimationData.iterateThroughAllClips == true) {
                let iterationIndex = this.setIterationIndex(eventType);
                const clipName = animationClips[iterationIndex % animationClips.length].name;
                animationPlayer.playClipAt(clipName, 0.0);
                iterationIndex++;
            }
            else {
                if (item.customAnimationData.animationName === "") {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Animation Name.");
                }
                const clip = animationPlayer.getClip(item.customAnimationData.animationName);
                if (isNull(clip)) {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": AnimationPlayer on " + item.sceneObject.name + " does not contain clip called " + item.customAnimationData.animationName + ". Provide correct Animation Name.");
                }
                else {
                    clip.disabled = false;
                    animationPlayer.playClipAt(item.customAnimationData.animationName, 0.0);
                }
            }
        }
        playMaterialPropertyAnimation(item) {
            const renderMeshV = item.sceneObject.getComponent("RenderMeshVisual");
            if (isNull(renderMeshV)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + "is missing RenderMeshVisual Component. SceneObject must contain RenderMeshVisual Component.");
            }
            else {
                if (item.materialProperyData.propertyName === "") {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing Property Name. Provide Property Name.");
                }
                else {
                    if (renderMeshV.mainMaterial.mainPass[item.materialProperyData.propertyName] === undefined) {
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + ": MainMaterial " + renderMeshV.mainMaterial.name + " does not contain " + item.materialProperyData.propertyName + " property. Provide correct Property Name.");
                    }
                }
            }
            if (renderMeshV.mainMaterial.name != "clonedMaterial") {
                const material_copy = renderMeshV.mainMaterial.clone();
                material_copy.name = "clonedMaterial";
                renderMeshV.mainMaterial = material_copy;
            }
            let tween;
            switch (item.materialProperyData.valueType) {
                case 0:
                    //number
                    tween = LSTween_1.LSTween.shaderFloatPropertyFromTo(renderMeshV.mainMaterial.mainPass, item.materialProperyData.propertyName, item.materialProperyData.startFloatValue, item.materialProperyData.endFloatValue, item.materialProperyData.animationDurationInSeconds * 1000.0);
                    break;
                case 1:
                    //vec3
                    tween = LSTween_1.LSTween.shaderVec3PropertyFromTo(renderMeshV.mainMaterial.mainPass, item.materialProperyData.propertyName, item.materialProperyData.startVec3Value, item.materialProperyData.endVec3Value, item.materialProperyData.animationDurationInSeconds * 1000.0);
                    break;
                case 2:
                    //vec4
                    tween = LSTween_1.LSTween.shaderColorPropertyFromTo(renderMeshV.mainMaterial.mainPass, item.materialProperyData.propertyName, item.materialProperyData.startVec4Value, item.materialProperyData.endVec4Value, item.materialProperyData.animationDurationInSeconds * 1000.0);
                    break;
            }
            tween.delay(item.materialProperyData.delay * 1000.0);
            this.setEasing(tween, item.materialProperyData.easingData);
            tween.onStart(() => {
                if (item.materialProperyData.doOnStart == true) {
                    if (item.materialProperyData.onStartAction.actionType == 0) {
                        //do callback
                        this.createMyCallback(item.materialProperyData.onStartAction.script, item.materialProperyData.onStartAction.functionName)("a");
                    }
                    if (item.materialProperyData.onStartAction.actionType == 1) {
                        //set On Start
                        item.materialProperyData.onStartAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Start");
                            }
                        });
                    }
                }
            });
            tween.onComplete(() => {
                if (item.materialProperyData.doOnComplete == true) {
                    if (item.materialProperyData.onCompleteAction.actionType == 0) {
                        this.createMyCallback(item.materialProperyData.onCompleteAction.script, item.materialProperyData.onCompleteAction.functionName)("a");
                    }
                    if (item.materialProperyData.onCompleteAction.actionType == 1) {
                        //set On Complete
                        item.materialProperyData.onCompleteAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Complete");
                            }
                        });
                    }
                }
            });
            tween.start();
        }
        changeColor(item) {
            //image and mesh
            let meshVisual;
            meshVisual = item.sceneObject.getComponent("MaterialMeshVisual");
            let tween;
            if (!isNull(meshVisual)) {
                const material_copy = meshVisual.mainMaterial.clone();
                meshVisual.mainMaterial = material_copy;
                tween = LSTween_1.LSTween.colorTo(meshVisual.mainMaterial, item.colorProperyData.endColor, item.colorProperyData.animationDurationInSeconds * 1000.0);
            }
            else {
                //text
                meshVisual = item.sceneObject.getComponent("Text");
                tween = LSTween_1.LSTween.colorTextTo(meshVisual, item.colorProperyData.endColor, item.colorProperyData.animationDurationInSeconds * 1000.0);
            }
            if (isNull(meshVisual)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing MaterialMeshVisual Component. SceneObject must contain RenderMeshVisual or Text or Image Component.");
            }
            tween.delay(item.colorProperyData.delay * 1000.0);
            this.setEasing(tween, item.colorProperyData.easingData);
            tween.onStart(() => {
                if (item.colorProperyData.doOnStart == true) {
                    if (item.colorProperyData.onStartAction.actionType == 0) {
                        //do callback
                        this.createMyCallback(item.colorProperyData.onStartAction.script, item.colorProperyData.onStartAction.functionName)("a");
                    }
                    if (item.colorProperyData.onStartAction.actionType == 1) {
                        //set On Start
                        item.colorProperyData.onStartAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Start");
                            }
                        });
                    }
                }
            });
            tween.onComplete(() => {
                if (item.colorProperyData.doOnComplete == true) {
                    if (item.colorProperyData.onCompleteAction.actionType == 0) {
                        this.createMyCallback(item.colorProperyData.onCompleteAction.script, item.colorProperyData.onCompleteAction.functionName)("a");
                    }
                    if (item.colorProperyData.onCompleteAction.actionType == 1) {
                        //set On Complete
                        item.colorProperyData.onCompleteAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Complete");
                            }
                        });
                    }
                }
            });
            tween.start();
        }
        useCallback(item) {
            this.createMyCallback(item.script, item.functionName)("");
        }
        animateBlendshape(item, eventType) {
            const blendShapeData = item.blendShapeData;
            const renderMeshVisual = item.sceneObject.getComponent("RenderMeshVisual");
            if (isNull(renderMeshVisual)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing RenderMeshVisual Component. SceneObject must contain RenderMeshVisual Component.");
            }
            else {
                if (blendShapeData.blenshapeName === "") {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing BlendShape Name. Provide BlendShape Name.");
                }
                else {
                    const blendShapeNames = renderMeshVisual.getBlendShapeNames();
                    if (blendShapeNames.length < 0) {
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " RenderMeshVisual does not contain BlendShapes.");
                    }
                    if (renderMeshVisual.getBlendShapeNames().includes(blendShapeData.blenshapeName) == false) {
                        throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " RenderMeshVisual does not contain BlendShape " + blendShapeData.blenshapeName + ". Provide correct BlendShape name.");
                    }
                }
            }
            let tween;
            switch (blendShapeData.playOption) {
                case 0:
                    //play from current value
                    tween = LSTween_1.LSTween.blendShapeValueTo(renderMeshVisual, blendShapeData.blenshapeName, blendShapeData.endValue, blendShapeData.animationDurationInSeconds * 1000.0);
                    break;
                case 1:
                    //play from set value
                    tween = LSTween_1.LSTween.blendShapeValueFromTo(renderMeshVisual, blendShapeData.blenshapeName, blendShapeData.startValue, blendShapeData.endValue, blendShapeData.animationDurationInSeconds * 1000.0);
                    break;
                case 2: {
                    //toggle
                    const iterationIndex = this.setIterationIndex(eventType);
                    let startVal, endVal;
                    if (iterationIndex % 2 == 0) {
                        startVal = blendShapeData.a;
                        endVal = blendShapeData.b;
                    }
                    if (iterationIndex % 2 == 1) {
                        startVal = blendShapeData.b;
                        endVal = blendShapeData.a;
                    }
                    tween = LSTween_1.LSTween.blendShapeValueFromTo(renderMeshVisual, blendShapeData.blenshapeName, startVal, endVal, blendShapeData.animationDurationInSeconds * 1000.0);
                    break;
                }
            }
            tween.delay(blendShapeData.delay * 1000.0);
            this.setEasing(tween, blendShapeData.easingData);
            tween.onStart(() => {
                if (blendShapeData.doOnStart == true) {
                    if (blendShapeData.onStartAction.actionType == 0) {
                        //do callback
                        this.createMyCallback(blendShapeData.onStartAction.script, blendShapeData.onStartAction.functionName)("a");
                    }
                    if (blendShapeData.onStartAction.actionType == 1) {
                        //set On Start
                        blendShapeData.onStartAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Start");
                            }
                        });
                    }
                }
            });
            tween.onComplete(() => {
                if (blendShapeData.doOnComplete == true) {
                    if (blendShapeData.onCompleteAction.actionType == 0) {
                        this.createMyCallback(blendShapeData.onCompleteAction.script, blendShapeData.onCompleteAction.functionName)("a");
                    }
                    if (blendShapeData.onCompleteAction.actionType == 1) {
                        //set On Complete
                        blendShapeData.onCompleteAction.targetObjects.forEach((obj) => {
                            if (!isNull(obj.targetObject)) {
                                obj.targetObject.enabled = obj.setValue;
                            }
                            else {
                                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Animation Complete");
                            }
                        });
                    }
                }
            });
            tween.start();
        }
        playAudioClip(item, eventType) {
            const audioComponent = item.sceneObject.getComponent("AudioComponent");
            if (isNull(audioComponent)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing AudioComponent. SceneObject must contain AudioComponent.");
            }
            else {
                switch (item.audioControl.audioControlBehavior) {
                    case 0: {
                        //play
                        const playAudioDelayedCallback = this.createEvent("DelayedCallbackEvent");
                        playAudioDelayedCallback.bind(() => { audioComponent.play(1); });
                        playAudioDelayedCallback.reset(item.audioControl.delay);
                        break;
                    }
                    case 1:
                        //play / stop
                        if (audioComponent.isPlaying()) {
                            audioComponent.stop(true);
                        }
                        else {
                            audioComponent.play(1);
                        }
                        break;
                    case 2:
                        //play / pause
                        if (audioComponent.isPlaying() == false && audioComponent.isPaused() == false) {
                            audioComponent.play(1);
                        }
                        else if (audioComponent.isPlaying()) {
                            audioComponent.pause();
                        }
                        else if (audioComponent.isPaused()) {
                            audioComponent.resume();
                        }
                        break;
                }
            }
        }
        playVideoTexture(item) {
            const image = item.sceneObject.getComponent("Image");
            if (!isNull(image)) {
                const videoTextureProvider = image.mainMaterial.mainPass.baseTex.control;
                if (!isNull(videoTextureProvider)) {
                    const playVideoTextureDelayedCallback = this.createEvent("DelayedCallbackEvent");
                    playVideoTextureDelayedCallback.bind(() => {
                        if (videoTextureProvider.status != VideoStatus.Playing) {
                            switch (item.videoTextureControl.videoTextureControlBehavior) {
                                case 0:
                                    videoTextureProvider.play(1);
                                    break;
                                case 1:
                                    videoTextureProvider.play(-1);
                                    break;
                            }
                        }
                    });
                    playVideoTextureDelayedCallback.reset(item.videoTextureControl.delay);
                    videoTextureProvider.onPlaybackReady.add(() => {
                        if (item.videoTextureControl.doOnStart == true) {
                            if (item.videoTextureControl.onStartAction.actionType == 0) {
                                this.createMyCallback(item.videoTextureControl.onStartAction.script, item.videoTextureControl.onStartAction.functionName)("a");
                            }
                            if (item.videoTextureControl.onStartAction.actionType == 1) {
                                //set On Start
                                item.videoTextureControl.onStartAction.targetObjects.forEach((obj) => {
                                    if (!isNull(obj.targetObject)) {
                                        obj.targetObject.enabled = obj.setValue;
                                    }
                                    else {
                                        throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Video Texture Start");
                                    }
                                });
                            }
                        }
                    });
                    videoTextureProvider.onPlaybackDone.add(() => {
                        if (item.videoTextureControl.doOnComplete == true) {
                            if (item.videoTextureControl.onCompleteAction.actionType == 0) {
                                this.createMyCallback(item.videoTextureControl.onCompleteAction.script, item.videoTextureControl.onCompleteAction.functionName)("a");
                            }
                            if (item.videoTextureControl.onCompleteAction.actionType == 1) {
                                //set On Complete
                                item.videoTextureControl.onCompleteAction.targetObjects.forEach((obj) => {
                                    if (!isNull(obj.targetObject)) {
                                        obj.targetObject.enabled = obj.setValue;
                                    }
                                    else {
                                        throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provide Target Object to Set State on Video Texture Complete");
                                    }
                                });
                            }
                        }
                    });
                }
                else {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing video as its' Texture on Image Component. SceneObject must contain Image Component with video as its' Texture.");
                }
            }
            else {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + ": " + item.sceneObject.name + " is missing Image Component. SceneObject must contain Image Component with video as its' Texture.");
            }
        }
        createMyCallback(scriptComponent, functionName) {
            if (isNull(scriptComponent)) {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing Script for Custom Callback. Assign Script");
            }
            if (scriptComponent === undefined) {
                return () => {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing Script for Custom Callback. Assign Script");
                };
            }
            if (functionName === "") {
                throw new Error("Interactable Helper on " + this.getSceneObject().name + " is missing Function Name for Custom Callback. Provide Function Name");
            }
            return (args) => {
                if (scriptComponent[functionName]) {
                    scriptComponent[functionName](args);
                }
                else {
                    throw new Error("Interactable Helper on " + this.getSceneObject().name + ": provided Script does not have " + functionName + " function. Check Function Name.");
                }
            };
        }
        setIterationIndex(eventType) {
            let iterationIndex;
            switch (eventType) {
                case EventType.HoverEnter:
                    iterationIndex = this.hoverEnterCurrentIterationIndex;
                    break;
                case EventType.HoverExit:
                    iterationIndex = this.hoverExitCurrentIterationIndex;
                    break;
                case EventType.TriggerDown:
                    iterationIndex = this.triggerDownCurrentIterationIndex;
                    break;
                case EventType.TriggerUp:
                    iterationIndex = this.triggerUpCurrentIterationIndex;
                    break;
            }
            return iterationIndex;
        }
        setEasing(tween, easingData) {
            switch (easingData.easing) {
                case 0:
                    tween.easing(Easing_1.default.Linear.None);
                    break;
                case 1:
                    tween.easing(Easing_1.default.Linear.In);
                    break;
                case 2:
                    tween.easing(Easing_1.default.Linear.Out);
                    break;
                case 3:
                    tween.easing(Easing_1.default.Linear.InOut);
                    break;
                case 4:
                    tween.easing(Easing_1.default.Quadratic.In);
                    break;
                case 5:
                    tween.easing(Easing_1.default.Quadratic.Out);
                    break;
                case 6:
                    tween.easing(Easing_1.default.Quadratic.InOut);
                    break;
                case 7:
                    tween.easing(Easing_1.default.Cubic.In);
                    break;
                case 8:
                    tween.easing(Easing_1.default.Cubic.Out);
                    break;
                case 9:
                    tween.easing(Easing_1.default.Cubic.InOut);
                    break;
                case 10:
                    tween.easing(Easing_1.default.Quartic.In);
                    break;
                case 11:
                    tween.easing(Easing_1.default.Quartic.Out);
                    break;
                case 12:
                    tween.easing(Easing_1.default.Quartic.InOut);
                    break;
                case 13:
                    tween.easing(Easing_1.default.Quintic.In);
                    break;
                case 14:
                    tween.easing(Easing_1.default.Quintic.Out);
                    break;
                case 15:
                    tween.easing(Easing_1.default.Quintic.InOut);
                    break;
                case 16:
                    tween.easing(Easing_1.default.Exponential.In);
                    break;
                case 17:
                    tween.easing(Easing_1.default.Exponential.Out);
                    break;
                case 18:
                    tween.easing(Easing_1.default.Exponential.InOut);
                    break;
                case 19:
                    tween.easing(Easing_1.default.Circular.In);
                    break;
                case 20:
                    tween.easing(Easing_1.default.Circular.Out);
                    break;
                case 21:
                    tween.easing(Easing_1.default.Circular.InOut);
                    break;
                case 22:
                    tween.easing(Easing_1.default.Elastic.In);
                    break;
                case 23:
                    tween.easing(Easing_1.default.Elastic.Out);
                    break;
                case 24:
                    tween.easing(Easing_1.default.Elastic.InOut);
                    break;
                case 25:
                    tween.easing(Easing_1.default.Back.In);
                    break;
                case 26:
                    tween.easing(Easing_1.default.Back.Out);
                    break;
                case 27:
                    tween.easing(Easing_1.default.Back.InOut);
                    break;
                case 29:
                    tween.easing(Easing_1.default.Bounce.In);
                    break;
                case 30:
                    tween.easing(Easing_1.default.Bounce.Out);
                    break;
                case 31:
                    tween.easing(Easing_1.default.Bounce.InOut);
                    break;
                case 32:
                    tween.easing(Easing_1.default.Sinusoidal.In);
                    break;
                case 33:
                    tween.easing(Easing_1.default.Sinusoidal.Out);
                    break;
                case 34:
                    tween.easing(Easing_1.default.Sinusoidal.InOut);
                    break;
            }
        }
    };
    __setFunctionName(_classThis, "InteractableHelper");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _initialize_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _initialize_decorators, { kind: "method", name: "initialize", static: false, private: false, access: { has: obj => "initialize" in obj, get: obj => obj.initialize }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        InteractableHelper = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return InteractableHelper = _classThis;
})();
exports.InteractableHelper = InteractableHelper;
var EventType;
(function (EventType) {
    EventType[EventType["HoverEnter"] = 0] = "HoverEnter";
    EventType[EventType["HoverExit"] = 1] = "HoverExit";
    EventType[EventType["TriggerDown"] = 2] = "TriggerDown";
    EventType[EventType["TriggerUp"] = 3] = "TriggerUp";
})(EventType || (exports.EventType = EventType = {}));
//# sourceMappingURL=InteractableHelper.js.map