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
exports.FastChat = void 0;
var __selfType = requireType("./FastChat");
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
 * FastChat – programmatic chat UI with tunable inspector params.
 * No prefabs or scene object refs; cards are RectangleButtons with custom visuals.
 * Tune layout and colors in the inspector.
 */
const InteractableManipulation_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation");
const Slider_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Slider/Slider");
const FastRoundedRectangle_1 = require("./FastRoundedRectangle");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
const TextLimiter_1 = require("./Utils/TextLimiter");
const CardType = { User: "User", Chatbot: "Chatbot" };
class SwipeState {
    constructor() {
        this.swipedObject = null;
        this.originalPosition = vec3.zero();
        this.originalRotation = quat.quatIdentity();
        this.isSwipping = false;
        this.swipeStartTime = 0;
        this.swipeStartPosition = vec3.zero();
    }
}
/** Color presets: user + bot colors for Style 1 Blue/Gray and Style 1 Green/Gray */
const STYLE_BLUE_GRAY = {
    userDefault: new vec4(0.2, 0.5, 0.9, 1),
    userHover: new vec4(0.3, 0.55, 0.95, 1),
    userTriggered: new vec4(0.1, 0.35, 0.75, 1),
    userBorder: new vec4(0.1, 0.35, 0.75, 1),
    botDefault: new vec4(0.25, 0.25, 0.28, 1),
    botHover: new vec4(0.35, 0.35, 0.38, 1),
    botTriggered: new vec4(0.2, 0.2, 0.22, 1),
    botBorder: new vec4(0.2, 0.2, 0.2, 1),
};
const STYLE_GREEN_GRAY = {
    userDefault: new vec4(0.2, 0.65, 0.35, 1),
    userHover: new vec4(0.3, 0.7, 0.4, 1),
    userTriggered: new vec4(0.1, 0.5, 0.25, 1),
    userBorder: new vec4(0.1, 0.5, 0.25, 1),
    botDefault: new vec4(0.25, 0.25, 0.28, 1),
    botHover: new vec4(0.35, 0.35, 0.38, 1),
    botTriggered: new vec4(0.2, 0.2, 0.22, 1),
    botBorder: new vec4(0.2, 0.2, 0.2, 1),
};
let FastChat = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    let _onUpdate_decorators;
    var FastChat = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.textColor = (__runInitializers(this, _instanceExtraInitializers), this.textColor);
            this.colorStyle = this.colorStyle;
            this.layoutStyle = this.layoutStyle;
            this.testMode = this.testMode;
            this.mask = this.mask;
            this.scrollbarOffsetX = 13;
            this.scrollbarHeight = 30;
            /** Mask clip (no interaction). Bounds from ScreenTransform on same object. */
            this.maskingComponent = null;
            this.maskWindowSize = new vec2(30, 30);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ========== PRIVATE (not in inspector, fixed defaults) ==========
            this.cardWidth = 22;
            this.cardMinHeight = 4;
            this.cardMaxHeight = 40;
            this.cardMaxLines = 20;
            this.slotSpacingY = 1;
            this.layoutCenterY = 0;
            this.spacingMultiplier = 1.0;
            this.userCardOffsetX = 2;
            this.botCardOffsetX = -2;
            this.archDepth = 0.5;
            this.showScrollbar = true;
            this.cardBorderSize = 0.1;
            this.animationSpeed = 0.5;
            this.swipeThreshold = 50.0;
            this.chatModeChronological = true;
            this.initialNumberOfCards = 10;
            this.testInterval = 2.0;
            this.maxTestCards = 40;
            this.cards = [];
            this.cardData = [];
            this.currentIndex = 0;
            this.swipeState = new SwipeState();
            this.basePositions = [];
            this.currentPositions = [];
            this.animatingCards = new Map();
            this.initialized = false;
            this.testTimer = 0;
            this.scrollbarObject = null;
            this.scrollbarSlider = null;
            this.skipScrollbarSync = false;
        }
        __initialize() {
            super.__initialize();
            this.textColor = (__runInitializers(this, _instanceExtraInitializers), this.textColor);
            this.colorStyle = this.colorStyle;
            this.layoutStyle = this.layoutStyle;
            this.testMode = this.testMode;
            this.mask = this.mask;
            this.scrollbarOffsetX = 13;
            this.scrollbarHeight = 30;
            /** Mask clip (no interaction). Bounds from ScreenTransform on same object. */
            this.maskingComponent = null;
            this.maskWindowSize = new vec2(30, 30);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // ========== PRIVATE (not in inspector, fixed defaults) ==========
            this.cardWidth = 22;
            this.cardMinHeight = 4;
            this.cardMaxHeight = 40;
            this.cardMaxLines = 20;
            this.slotSpacingY = 1;
            this.layoutCenterY = 0;
            this.spacingMultiplier = 1.0;
            this.userCardOffsetX = 2;
            this.botCardOffsetX = -2;
            this.archDepth = 0.5;
            this.showScrollbar = true;
            this.cardBorderSize = 0.1;
            this.animationSpeed = 0.5;
            this.swipeThreshold = 50.0;
            this.chatModeChronological = true;
            this.initialNumberOfCards = 10;
            this.testInterval = 2.0;
            this.maxTestCards = 40;
            this.cards = [];
            this.cardData = [];
            this.currentIndex = 0;
            this.swipeState = new SwipeState();
            this.basePositions = [];
            this.currentPositions = [];
            this.animatingCards = new Map();
            this.initialized = false;
            this.testTimer = 0;
            this.scrollbarObject = null;
            this.scrollbarSlider = null;
            this.skipScrollbarSync = false;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("FastChat", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
        }
        onStart() {
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onStart() - Initializing chat");
            }
            this.initialize();
        }
        onUpdate() {
            this.update();
        }
        initialize() {
            if (this.initialized)
                return;
            this.setupBasePositions();
            this.createInitialCards();
            this.currentIndex = this.testMode ? Math.min(2, this.cardData.length - 1) : 0;
            this.recalculateDynamicPositions();
            this.layoutInitialCards();
            this.setupSwipeInteraction();
            if (this.showScrollbar)
                this.createScrollbar();
            if (this.mask)
                this.attachMasking();
            this.initialized = true;
            this.syncScrollbarFromIndex();
            if (this.enableLogging) {
                this.logger.debug("FastChat initialized with " + this.cardData.length + " cards");
            }
        }
        /** Add MaskingComponent + ScreenTransform for clip only (no scroll interaction). */
        attachMasking() {
            const so = this.sceneObject;
            let st = so.getComponent("Component.ScreenTransform");
            if (!st) {
                st = so.createComponent("Component.ScreenTransform");
            }
            if (st) {
                const halfX = this.maskWindowSize.x * 0.5;
                const halfY = this.maskWindowSize.y * 0.5;
                st.anchors.left = 0;
                st.anchors.right = 0;
                st.anchors.bottom = 0;
                st.anchors.top = 0;
                st.offsets.left = -halfX;
                st.offsets.right = halfX;
                st.offsets.bottom = -halfY;
                st.offsets.top = halfY;
            }
            this.maskingComponent =
                so.getComponent("Component.MaskingComponent") ||
                    so.createComponent("Component.MaskingComponent");
        }
        getNormalizedScrollValue() {
            const n = this.cardData.length;
            if (n <= 1)
                return 0;
            return this.currentIndex / (n - 1);
        }
        createScrollbar() {
            const name = "ChatScrollbar";
            this.scrollbarObject = global.scene.createSceneObject(name);
            this.scrollbarObject.setParent(this.sceneObject);
            this.scrollbarObject.getTransform().setLocalPosition(new vec3(this.scrollbarOffsetX, 0, 0.1));
            const zRotDeg = -90;
            this.scrollbarObject.getTransform().setLocalRotation(quat.fromEulerAngles(0, 0, (zRotDeg * Math.PI) / 180));
            const sliderComp = this.scrollbarObject.createComponent(Slider_1.Slider.getTypeName());
            if (sliderComp) {
                sliderComp.size = new vec3(this.scrollbarHeight, 1, 0.5);
                sliderComp.initialize();
                this.scrollbarSlider = sliderComp;
                sliderComp.currentValue = 0;
                if (sliderComp.onValueChange) {
                    sliderComp.onValueChange.add((value) => {
                        if (this.skipScrollbarSync)
                            return;
                        this.setScrollValue(value);
                    });
                }
            }
        }
        syncScrollbarFromIndex() {
            if (this.scrollbarObject) {
                this.scrollbarObject.enabled = this.cardData.length > 1;
            }
            if (!this.scrollbarSlider)
                return;
            this.skipScrollbarSync = true;
            this.scrollbarSlider.currentValue = this.getNormalizedScrollValue();
            this.skipScrollbarSync = false;
        }
        setScrollValue(normalized) {
            const n = this.cardData.length;
            if (n <= 1)
                return;
            const clamped = Math.max(0, Math.min(1, normalized));
            const idx = Math.round(clamped * (n - 1));
            if (idx !== this.currentIndex) {
                this.updateCardLayoutToIndex(idx);
            }
        }
        setupBasePositions() {
            this.basePositions = [];
            for (let i = 0; i < 5; i++) {
                const y = this.layoutCenterY + (2 - i) * this.slotSpacingY;
                this.basePositions.push(new vec3(0, y, 0));
            }
        }
        getCardPosition(slotPosition, cardIndex, positionIndex) {
            let x = slotPosition.x;
            let z = slotPosition.z;
            if (this.layoutStyle === "shifted" && cardIndex >= 0 && cardIndex < this.cardData.length) {
                const isUser = this.cardData[cardIndex].type === CardType.User;
                x += isUser ? this.userCardOffsetX : this.botCardOffsetX;
            }
            if (this.archDepth !== 0 && positionIndex >= 0 && positionIndex <= 4) {
                z += this.archDepth * (2 - Math.abs(positionIndex - 2));
            }
            return new vec3(x, slotPosition.y, z);
        }
        calculateCardSize(text) {
            return (0, FastRoundedRectangle_1.getRoundedRectangleSizeFromText)(text, this.cardWidth, this.cardMinHeight, this.cardMaxHeight, this.cardMaxLines);
        }
        /**
         * Compute slot Y positions from the center outward using each card's actual height,
         * so spacing between cards is consistent and cards don't overlap.
         * Mid slot (index 2) is at layoutCenterY; others are stacked with gap between edges.
         */
        calculateDynamicPositions(basePositions, cardSizes, spacingMultiplier) {
            const gap = this.slotSpacingY * spacingMultiplier;
            const centerY = this.layoutCenterY;
            const h = (i) => (cardSizes[i] && cardSizes[i].y > 0 ? cardSizes[i].y : this.cardMinHeight) * 0.5;
            const result = [];
            for (let i = 0; i < 5; i++)
                result.push(new vec3(basePositions[i].x, 0, basePositions[i].z));
            result[2].y = centerY;
            result[1].y = centerY + h(2) + gap + h(1);
            result[0].y = result[1].y + h(1) + gap + h(0);
            result[3].y = centerY - (h(2) + gap + h(3));
            result[4].y = result[3].y - (h(3) + gap + h(4));
            return result;
        }
        calculateVisibleIndices(currentIndex, length) {
            const wrap = (i) => ((i % length) + length) % length;
            return {
                topLast: length > 0 ? wrap(currentIndex + 2) : -1,
                top: length > 0 ? wrap(currentIndex + 1) : -1,
                mid: currentIndex,
                bottom: length > 0 ? wrap(currentIndex - 1) : -1,
                bottomLast: length > 0 ? wrap(currentIndex - 2) : -1,
            };
        }
        createInitialCards() {
            const count = this.testMode ? this.initialNumberOfCards : 1;
            const welcomeText = "Welcome to your AI-powered learning companion! Ask me anything about the topics you're studying.";
            const text = this.testMode ? this.generateTestText(0) : welcomeText.substring(0, TextLimiter_1.CHARACTER_LIMITS.BOT_CARD_TEXT);
            for (let i = 0; i < count; i++) {
                const cardType = this.testMode ? (i % 2 === 0 ? CardType.User : CardType.Chatbot) : CardType.Chatbot;
                const textContent = this.testMode ? this.generateTestText(i) : text;
                const cardData = {
                    id: i,
                    type: cardType,
                    textContent: textContent,
                    size: this.calculateCardSize(textContent),
                    sceneObject: null,
                };
                const cardObj = this.createCardProgrammatically(cardData);
                cardData.sceneObject = cardObj;
                this.cards.push(cardObj);
                this.cardData.push(cardData);
            }
        }
        /** Test messages sized so stated line count matches wrap at 30 chars/line. */
        generateTestText(index) {
            const lines = [
                "Hi!", // 1 line
                "How are you today?", // 1 line
                "This is a two-line message that should wrap nicely.", // 2 lines (49 chars)
                "This is a three-line message for testing medium-length content and wrapping.", // 3 lines (62 chars)
                "This is a four-line message to test the middle range of the sizing system and how the text wraps onto multiple lines.", // 4 lines (97 chars)
                "This is a five-line message that tests longer content blocks and demonstrates how the chat layout adapts when you have a lot of text in a single bubble.", // 5 lines (127 chars)
            ];
            return lines[index % lines.length];
        }
        getCardOptions(cardData) {
            const isUser = cardData.type === CardType.User;
            const preset = this.colorStyle === "green_gray" ? STYLE_GREEN_GRAY : STYLE_BLUE_GRAY;
            const textColorKey = (this.textColor === "white" || this.textColor === "black" || this.textColor === "gray" ? this.textColor : "white");
            return {
                content: cardData.textContent,
                width: this.cardWidth,
                minHeight: this.cardMinHeight,
                maxHeight: this.cardMaxHeight,
                maxLines: this.cardMaxLines,
                style: isUser ? "user" : "bot",
                borderSize: this.cardBorderSize,
                textColor: textColorKey,
                colorDefault: isUser ? preset.userDefault : preset.botDefault,
                colorHover: isUser ? preset.userHover : preset.botHover,
                colorTriggered: isUser ? preset.userTriggered : preset.botTriggered,
                borderColor: isUser ? preset.userBorder : preset.botBorder,
            };
        }
        createCardProgrammatically(cardData) {
            const name = `Card_${cardData.id}_${cardData.type}`;
            const cardObj = global.scene.createSceneObject(name);
            cardObj.setParent(this.sceneObject);
            cardObj.enabled = false;
            (0, FastRoundedRectangle_1.buildRoundedRectangleOnto)(cardObj, this.getCardOptions(cardData));
            const manipulation = cardObj.createComponent(InteractableManipulation_1.InteractableManipulation.getTypeName());
            if (manipulation) {
                manipulation.onManipulationStart.add(() => this.startSwipe(cardObj));
                manipulation.onManipulationEnd.add(() => this.endSwipe());
            }
            return cardObj;
        }
        recalculateDynamicPositions() {
            let indices;
            if (this.chatModeChronological) {
                indices = {
                    topLast: this.currentIndex + 2 < this.cardData.length ? this.currentIndex + 2 : -1,
                    top: this.currentIndex + 1 < this.cardData.length ? this.currentIndex + 1 : -1,
                    mid: this.currentIndex,
                    bottom: this.currentIndex - 1 >= 0 ? this.currentIndex - 1 : -1,
                    bottomLast: this.currentIndex - 2 >= 0 ? this.currentIndex - 2 : -1,
                };
            }
            else {
                indices = this.calculateVisibleIndices(this.currentIndex, this.cardData.length);
            }
            const visibleIndices = [indices.topLast, indices.top, indices.mid, indices.bottom, indices.bottomLast];
            const cardSizes = visibleIndices.map((i) => i >= 0 && i < this.cardData.length ? this.cardData[i].size : new vec3(this.cardWidth, this.cardMinHeight, 0.5));
            this.currentPositions = this.calculateDynamicPositions(this.basePositions, cardSizes, this.spacingMultiplier);
        }
        layoutInitialCards() {
            this.cards.forEach((c) => (c.enabled = false));
            const indices = this.calculateVisibleIndices(this.currentIndex, this.cardData.length);
            const visibleIndices = [indices.topLast, indices.top, indices.mid, indices.bottom, indices.bottomLast];
            visibleIndices.forEach((cardIndex, posIndex) => {
                if (cardIndex >= 0 && cardIndex < this.cards.length) {
                    const card = this.cards[cardIndex];
                    card.enabled = true;
                    card.getTransform().setLocalPosition(this.getCardPosition(this.currentPositions[posIndex], cardIndex, posIndex));
                }
            });
        }
        setupSwipeInteraction() {
            // Swipe is already wired in createCardProgrammatically for each card
        }
        startSwipe(card) {
            this.swipeState.swipedObject = card;
            this.swipeState.originalPosition = card.getTransform().getLocalPosition();
            this.swipeState.originalRotation = card.getTransform().getLocalRotation();
            this.swipeState.isSwipping = true;
            this.swipeState.swipeStartPosition = card.getTransform().getLocalPosition();
        }
        endSwipe() {
            if (!this.swipeState.isSwipping || !this.swipeState.swipedObject)
                return;
            this.returnCardToOriginalPosition();
            this.swipeState.isSwipping = false;
            this.swipeState.swipedObject = null;
        }
        returnCardToOriginalPosition() {
            if (!this.swipeState.swipedObject)
                return;
            this.swipeState.swipedObject.getTransform().setLocalRotation(this.swipeState.originalRotation);
            this.animatingCards.set(this.swipeState.swipedObject, {
                target: this.swipeState.originalPosition,
                isVisible: true,
            });
        }
        update() {
            this.updateAnimations();
            if (this.testMode && this.initialized) {
                this.testTimer += getDeltaTime();
                if (this.testTimer >= this.testInterval && this.cardData.length < this.maxTestCards) {
                    this.addTestCard();
                    this.testTimer = 0;
                }
            }
        }
        addTestCard() {
            const newIndex = this.cardData.length;
            const cardType = newIndex % 2 === 0 ? CardType.User : CardType.Chatbot;
            const textContent = this.generateTestText(newIndex % 6);
            const cardData = {
                id: newIndex,
                type: cardType,
                textContent,
                size: this.calculateCardSize(textContent),
                sceneObject: null,
            };
            const cardObj = this.createCardProgrammatically(cardData);
            cardData.sceneObject = cardObj;
            this.cards.push(cardObj);
            this.cardData.push(cardData);
            this.recalculateDynamicPositions();
            this.updateCardLayoutToIndex(this.currentIndex);
        }
        updateCardLayoutToIndex(targetIndex) {
            this.currentIndex = targetIndex;
            this.recalculateDynamicPositions();
            this.cleanupCardAnimations();
            this.hideAllCards();
            let indices;
            if (this.chatModeChronological) {
                indices = {
                    topLast: this.currentIndex + 2 < this.cardData.length ? this.currentIndex + 2 : -1,
                    top: this.currentIndex + 1 < this.cardData.length ? this.currentIndex + 1 : -1,
                    mid: this.currentIndex,
                    bottom: this.currentIndex - 1 >= 0 ? this.currentIndex - 1 : -1,
                    bottomLast: this.currentIndex - 2 >= 0 ? this.currentIndex - 2 : -1,
                };
            }
            else {
                indices = this.calculateVisibleIndices(this.currentIndex, this.cardData.length);
            }
            const visibleCards = [
                { card: indices.topLast >= 0 && indices.topLast < this.cards.length ? this.cards[indices.topLast] : null, position: this.currentPositions[0], positionIndex: 0, cardIndex: indices.topLast },
                { card: indices.top >= 0 && indices.top < this.cards.length ? this.cards[indices.top] : null, position: this.currentPositions[1], positionIndex: 1, cardIndex: indices.top },
                { card: indices.mid >= 0 && indices.mid < this.cards.length ? this.cards[indices.mid] : null, position: this.currentPositions[2], positionIndex: 2, cardIndex: indices.mid },
                { card: indices.bottom >= 0 && indices.bottom < this.cards.length ? this.cards[indices.bottom] : null, position: this.currentPositions[3], positionIndex: 3, cardIndex: indices.bottom },
                { card: indices.bottomLast >= 0 && indices.bottomLast < this.cards.length ? this.cards[indices.bottomLast] : null, position: this.currentPositions[4], positionIndex: 4, cardIndex: indices.bottomLast },
            ];
            visibleCards.forEach(({ card, position, positionIndex, cardIndex }) => {
                if (card) {
                    card.enabled = true;
                    this.animatingCards.set(card, { target: this.getCardPosition(position, cardIndex, positionIndex), isVisible: true });
                }
            });
            this.syncScrollbarFromIndex();
        }
        cleanupCardAnimations() {
            this.animatingCards.clear();
        }
        hideAllCards() {
            this.cards.forEach((c) => (c.enabled = false));
        }
        updateAnimations() {
            const toRemove = [];
            this.animatingCards.forEach((anim, card) => {
                if (!card || !card.getTransform()) {
                    toRemove.push(card);
                    return;
                }
                const cur = card.getTransform().getLocalPosition();
                const dist = cur.distance(anim.target);
                if (dist < 0.1) {
                    card.getTransform().setLocalPosition(anim.target);
                    if (!anim.isVisible)
                        card.enabled = false;
                    toRemove.push(card);
                }
                else {
                    card.getTransform().setLocalPosition(vec3.lerp(cur, anim.target, this.animationSpeed));
                }
            });
            toRemove.forEach((c) => this.animatingCards.delete(c));
        }
        // ========== PUBLIC API ==========
        addUserMessage(text) {
            const content = text.substring(0, TextLimiter_1.CHARACTER_LIMITS.USER_CARD_TEXT);
            this.addCard(CardType.User, content);
        }
        addBotMessage(text) {
            const content = text.substring(0, TextLimiter_1.CHARACTER_LIMITS.BOT_CARD_TEXT);
            this.addCard(CardType.Chatbot, content);
        }
        addCard(type, textContent) {
            const id = this.cardData.length;
            const cardData = { id, type, textContent, size: this.calculateCardSize(textContent), sceneObject: null };
            const cardObj = this.createCardProgrammatically(cardData);
            cardData.sceneObject = cardObj;
            this.cards.push(cardObj);
            this.cardData.push(cardData);
            this.recalculateDynamicPositions();
            this.updateCardLayoutToIndex(this.cardData.length - 1);
        }
        getCurrentIndex() {
            return this.currentIndex;
        }
        getCardCount() {
            return this.cardData.length;
        }
        /** Returns the scene object for the card at the given index, or null if out of range. */
        getCard(index) {
            if (index < 0 || index >= this.cards.length)
                return null;
            return this.cards[index];
        }
        /** Returns the text content of the card at the given index, or empty string if out of range. */
        getCardMessage(index) {
            if (index < 0 || index >= this.cardData.length)
                return "";
            return this.cardData[index].textContent;
        }
    };
    __setFunctionName(_classThis, "FastChat");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        _onUpdate_decorators = [decorators_1.bindUpdateEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(_classThis, null, _onUpdate_decorators, { kind: "method", name: "onUpdate", static: false, private: false, access: { has: obj => "onUpdate" in obj, get: obj => obj.onUpdate }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        FastChat = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return FastChat = _classThis;
})();
exports.FastChat = FastChat;
//# sourceMappingURL=FastChat.js.map