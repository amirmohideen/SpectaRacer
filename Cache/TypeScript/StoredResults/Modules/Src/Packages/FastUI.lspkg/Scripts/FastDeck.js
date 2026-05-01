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
exports.FastDeck = void 0;
var __selfType = requireType("./FastDeck");
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
 * FastDeck – swipeable card stack (deck-style UI). No prefabs; cards built with FastRoundedRectangle.
 * Three slots: left, center, right. Swipe center card left = next, right = previous.
 */
const InteractableManipulation_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation");
const FastRoundedRectangle_1 = require("./FastRoundedRectangle");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
class SwipeState {
    constructor() {
        this.swipedObject = null;
        this.originalPosition = vec3.zero();
        this.isSwipping = false;
        this.swipeStartTime = 0;
        this.swipeStartPosition = vec3.zero();
    }
}
let FastDeck = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var FastDeck = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.swipeThreshold = (__runInitializers(this, _instanceExtraInitializers), this.swipeThreshold);
            this.animationSpeed = this.animationSpeed;
            this.swipeSpeedThreshold = this.swipeSpeedThreshold;
            this.leftCardRotationZ = this.leftCardRotationZ;
            this.rightCardRotationZ = this.rightCardRotationZ;
            this.testMode = this.testMode;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.cardWidth = 22;
            this.cardMinHeight = 30;
            this.cardMaxHeight = 40;
            this.cardMaxLines = 20;
            this.leftPosX = -12;
            this.centerPosX = 0;
            this.rightPosX = 12;
            this.centerZ = 0.2;
            this.sideZ = -0.7;
            this.offScreenDistance = 200;
            this.frontScale = 1;
            this.backScale = 0.8;
            this.cards = [];
            this.cardContent = [];
            this.currentIndex = 0;
            this.swipeState = new SwipeState();
            this.animatingCards = new Map();
            this.initialized = false;
        }
        __initialize() {
            super.__initialize();
            this.swipeThreshold = (__runInitializers(this, _instanceExtraInitializers), this.swipeThreshold);
            this.animationSpeed = this.animationSpeed;
            this.swipeSpeedThreshold = this.swipeSpeedThreshold;
            this.leftCardRotationZ = this.leftCardRotationZ;
            this.rightCardRotationZ = this.rightCardRotationZ;
            this.testMode = this.testMode;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            this.cardWidth = 22;
            this.cardMinHeight = 30;
            this.cardMaxHeight = 40;
            this.cardMaxLines = 20;
            this.leftPosX = -12;
            this.centerPosX = 0;
            this.rightPosX = 12;
            this.centerZ = 0.2;
            this.sideZ = -0.7;
            this.offScreenDistance = 200;
            this.frontScale = 1;
            this.backScale = 0.8;
            this.cards = [];
            this.cardContent = [];
            this.currentIndex = 0;
            this.swipeState = new SwipeState();
            this.animatingCards = new Map();
            this.initialized = false;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("FastDeck", this.enableLogging || this.enableLoggingLifecycle, true);
        }
        onStart() {
            if (this.enableLoggingLifecycle)
                this.logger.debug("LIFECYCLE: onStart()");
            this.initialize();
        }
        onUpdate() {
            this.update();
        }
        initialize() {
            if (this.initialized)
                return;
            if (this.testMode) {
                this.addCard("First card – swipe me to go next. This is the left slot and uses the blue style. Add more content here so the card wraps to multiple lines.");
                this.addCard("Second card is in the center when you start. It uses the gray style. Swipe left to see the next card or right to go back. You can put quite a bit of text on each card.");
                this.addCard("Third card appears on the right with the green style. All three visible cards have different colors: blue on the left, gray in the center, green on the right.");
                this.addCard("Fourth card. Keep swiping through the deck. Each card keeps its content but the color follows its slot: left is always blue, center gray, right green.");
                this.addCard("Last card in the test deck. Enable test mode to see these five sample cards with longer text. Disable test mode and use addCard() from script to build your own deck.");
            }
            if (this.cards.length > 0) {
                this.layoutInitialCards();
            }
            this.setupCenterCardManipulation();
            this.initialized = true;
            if (this.enableLogging)
                this.logger.debug("FastDeck initialized with " + this.cards.length + " cards");
        }
        getLocalPositions() {
            return [
                new vec3(this.leftPosX, 0, this.sideZ),
                new vec3(this.centerPosX, 0, this.centerZ),
                new vec3(this.rightPosX, 0, this.sideZ),
            ];
        }
        /** Add a card with the given content. Returns card index. */
        addCard(content) {
            const index = this.cards.length;
            const name = "DeckCard_" + index;
            const cardObj = global.scene.createSceneObject(name);
            cardObj.setParent(this.sceneObject);
            cardObj.enabled = false;
            const options = this.getCardOptions(content);
            (0, FastRoundedRectangle_1.buildRoundedRectangleOnto)(cardObj, options);
            const manipulation = cardObj.createComponent(InteractableManipulation_1.InteractableManipulation.getTypeName());
            if (manipulation) {
                manipulation.onManipulationStart.add(() => this.startSwipe(cardObj));
                manipulation.onManipulationEnd.add(() => this.endSwipe());
            }
            this.cards.push(cardObj);
            this.cardContent.push(content || "");
            if (this.initialized && this.cards.length === 1) {
                this.layoutInitialCards();
                this.setupCenterCardManipulation();
            }
            return index;
        }
        getCardCount() {
            return this.cards.length;
        }
        getCurrentIndex() {
            return this.currentIndex;
        }
        getCard(index) {
            if (index < 0 || index >= this.cards.length)
                return null;
            return this.cards[index];
        }
        getCardContent(index) {
            if (index < 0 || index >= this.cardContent.length)
                return "";
            return this.cardContent[index];
        }
        getCurrentCard() {
            return this.getCard(this.currentIndex);
        }
        /** Manually trigger next card (swipe left). */
        manualSwipeLeft() {
            if (this.cards.length === 0)
                return;
            const centerCard = this.getCurrentCard();
            if (centerCard && !this.swipeState.isSwipping) {
                this.swipeState.swipedObject = centerCard;
                this.swipeLeft();
                this.swipeState.swipedObject = null;
            }
        }
        /** Manually trigger previous card (swipe right). */
        manualSwipeRight() {
            if (this.cards.length === 0)
                return;
            const centerCard = this.getCurrentCard();
            if (centerCard && !this.swipeState.isSwipping) {
                this.swipeState.swipedObject = centerCard;
                this.swipeRight();
                this.swipeState.swipedObject = null;
            }
        }
        /** Neutral rectangle button (no slot styling). */
        getCardOptions(content) {
            return {
                content,
                width: this.cardWidth,
                minHeight: this.cardMinHeight,
                maxHeight: this.cardMaxHeight,
                maxLines: this.cardMaxLines,
                style: "bot",
                textColor: "white",
            };
        }
        getScaleForSlot(slotIndex) {
            return slotIndex === 1 ? this.frontScale : this.backScale;
        }
        layoutInitialCards() {
            const positions = this.getLocalPositions();
            this.cards.forEach((c) => (c.enabled = false));
            const n = this.cards.length;
            if (n === 0)
                return;
            if (n === 1) {
                const card = this.cards[0];
                card.enabled = true;
                card.getTransform().setLocalPosition(positions[1]);
                card.getTransform().setLocalScale(new vec3(this.frontScale, this.frontScale, this.frontScale));
                this.applyCardRotation(card, 1);
                this.setCardManipulationEnabled(card, true);
                return;
            }
            if (n === 2) {
                const leftIndex = (this.currentIndex - 1 + n) % n;
                const centerIndex = this.currentIndex;
                this.cards[leftIndex].enabled = true;
                this.cards[leftIndex].getTransform().setLocalPosition(positions[0]);
                this.cards[leftIndex].getTransform().setLocalScale(new vec3(this.backScale, this.backScale, this.backScale));
                this.applyCardRotation(this.cards[leftIndex], 0);
                this.setCardManipulationEnabled(this.cards[leftIndex], false);
                this.cards[centerIndex].enabled = true;
                this.cards[centerIndex].getTransform().setLocalPosition(positions[1]);
                this.cards[centerIndex].getTransform().setLocalScale(new vec3(this.frontScale, this.frontScale, this.frontScale));
                this.applyCardRotation(this.cards[centerIndex], 1);
                this.setCardManipulationEnabled(this.cards[centerIndex], true);
                return;
            }
            const leftIndex = (this.currentIndex - 1 + n) % n;
            const centerIndex = this.currentIndex;
            const rightIndex = (this.currentIndex + 1) % n;
            const indices = [leftIndex, centerIndex, rightIndex];
            for (let i = 0; i < 3; i++) {
                const card = this.cards[indices[i]];
                const scale = this.getScaleForSlot(i);
                card.enabled = true;
                card.getTransform().setLocalPosition(positions[i]);
                card.getTransform().setLocalScale(new vec3(scale, scale, scale));
                this.applyCardRotation(card, i);
                this.setCardManipulationEnabled(card, i === 1);
            }
        }
        setupCenterCardManipulation() {
            this.cards.forEach((card) => this.setCardManipulationEnabled(card, false));
            const centerCard = this.getCurrentCard();
            if (centerCard)
                this.setCardManipulationEnabled(centerCard, true);
        }
        setCardManipulationEnabled(card, enabled) {
            const manipulation = card.getComponent(InteractableManipulation_1.InteractableManipulation.getTypeName());
            if (manipulation)
                manipulation.enabled = enabled;
        }
        applyCardRotation(card, position) {
            const transform = card.getTransform();
            let rotationZ = 0;
            if (position === 0)
                rotationZ = this.leftCardRotationZ;
            else if (position === 2)
                rotationZ = this.rightCardRotationZ;
            const euler = transform.getLocalRotation().toEulerAngles();
            transform.setLocalRotation(quat.fromEulerAngles(euler.x, euler.y, (rotationZ * Math.PI) / 180));
        }
        startSwipe(card) {
            this.swipeState.swipedObject = card;
            this.swipeState.originalPosition = card.getTransform().getLocalPosition();
            this.swipeState.isSwipping = true;
            this.swipeState.swipeStartTime = getTime();
            this.swipeState.swipeStartPosition = card.getTransform().getLocalPosition();
        }
        endSwipe() {
            if (!this.swipeState.isSwipping || !this.swipeState.swipedObject)
                return;
            const currentPos = this.swipeState.swipedObject.getTransform().getLocalPosition();
            const swipeDistance = currentPos.distance(this.swipeState.originalPosition);
            const swipeTime = getTime() - this.swipeState.swipeStartTime;
            const swipeSpeed = swipeTime > 0 ? swipeDistance / swipeTime : 0;
            const swipeVector = currentPos.sub(this.swipeState.originalPosition);
            const isRightSwipe = swipeVector.x > 0;
            const shouldChange = swipeDistance > this.swipeThreshold || swipeSpeed > this.swipeSpeedThreshold;
            if (shouldChange) {
                if (isRightSwipe)
                    this.swipeRight();
                else
                    this.swipeLeft();
            }
            else {
                this.returnCardToCenter();
            }
            this.swipeState.isSwipping = false;
            this.swipeState.swipedObject = null;
        }
        returnCardToCenter() {
            if (!this.swipeState.swipedObject)
                return;
            const positions = this.getLocalPositions();
            this.animatingCards.set(this.swipeState.swipedObject, {
                target: positions[1],
                targetScale: this.frontScale,
                isVisible: true,
            });
        }
        swipeLeft() {
            if (!this.swipeState.swipedObject)
                return;
            this.animateCardOut(this.swipeState.swipedObject, false);
            const n = this.cards.length;
            if (n > 0)
                this.currentIndex = (this.currentIndex + 1) % n;
            this.rearrangeCardsAfterSwipe();
        }
        swipeRight() {
            if (!this.swipeState.swipedObject)
                return;
            this.animateCardOut(this.swipeState.swipedObject, true);
            const n = this.cards.length;
            if (n > 0)
                this.currentIndex = (this.currentIndex - 1 + n) % n;
            this.rearrangeCardsAfterSwipe();
        }
        animateCardOut(card, toRight) {
            const positions = this.getLocalPositions();
            const centerPos = positions[1];
            const direction = toRight ? 1 : -1;
            const targetPos = new vec3(centerPos.x + this.offScreenDistance * direction, centerPos.y, centerPos.z);
            this.animatingCards.set(card, { target: targetPos, targetScale: this.frontScale, isVisible: false });
        }
        rearrangeCardsAfterSwipe() {
            const positions = this.getLocalPositions();
            const n = this.cards.length;
            if (n === 0)
                return;
            this.cards.forEach((card) => {
                if (!this.animatingCards.has(card))
                    card.enabled = false;
                this.setCardManipulationEnabled(card, false);
            });
            if (n === 1) {
                const card = this.cards[0];
                card.enabled = true;
                this.animatingCards.set(card, {
                    target: positions[1],
                    targetScale: this.frontScale,
                    isVisible: true,
                });
                this.applyCardRotation(card, 1);
                this.setCardManipulationEnabled(card, true);
                return;
            }
            if (n === 2) {
                const leftIndex = (this.currentIndex - 1 + n) % n;
                const centerIndex = this.currentIndex;
                this.cards[leftIndex].enabled = true;
                this.animatingCards.set(this.cards[leftIndex], {
                    target: positions[0],
                    targetScale: this.backScale,
                    isVisible: true,
                });
                this.applyCardRotation(this.cards[leftIndex], 0);
                this.setCardManipulationEnabled(this.cards[leftIndex], false);
                this.cards[centerIndex].enabled = true;
                this.animatingCards.set(this.cards[centerIndex], {
                    target: positions[1],
                    targetScale: this.frontScale,
                    isVisible: true,
                });
                this.applyCardRotation(this.cards[centerIndex], 1);
                this.setCardManipulationEnabled(this.cards[centerIndex], true);
                return;
            }
            const leftIndex = (this.currentIndex - 1 + n) % n;
            const centerIndex = this.currentIndex;
            const rightIndex = (this.currentIndex + 1) % n;
            const indices = [leftIndex, centerIndex, rightIndex];
            for (let i = 0; i < 3; i++) {
                const card = this.cards[indices[i]];
                card.enabled = true;
                this.animatingCards.set(card, {
                    target: positions[i],
                    targetScale: this.getScaleForSlot(i),
                    isVisible: true,
                });
                this.applyCardRotation(card, i);
                this.setCardManipulationEnabled(card, i === 1);
            }
            this.setupCenterCardManipulation();
        }
        update() {
            this.updateAnimations();
        }
        updateAnimations() {
            const toRemove = [];
            this.animatingCards.forEach((anim, card) => {
                const transform = card.getTransform();
                const currentPos = transform.getLocalPosition();
                const targetPos = anim.target;
                const distance = currentPos.distance(targetPos);
                const currentScale = transform.getLocalScale().x;
                const scaleDistance = Math.abs(currentScale - anim.targetScale);
                const done = distance < 0.1 && scaleDistance < 0.01;
                if (done) {
                    transform.setLocalPosition(targetPos);
                    transform.setLocalScale(new vec3(anim.targetScale, anim.targetScale, anim.targetScale));
                    if (!anim.isVisible)
                        card.enabled = false;
                    toRemove.push(card);
                }
                else {
                    transform.setLocalPosition(vec3.lerp(currentPos, targetPos, this.animationSpeed));
                    const newScale = currentScale + (anim.targetScale - currentScale) * this.animationSpeed;
                    transform.setLocalScale(new vec3(newScale, newScale, newScale));
                }
            });
            toRemove.forEach((c) => this.animatingCards.delete(c));
        }
    };
    __setFunctionName(_classThis, "FastDeck");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        FastDeck = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return FastDeck = _classThis;
})();
exports.FastDeck = FastDeck;
//# sourceMappingURL=FastDeck.js.map