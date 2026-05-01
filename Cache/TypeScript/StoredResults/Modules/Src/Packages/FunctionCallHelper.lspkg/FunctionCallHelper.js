"use strict";
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
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.ButtonClickEvent = exports.TriggerableFunction = void 0;
var __selfType = requireType("./FunctionCallHelper");
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
 * Dynamic button generator for triggering component functions. Automatically creates UI buttons
 * from an array of triggerable functions, enabling dynamic UI creation with GridLayout support.
 */
const CapsuleButton_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Button/CapsuleButton");
const RectangleButton_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/Button/RectangleButton");
const ScrollWindow_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/ScrollWindow/ScrollWindow");
const GridLayout_1 = require("SpectaclesUIKit.lspkg/Scripts/Components/GridLayout/GridLayout");
const ValidationUtils_1 = require("Utilities.lspkg/Scripts/Utils/ValidationUtils");
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
// Defines a function that can be triggered via button click
class TriggerableFunction {
}
exports.TriggerableFunction = TriggerableFunction;
let ButtonClickEvent = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var ButtonClickEvent = _classThis = class extends _classSuper {
        constructor() {
            super();
            // Array of functions to create buttons for
            this.triggerableFunctions = this.triggerableFunctions;
            // Button prefab to instantiate - assign in inspector
            this.buttonPrefab = this.buttonPrefab;
            // Parent SceneObject where buttons will be instantiated - assign in inspector
            this.parentObject = this.parentObject;
            // Optional: ScrollWindow component - will be found automatically if not assigned
            this.scrollWindow = this.scrollWindow;
            // Optional: GridLayout component - will be found automatically if not assigned
            this.gridLayout = this.gridLayout;
            this.scrollWindowInitialized = false;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        __initialize() {
            super.__initialize();
            // Array of functions to create buttons for
            this.triggerableFunctions = this.triggerableFunctions;
            // Button prefab to instantiate - assign in inspector
            this.buttonPrefab = this.buttonPrefab;
            // Parent SceneObject where buttons will be instantiated - assign in inspector
            this.parentObject = this.parentObject;
            // Optional: ScrollWindow component - will be found automatically if not assigned
            this.scrollWindow = this.scrollWindow;
            // Optional: GridLayout component - will be found automatically if not assigned
            this.gridLayout = this.gridLayout;
            this.scrollWindowInitialized = false;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
        }
        /**
         * Called when component is initialized
         */
        onAwake() {
            // Initialize logger
            this.logger = new Logger_1.Logger("ButtonClickEvent", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
            this.createEvent("OnStartEvent").bind(this.onStart.bind(this));
        }
        onStart() {
            // Validate inputs using Utilities
            ValidationUtils_1.ValidationUtils.assertNotNull(this.buttonPrefab, "FunctionTriggerer: Button prefab is not assigned. Assign a button prefab in the inspector.");
            ValidationUtils_1.ValidationUtils.assertNotNull(this.parentObject, "FunctionTriggerer: Parent object is not assigned. Assign a parent SceneObject in the inspector.");
            // Try to find ScrollWindow if not assigned
            if (!this.scrollWindow) {
                // Search in parent hierarchy
                let current = this.parentObject;
                while (current) {
                    this.scrollWindow = current.getComponent(ScrollWindow_1.ScrollWindow.getTypeName());
                    if (this.scrollWindow) {
                        print(`Found ScrollWindow on: ${current.name}`);
                        break;
                    }
                    current = current.getParent();
                }
            }
            // Try to find GridLayout if not assigned
            if (!this.gridLayout) {
                // Search in parent hierarchy
                let current = this.parentObject;
                while (current) {
                    this.gridLayout = current.getComponent(GridLayout_1.GridLayout.getTypeName());
                    if (this.gridLayout) {
                        print(`Found GridLayout on: ${current.name}`);
                        break;
                    }
                    current = current.getParent();
                }
            }
            // If ScrollWindow exists, wait for initialization before creating buttons
            if (this.scrollWindow) {
                if (this.scrollWindow.isInitialized) {
                    this.scrollWindowInitialized = true;
                    this.createButtonsAndUpdateScroll();
                }
                else {
                    this.scrollWindow.onInitialized.add(() => {
                        this.scrollWindowInitialized = true;
                        this.createButtonsAndUpdateScroll();
                    });
                }
            }
            else {
                // No ScrollWindow, just create buttons normally
                this.createButtonsAndUpdateScroll();
            }
        }
        // Creates buttons and updates scroll dimensions
        createButtonsAndUpdateScroll() {
            // Create buttons for each triggerable function
            if (this.triggerableFunctions && this.triggerableFunctions.length > 0) {
                for (let i = 0; i < this.triggerableFunctions.length; i++) {
                    const triggerableFunction = this.triggerableFunctions[i];
                    this.createButton(triggerableFunction, i);
                }
                // Ensure GridLayout is updated after adding new children
                if (this.gridLayout) {
                    if (!this.gridLayout.isInitialized) {
                        this.gridLayout.initialize();
                    }
                    else {
                        // Re-layout to position newly added buttons
                        this.gridLayout.layout();
                    }
                }
                // Update ScrollWindow dimensions if available
                if (this.scrollWindow && this.scrollWindowInitialized) {
                    this.updateScrollDimensions();
                }
            }
        }
        // Updates ScrollWindow scroll dimensions based on number of functions and GridLayout
        updateScrollDimensions() {
            if (!this.scrollWindow || !this.scrollWindowInitialized) {
                return;
            }
            const functionCount = this.triggerableFunctions ? this.triggerableFunctions.length : 0;
            if (functionCount === 0) {
                return;
            }
            let scrollDimensionX = 0;
            let scrollDimensionY = 0;
            // If GridLayout exists, use its cell size for calculations
            if (this.gridLayout) {
                // GridLayout properties are available even if not initialized
                // But we should ensure it's initialized for accurate calculations
                if (!this.gridLayout.isInitialized) {
                    print(`GridLayout not initialized yet, initializing now...`);
                    this.gridLayout.initialize();
                }
                const totalCellSize = this.gridLayout.totalCellSize;
                const totalRows = this.gridLayout.totalRows;
                const totalColumns = this.gridLayout.totalColumns;
                // Calculate scroll dimensions based on GridLayout
                scrollDimensionX = totalColumns * totalCellSize.x;
                scrollDimensionY = totalRows * totalCellSize.y;
                print(`Updating ScrollWindow dimensions using GridLayout: ${scrollDimensionX} x ${scrollDimensionY}`);
                print(`GridLayout: ${totalRows} rows x ${totalColumns} columns, cell size: ${totalCellSize.x} x ${totalCellSize.y}`);
                // Update snap region if scroll snapping is enabled
                if (this.scrollWindow.scrollSnapping) {
                    // Set snap region to match cell size (for vertical scrolling, use Y component)
                    const snapRegion = this.scrollWindow.snapRegion;
                    if (this.scrollWindow.vertical) {
                        this.scrollWindow.snapRegion = new vec2(snapRegion.x, totalCellSize.y);
                        print(`Updated snap region Y to: ${totalCellSize.y} (matches cell height)`);
                    }
                    if (this.scrollWindow.horizontal) {
                        this.scrollWindow.snapRegion = new vec2(totalCellSize.x, snapRegion.y);
                        print(`Updated snap region X to: ${totalCellSize.x} (matches cell width)`);
                    }
                }
            }
            else {
                // Fallback: use a default cell height (e.g., 4 units per button)
                // This matches the FunctionTriggerer example
                const defaultCellHeight = 4;
                scrollDimensionY = functionCount * defaultCellHeight;
                // Use current window width or a default
                // Access windowSize property directly or via method
                const scrollWindowAny = this.scrollWindow;
                scrollDimensionX = scrollWindowAny.getWindowSize ? scrollWindowAny.getWindowSize().x : scrollWindowAny.windowSize?.x || 10;
                print(`Updating ScrollWindow dimensions using default calculation: ${scrollDimensionX} x ${scrollDimensionY}`);
            }
            // Update scroll dimensions
            // Use type casting to access methods that may not be in TypeScript definitions
            const scrollWindowAny = this.scrollWindow;
            if (scrollWindowAny.setScrollDimensions) {
                scrollWindowAny.setScrollDimensions(new vec2(scrollDimensionX, scrollDimensionY));
                const dimensions = scrollWindowAny.getScrollDimensions ? scrollWindowAny.getScrollDimensions() : scrollWindowAny.scrollDimensions;
                print(`ScrollWindow scroll dimensions set to: ${dimensions}`);
            }
            else {
                // Fallback: try setting scrollDimensions property directly
                scrollWindowAny.scrollDimensions = new vec2(scrollDimensionX, scrollDimensionY);
                print(`ScrollWindow scroll dimensions set to: ${scrollWindowAny.scrollDimensions}`);
            }
            // Set initial scroll position to top (for vertical scrolling)
            if (this.scrollWindow.vertical) {
                this.scrollWindow.scrollPositionNormalized = new vec2(0, 1);
                print(`Scroll position set to top (normalized: 0, 1)`);
            }
        }
        // Splits text into multiple lines by spaces or PascalCase words, preserving capitalization
        splitIntoLines(text) {
            // First try splitting by spaces
            if (text.includes(" ")) {
                return text.split(" ").join("\n");
            }
            // If no spaces, split by PascalCase (capital letters)
            // Match capital letters that are followed by lowercase letters or end of string
            const words = text.split(/(?=[A-Z])/).filter(word => word.length > 0);
            return words.join("\n");
        }
        // Creates a button for the given triggerable function
        createButton(triggerableFunction, index) {
            // Instantiate button under the parent
            // Position is handled by external behavior
            const buttonObject = this.buttonPrefab.instantiate(this.parentObject);
            // Get button component - try both CapsuleButton and RectangleButton
            // Try root first, then search children recursively
            let button = buttonObject.getComponent(CapsuleButton_1.CapsuleButton.getTypeName()) ||
                buttonObject.getComponent(RectangleButton_1.RectangleButton.getTypeName());
            // If not found on root, search in children
            if (!button) {
                for (let i = 0; i < buttonObject.children.length; i++) {
                    const child = buttonObject.getChild(i);
                    button = child.getComponent(CapsuleButton_1.CapsuleButton.getTypeName()) ||
                        child.getComponent(RectangleButton_1.RectangleButton.getTypeName());
                    if (button) {
                        break;
                    }
                }
            }
            if (button && button.onTriggerUp) {
                print(`Button component found for function: ${triggerableFunction.functionName}`);
                button.onTriggerUp.add(() => {
                    print(`Button clicked for function: ${triggerableFunction.functionName}`);
                    this.invokeFunction(triggerableFunction.script, triggerableFunction.functionName);
                });
            }
            else {
                print(`Warning: Button component not found on button prefab. Searching for any component with onTriggerUp...`);
                // Try to find any component with onTriggerUp method
                const allComponents = buttonObject.getComponents("Component");
                for (let i = 0; i < allComponents.length; i++) {
                    const comp = allComponents[i];
                    if (comp && comp.onTriggerUp) {
                        print(`Found component with onTriggerUp: ${comp.getTypeName()}`);
                        comp.onTriggerUp.add(() => {
                            print(`Button clicked for function: ${triggerableFunction.functionName}`);
                            this.invokeFunction(triggerableFunction.script, triggerableFunction.functionName);
                        });
                        break;
                    }
                }
                print(`Found components: ${allComponents.map(c => c.getTypeName()).join(", ")}`);
            }
            // Set button text if text component exists
            // Use beautified function name if available, otherwise use function name
            const textChild = buttonObject.getChild(0);
            if (textChild) {
                const textComponent = textChild.getComponent("Text");
                if (textComponent) {
                    let displayName = triggerableFunction.functionName;
                    // Check if script has getFunctionName method for beautified display name
                    if (triggerableFunction.script) {
                        const script = triggerableFunction.script;
                        print(`Setting text for function: ${triggerableFunction.functionName}, script: ${script ? script.getTypeName() : "null"}`);
                        if (script.getFunctionName && typeof script.getFunctionName === "function") {
                            try {
                                displayName = script.getFunctionName();
                                print(`Using beautified name: ${displayName}`);
                            }
                            catch (e) {
                                print(`Error calling getFunctionName: ${e}`);
                            }
                        }
                        else {
                            print(`getFunctionName not found or not a function for ${triggerableFunction.functionName}`);
                        }
                    }
                    else {
                        print(`Warning: Script component is null for function: ${triggerableFunction.functionName}`);
                    }
                    // Set text on a single line (no splitting)
                    textComponent.text = displayName;
                    print(`Button text set to: ${displayName}`);
                }
                else {
                    print(`Warning: Text component not found on button child`);
                }
            }
            else {
                print(`Warning: Text child not found on button object`);
            }
        }
        // Invokes the specified function on the script component
        invokeFunction(scriptComponent, functionName) {
            print(`invokeFunction called with functionName: ${functionName}`);
            if (!scriptComponent) {
                print(`Error: Script component is missing for function "${functionName}"`);
                throw new Error(`FunctionTriggerer: Script component is missing for function "${functionName}"`);
            }
            if (!functionName || functionName === "") {
                print(`Error: Function name is empty`);
                throw new Error("FunctionTriggerer: Function name is empty");
            }
            // Call the function if it exists on the script component
            const script = scriptComponent;
            print(`Checking for function "${functionName}" on script component`);
            if (script[functionName] && typeof script[functionName] === "function") {
                print(`Calling function "${functionName}"`);
                script[functionName]("");
                print(`Function "${functionName}" called successfully`);
            }
            else {
                print(`Error: Function "${functionName}" not found on script component. Available methods: ${Object.getOwnPropertyNames(script).filter(name => typeof script[name] === "function").join(", ")}`);
                throw new Error(`FunctionTriggerer: Function "${functionName}" not found on script component`);
            }
        }
    };
    __setFunctionName(_classThis, "ButtonClickEvent");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        ButtonClickEvent = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return ButtonClickEvent = _classThis;
})();
exports.ButtonClickEvent = ButtonClickEvent;
//# sourceMappingURL=FunctionCallHelper.js.map