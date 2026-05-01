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
exports.FastGrid = void 0;
var __selfType = requireType("./FastGrid");
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
 * Fast grid utility that creates a grid of RectangleButtons at runtime with programmatic control.
 * Supports drag-and-drop rearrangement, dynamic content updates, and customizable button layouts.
 */
const Frame_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Frame/Frame");
const GridLayout_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/GridLayout/GridLayout");
const RectangleButton_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Button/RectangleButton");
const ButtonContentLayout_1 = require("./ButtonContentLayout");
const GridRearrangement_1 = require("./GridRearrangement");
const InteractableManipulation_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let FastGrid = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var FastGrid = _classThis = class extends _classSuper {
        constructor() {
            super();
            // ========================================
            // VISIBLE PARAMETERS (User-configurable)
            // ========================================
            this.rows = (__runInitializers(this, _instanceExtraInitializers), this.rows);
            this.columns = this.columns;
            this.buttonWidth = this.buttonWidth;
            this.buttonHeight = this.buttonHeight;
            this.buttonImageTexture = this.buttonImageTexture;
            this.buttonImageMaterial = this.buttonImageMaterial;
            this.draggable = this.draggable;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Hidden button depth (fixed at 1.0)
            this.buttonDepth = 1.0;
            // ========================================
            // HIDDEN PARAMETERS (Fixed defaults, scale proportionally)
            // ========================================
            // Frame configuration
            this.frameAppearance = "Small";
            this.frameAutoShowHide = false;
            this.showCloseButton = true;
            this.frameFollowing = true;
            // Grid configuration
            this.spacing = 0.5;
            // Grid size
            this.autoAdjustFrameSize = true;
            this.gridPadding = new vec2(2, 2);
            this.manualGridSize = new vec2(20, 20);
            // Button style
            this.buttonStyle = "PrimaryNeutral";
            this.hasShadow = true;
            this.renderOrder = 0;
            this.buttonZOffset = 0.5;
            // Button content (Fixed defaults based on 10x10 button)
            this.showButtonImage = true;
            this.buttonImageSize = 2.0;
            this.showButtonTitle = true;
            this.titleTextSize = 40;
            this.titleColor = new vec4(1, 1, 1, 1);
            this.showButtonSubtitle = true;
            this.subtitleTextSize = 30;
            this.subtitleColor = new vec4(0.8, 0.8, 0.8, 1);
            this.imageToTitleSpacing = 1.0;
            this.titleToSubtitleSpacing = 1.5;
            this.contentOffsetX = -4.0;
            this.contentOffsetY = 1.0;
            this.imageOffsetX = 1.0; // Additional offset to move image right relative to text
            this.textHorizontalAlignment = "Left";
            this.textVerticalAlignment = "Center";
            // Text layout rect - defines rendering bounds for text
            // Text aligns with image at x=0, width scales with button size
            this.textLayoutRectLeftOffset = 0; // Start at 0 to align with image
            this.textLayoutRectWidthRatio = 0.70; // Text width as ratio of button width (70%)
            this.textLayoutRectBottom = -2.25;
            this.textLayoutRectTop = 2.25;
            // Interaction
            this.logInteractions = true;
            this.autoGenerate = true;
            // ========================================
            // INTERNAL STATE
            // ========================================
            this.frameObject = null;
            this.frame = null;
            this.gridContainer = null;
            this.gridLayout = null;
            this.buttons = [];
            this.hasWarnedAboutImage = false;
            this.gridRearrangement = null;
        }
        __initialize() {
            super.__initialize();
            // ========================================
            // VISIBLE PARAMETERS (User-configurable)
            // ========================================
            this.rows = (__runInitializers(this, _instanceExtraInitializers), this.rows);
            this.columns = this.columns;
            this.buttonWidth = this.buttonWidth;
            this.buttonHeight = this.buttonHeight;
            this.buttonImageTexture = this.buttonImageTexture;
            this.buttonImageMaterial = this.buttonImageMaterial;
            this.draggable = this.draggable;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Hidden button depth (fixed at 1.0)
            this.buttonDepth = 1.0;
            // ========================================
            // HIDDEN PARAMETERS (Fixed defaults, scale proportionally)
            // ========================================
            // Frame configuration
            this.frameAppearance = "Small";
            this.frameAutoShowHide = false;
            this.showCloseButton = true;
            this.frameFollowing = true;
            // Grid configuration
            this.spacing = 0.5;
            // Grid size
            this.autoAdjustFrameSize = true;
            this.gridPadding = new vec2(2, 2);
            this.manualGridSize = new vec2(20, 20);
            // Button style
            this.buttonStyle = "PrimaryNeutral";
            this.hasShadow = true;
            this.renderOrder = 0;
            this.buttonZOffset = 0.5;
            // Button content (Fixed defaults based on 10x10 button)
            this.showButtonImage = true;
            this.buttonImageSize = 2.0;
            this.showButtonTitle = true;
            this.titleTextSize = 40;
            this.titleColor = new vec4(1, 1, 1, 1);
            this.showButtonSubtitle = true;
            this.subtitleTextSize = 30;
            this.subtitleColor = new vec4(0.8, 0.8, 0.8, 1);
            this.imageToTitleSpacing = 1.0;
            this.titleToSubtitleSpacing = 1.5;
            this.contentOffsetX = -4.0;
            this.contentOffsetY = 1.0;
            this.imageOffsetX = 1.0; // Additional offset to move image right relative to text
            this.textHorizontalAlignment = "Left";
            this.textVerticalAlignment = "Center";
            // Text layout rect - defines rendering bounds for text
            // Text aligns with image at x=0, width scales with button size
            this.textLayoutRectLeftOffset = 0; // Start at 0 to align with image
            this.textLayoutRectWidthRatio = 0.70; // Text width as ratio of button width (70%)
            this.textLayoutRectBottom = -2.25;
            this.textLayoutRectTop = 2.25;
            // Interaction
            this.logInteractions = true;
            this.autoGenerate = true;
            // ========================================
            // INTERNAL STATE
            // ========================================
            this.frameObject = null;
            this.frame = null;
            this.gridContainer = null;
            this.gridLayout = null;
            this.buttons = [];
            this.hasWarnedAboutImage = false;
            this.gridRearrangement = null;
        }
        // Computed button size vec3
        get buttonSize() {
            return new vec3(this.buttonWidth, this.buttonHeight, this.buttonDepth);
        }
        onAwake() {
            this.logger = new Logger_1.Logger("FastGrid", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
        }
        onStart() {
            if (this.autoGenerate) {
                const delayedEvent = this.createEvent("DelayedCallbackEvent");
                delayedEvent.bind(() => this.generateGrid());
                delayedEvent.reset(0.2);
            }
        }
        /**
         * Generate the grid of buttons
         */
        generateGrid() {
            // Clear existing grid if any
            this.clearGrid();
            this.logger.debug(`=== Generating PresetGrid: ${this.rows}×${this.columns} ===`);
            this.logger.debug(`INFO: Use updateButtonText(), updateButtonImage(), and setButtonCallback() to customize buttons at runtime.`);
            // Create Frame
            this.createFrame();
            // Create grid container
            this.gridContainer = global.scene.createSceneObject("GridContainer");
            this.gridContainer.setParent(this.frameObject);
            // Create GridLayout (cell-based grid; padding models inter-cell gap)
            this.gridLayout = this.gridContainer.createComponent(GridLayout_1.GridLayout.getTypeName());
            const halfGap = this.spacing * 0.5;
            this.gridLayout.rows = this.rows;
            this.gridLayout.columns = this.columns;
            this.gridLayout.cellSize = new vec2(this.buttonSize.x, this.buttonSize.y);
            this.gridLayout.cellPadding = new vec4(halfGap, halfGap, halfGap, halfGap);
            this.gridLayout.layoutBy = GridLayout_1.LayoutDirection.Row;
            this.logger.debug(`GridLayout configured: ${this.rows}×${this.columns}, cell size: ${this.buttonSize.x}×${this.buttonSize.y}, spacing: ${this.spacing}`);
            // Create buttons FIRST (direct children of grid container)
            const totalButtons = this.rows * this.columns;
            for (let i = 0; i < totalButtons; i++) {
                const button = this.createButton(i + 1);
                this.buttons.push(button);
            }
            this.logger.debug(`Created ${totalButtons} buttons`);
            // Defer layout until all children exist (programmatic GridLayout)
            const finishLayout = this.createEvent("DelayedCallbackEvent");
            finishLayout.bind(() => {
                if (!this.gridLayout || !this.gridContainer) {
                    return;
                }
                this.gridLayout.layout();
                this.applyButtonZOffset();
                if (this.draggable) {
                    this.setupDraggable();
                }
                this.adjustFrameSize(this.gridLayout);
                this.logger.debug(`FastGrid generation complete`);
            });
            finishLayout.reset(0);
        }
        /**
         * Create Frame component
         * Following UIKit docs pattern: create → initialize → set properties
         */
        createFrame() {
            this.frameObject = global.scene.createSceneObject("Frame");
            this.frameObject.setParent(this.sceneObject);
            // Create Frame component
            this.frame = this.frameObject.createComponent(Frame_1.Frame.getTypeName());
            // Configure Frame properties BEFORE initialization (some need to be set before initialize())
            this.frame._appearance = this.frameAppearance;
            this.frame._showCloseButton = this.showCloseButton;
            this.frame._showFollowButton = this.frameFollowing;
            this.frame.useFollowBehavior = this.frameFollowing; // Enable built-in follow behavior
            this.frame._following = false; // Start with following OFF, user can toggle it on via button
            this.frame.autoShowHide = this.frameAutoShowHide;
            // Initialize Frame (this sets up buttons and event handlers based on above properties)
            this.frame.initialize();
            // Configure remaining Frame properties (after initialization)
            this.frame.allowScaling = false;
            this.frame.autoScaleContent = false;
            // Show the frame explicitly (otherwise it stays hidden)
            if (this.frame.showVisual) {
                this.frame.showVisual();
            }
            this.logger.debug(`Frame created: ${this.frameAppearance}, autoShowHide: ${this.frameAutoShowHide}, closeButton: ${this.showCloseButton}, following: ${this.frameFollowing}`);
        }
        /**
         * Setup draggable functionality for the grid
         */
        setupDraggable() {
            if (!this.gridLayout) {
                this.logger.debug("ERROR: GridLayout not initialized. Cannot setup draggable.");
                return;
            }
            // Add InteractableManipulation component to each button's scene object
            const buttonObjects = [];
            this.buttons.forEach((button, index) => {
                const buttonObj = button.getSceneObject();
                // Create InteractableManipulation component
                const manipulation = buttonObj.createComponent(InteractableManipulation_1.InteractableManipulation.getTypeName());
                buttonObjects.push(buttonObj);
            });
            // Initialize GridRearrangement helper (pass buttonZOffset to preserve Z position)
            this.gridRearrangement = new GridRearrangement_1.GridRearrangement(this.gridLayout, this, 0.8, this.buttonZOffset, this.enableLogging || this.enableLoggingLifecycle, (this.buttonSize.x + this.spacing) * 0.6);
            this.gridRearrangement.setupDragInteractions(buttonObjects);
            this.logger.debug(`Draggable functionality enabled for ${this.buttons.length} buttons`);
        }
        /**
         * Content size (cm) for cell-based GridLayout — matches totalCellSize × occupied tracks.
         */
        computeGridContentSize(gridLayout) {
            const cellW = gridLayout.totalCellSize.x;
            const cellH = gridLayout.totalCellSize.y;
            const childCount = gridLayout.sceneObject.getChildrenCount();
            const cols = gridLayout.columns;
            const flowRows = Math.ceil(childCount / cols);
            return {
                width: cols * cellW,
                height: flowRows * cellH,
            };
        }
        /**
         * Adjust Frame size to fit the grid
         */
        adjustFrameSize(gridLayout) {
            if (!this.frame) {
                return;
            }
            let finalSize;
            if (this.autoAdjustFrameSize) {
                const content = this.computeGridContentSize(gridLayout);
                const gridWidth = content.width;
                const gridHeight = content.height;
                // Add padding
                finalSize = new vec2(gridWidth + this.gridPadding.x, gridHeight + this.gridPadding.y);
                this.logger.debug(`Auto-calculated grid size: ${gridWidth.toFixed(1)}×${gridHeight.toFixed(1)} cm`);
                this.logger.debug(`Frame size (with padding): ${finalSize.x.toFixed(1)}×${finalSize.y.toFixed(1)} cm`);
            }
            else {
                // Use manual size
                finalSize = this.manualGridSize;
                this.logger.debug(`Using manual grid size: ${finalSize.x}×${finalSize.y} cm`);
            }
            // Set Frame innerSize
            this.frame.innerSize = finalSize;
        }
        /**
         * Create a single button with image, title, and subtitle
         */
        createButton(index) {
            const btnObj = global.scene.createSceneObject(`Button_${index}`);
            btnObj.setParent(this.gridContainer);
            // Note: z-offset will be applied AFTER GridLayout positions the buttons
            // Create RectangleButton component
            const button = btnObj.createComponent(RectangleButton_1.RectangleButton.getTypeName());
            // Set style BEFORE initialize (private field, cast to any)
            button._style = this.buttonStyle;
            // Set size BEFORE initialize (UIKit requirement)
            button.size = this.buttonSize;
            // Initialize button
            button.initialize();
            // Configure button properties (after initialization)
            button.renderOrder = this.renderOrder;
            button.hasShadow = this.hasShadow;
            // Add interaction event
            button.onTriggerUp.add(() => {
                if (this.logInteractions) {
                    this.logger.debug(`Button ${index} pressed`);
                }
                this.onButtonPressed(index, button);
            });
            // Add button content (image, title, subtitle)
            this.createButtonContent(btnObj, index);
            return button;
        }
        /**
         * Apply z-offset to all buttons after GridLayout positions them
         */
        applyButtonZOffset() {
            if (!this.gridContainer) {
                return;
            }
            // Iterate through all button objects and adjust their z position
            for (let i = 0; i < this.gridContainer.getChildrenCount(); i++) {
                const buttonObj = this.gridContainer.getChild(i);
                const currentPos = buttonObj.getTransform().getLocalPosition();
                buttonObj.getTransform().setLocalPosition(new vec3(currentPos.x, currentPos.y, this.buttonZOffset));
            }
            this.logger.debug(`Applied z-offset (${this.buttonZOffset} cm) to all buttons`);
        }
        /**
         * Create button content using ButtonContentLayout utility
         * Layout: Image → Title → Subtitle (top to bottom in a container)
         * Automatically scales all properties based on button size (reference: 10x10 cm)
         * Uses aspect-ratio-aware scaling to handle wide/short buttons properly
         */
        createButtonContent(buttonObj, index) {
            // Create configuration
            const config = new ButtonContentLayout_1.ButtonContentLayoutConfig();
            // Calculate scale factors (reference size is 10x10 cm)
            const widthScaleFactor = this.buttonSize.x / 10.0;
            const heightScaleFactor = this.buttonSize.y / 10.0;
            // For image and vertical spacing, use the SMALLER dimension to ensure fit
            // This prevents oversized images when buttons are wide but short
            const verticalScaleFactor = Math.min(widthScaleFactor, heightScaleFactor);
            // Use dampened scaling for text (square root of width) for better fit
            const textScaleFactor = Math.sqrt(widthScaleFactor);
            // Image settings (scale based on vertical space available)
            config.showImage = this.showButtonImage;
            config.imageSize = this.buttonImageSize * verticalScaleFactor;
            // Title settings (use dampened scale factor for better fit)
            config.showTitle = this.showButtonTitle;
            config.titleText = `Item ${index}`;
            config.titleSize = this.titleTextSize * textScaleFactor;
            config.titleColor = this.titleColor;
            // Subtitle settings (use dampened scale factor for better fit)
            config.showSubtitle = this.showButtonSubtitle;
            config.subtitleText = `Description ${index}`;
            config.subtitleSize = this.subtitleTextSize * textScaleFactor;
            config.subtitleColor = this.subtitleColor;
            // Layout settings (vertical spacing scales with height, horizontal with width)
            config.imageToTitleSpacing = this.imageToTitleSpacing * verticalScaleFactor;
            config.titleToSubtitleSpacing = this.titleToSubtitleSpacing * verticalScaleFactor;
            config.offsetX = this.contentOffsetX * widthScaleFactor;
            // Adjust vertical offset: move content UP more when button is shorter
            config.offsetY = this.contentOffsetY * heightScaleFactor;
            // Move image to the right relative to text
            config.imageOffsetX = this.imageOffsetX * widthScaleFactor;
            config.buttonWidth = this.buttonSize.x;
            // Text alignment and layout rect (aligned with image at x=0)
            config.textHorizontalAlignment = this.getHorizontalAlignment(this.textHorizontalAlignment);
            config.textVerticalAlignment = this.getVerticalAlignment(this.textVerticalAlignment);
            // Text rect starts at 0 (aligned with image) and extends right based on button width
            // Using ratio ensures text stays within button bounds regardless of contentOffset
            const textWidth = this.buttonSize.x * this.textLayoutRectWidthRatio;
            config.textLayoutRectLeft = this.textLayoutRectLeftOffset;
            config.textLayoutRectRight = this.textLayoutRectLeftOffset + textWidth;
            // Vertical bounds scale with vertical space to prevent overflow
            config.textLayoutRectBottom = this.textLayoutRectBottom * verticalScaleFactor;
            config.textLayoutRectTop = this.textLayoutRectTop * verticalScaleFactor;
            // Create content layout
            const contentLayout = new ButtonContentLayout_1.ButtonContentLayout(buttonObj, config);
            contentLayout.create();
            // Set image material/texture (if image exists)
            if (this.showButtonImage) {
                this.setImageMaterial(contentLayout);
            }
        }
        /**
         * Convert string to HorizontalAlignment enum
         */
        getHorizontalAlignment(alignment) {
            switch (alignment) {
                case "Left": return HorizontalAlignment.Left;
                case "Right": return HorizontalAlignment.Right;
                case "Center": return HorizontalAlignment.Center;
                default: return HorizontalAlignment.Left;
            }
        }
        /**
         * Convert string to VerticalAlignment enum
         */
        getVerticalAlignment(alignment) {
            switch (alignment) {
                case "Top": return VerticalAlignment.Top;
                case "Bottom": return VerticalAlignment.Bottom;
                case "Center": return VerticalAlignment.Center;
                default: return VerticalAlignment.Center;
            }
        }
        /**
         * Set image material and texture
         */
        setImageMaterial(contentLayout) {
            const imageComponent = contentLayout.getImageComponent();
            if (!imageComponent) {
                return;
            }
            // Warn once if texture or material are not set
            if (!this.hasWarnedAboutImage) {
                if (!this.buttonImageTexture && !this.buttonImageMaterial) {
                    this.logger.debug("WARNING: Button Image Texture and Material are not set. Please assign an image texture and material to visualize icons.");
                    this.hasWarnedAboutImage = true;
                }
                else if (!this.buttonImageTexture) {
                    this.logger.debug("WARNING: Button Image Texture is not set. Please assign an image texture to visualize icons.");
                    this.hasWarnedAboutImage = true;
                }
                else if (!this.buttonImageMaterial) {
                    this.logger.debug("INFO: Button Image Material is not set. Using default unlit material.");
                    this.hasWarnedAboutImage = true;
                }
            }
            // Use custom material if provided, otherwise use default
            if (this.buttonImageMaterial) {
                imageComponent.mainMaterial = this.buttonImageMaterial.clone();
            }
            // Set texture if provided
            const material = imageComponent.mainMaterial;
            if (material && material.mainPass) {
                if (this.buttonImageTexture) {
                    material.mainPass.baseTex = this.buttonImageTexture;
                }
                else {
                    // Gray placeholder
                    material.mainPass.baseColor = new vec4(0.7, 0.7, 0.7, 1);
                }
            }
        }
        /**
         * Clear existing grid and Frame
         */
        clearGrid() {
            // Cleanup drag functionality if it exists
            if (this.gridRearrangement) {
                this.gridRearrangement.destroy();
                this.gridRearrangement = null;
            }
            if (this.gridContainer) {
                this.gridContainer.destroy();
                this.gridContainer = null;
            }
            if (this.frameObject) {
                this.frameObject.destroy();
                this.frameObject = null;
                this.frame = null;
            }
            this.gridLayout = null;
            this.buttons = [];
            this.hasWarnedAboutImage = false;
        }
        /**
         * Override this method to handle button presses
         */
        onButtonPressed(index, button) {
            // Override in derived classes for custom behavior
        }
        /**
         * Get a specific button by index (1-based)
         */
        getButton(index) {
            if (index < 1 || index > this.buttons.length) {
                this.logger.debug(`ERROR: Button index ${index} out of range (1-${this.buttons.length})`);
                return null;
            }
            return this.buttons[index - 1];
        }
        /**
         * Get all buttons
         */
        getButtons() {
            return this.buttons;
        }
        /**
         * Update button text by index (1-based)
         * @param index Button index (1 to total buttons)
         * @param title New title text (optional)
         * @param subtitle New subtitle text (optional)
         */
        updateButtonText(index, title, subtitle) {
            const button = this.getButton(index);
            if (!button) {
                return;
            }
            const buttonObj = button.getSceneObject();
            const contentContainer = buttonObj.getChild(0); // ContentContainer
            if (!contentContainer) {
                this.logger.debug(`ERROR: Button ${index} has no content container`);
                return;
            }
            // Find TextContainer (second child if image exists, first child otherwise)
            let textContainer = null;
            for (let i = 0; i < contentContainer.getChildrenCount(); i++) {
                const child = contentContainer.getChild(i);
                if (child.name === "TextContainer") {
                    textContainer = child;
                    break;
                }
            }
            if (!textContainer) {
                this.logger.debug(`ERROR: Button ${index} has no text container`);
                return;
            }
            // Update title
            if (title !== undefined) {
                for (let i = 0; i < textContainer.getChildrenCount(); i++) {
                    const child = textContainer.getChild(i);
                    if (child.name === "Title") {
                        const textComp = child.getComponent("Component.Text");
                        if (textComp) {
                            textComp.text = title;
                        }
                        break;
                    }
                }
            }
            // Update subtitle
            if (subtitle !== undefined) {
                for (let i = 0; i < textContainer.getChildrenCount(); i++) {
                    const child = textContainer.getChild(i);
                    if (child.name === "Subtitle") {
                        const textComp = child.getComponent("Component.Text");
                        if (textComp) {
                            textComp.text = subtitle;
                        }
                        break;
                    }
                }
            }
        }
        /**
         * Update button image by index (1-based)
         * @param index Button index (1 to total buttons)
         * @param texture New texture (optional)
         * @param material New material (optional)
         */
        updateButtonImage(index, texture, material) {
            const button = this.getButton(index);
            if (!button) {
                return;
            }
            const buttonObj = button.getSceneObject();
            const contentContainer = buttonObj.getChild(0); // ContentContainer
            if (!contentContainer) {
                this.logger.debug(`ERROR: Button ${index} has no content container`);
                return;
            }
            // Find Image object
            let imageObj = null;
            for (let i = 0; i < contentContainer.getChildrenCount(); i++) {
                const child = contentContainer.getChild(i);
                if (child.name === "Image") {
                    imageObj = child;
                    break;
                }
            }
            if (!imageObj) {
                this.logger.debug(`ERROR: Button ${index} has no image object`);
                return;
            }
            const imageComp = imageObj.getComponent("Component.Image");
            if (!imageComp) {
                this.logger.debug(`ERROR: Button ${index} image object has no Image component`);
                return;
            }
            // Update material
            if (material) {
                imageComp.mainMaterial = material.clone();
            }
            // Update texture
            const mat = imageComp.mainMaterial;
            if (texture && mat && mat.mainPass) {
                mat.mainPass.baseTex = texture;
            }
        }
        /**
         * Set button callback by index (1-based)
         * @param index Button index (1 to total buttons)
         * @param callback Function to call when button is pressed
         */
        setButtonCallback(index, callback) {
            const button = this.getButton(index);
            if (!button) {
                return;
            }
            // Add callback to button's onTriggerUp event
            button.onTriggerUp.add(callback);
        }
        /**
         * Update grid size (recalculate and apply Frame size)
         */
        updateGridSize() {
            if (!this.gridContainer) {
                this.logger.debug("ERROR: Grid not generated yet. Call generateGrid() first.");
                return;
            }
            const gridLayout = this.gridContainer.getComponent(GridLayout_1.GridLayout.getTypeName());
            if (gridLayout) {
                this.adjustFrameSize(gridLayout);
            }
        }
        /**
         * Get the calculated grid dimensions
         */
        getGridSize() {
            if (!this.gridContainer) {
                return vec2.zero();
            }
            const gridLayout = this.gridContainer.getComponent(GridLayout_1.GridLayout.getTypeName());
            if (!gridLayout) {
                return vec2.zero();
            }
            const content = this.computeGridContentSize(gridLayout);
            return new vec2(content.width, content.height);
        }
        /**
         * Get the Frame component
         */
        getFrame() {
            return this.frame;
        }
    };
    __setFunctionName(_classThis, "FastGrid");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        FastGrid = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return FastGrid = _classThis;
})();
exports.FastGrid = FastGrid;
//# sourceMappingURL=FastGrid.js.map