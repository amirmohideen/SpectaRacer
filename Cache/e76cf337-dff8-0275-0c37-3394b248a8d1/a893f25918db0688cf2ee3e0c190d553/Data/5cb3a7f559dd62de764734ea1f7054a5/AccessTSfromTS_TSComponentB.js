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
exports.TSComponentB = void 0;
var __selfType = requireType("./AccessTSfromTS_TSComponentB");
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
let TSComponentB = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var TSComponentB = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.refScript = (__runInitializers(this, _instanceExtraInitializers), this.refScript);
            this.debug = this.debug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Track if component is initialized
            this.initialized = false;
        }
        __initialize() {
            super.__initialize();
            this.refScript = (__runInitializers(this, _instanceExtraInitializers), this.refScript);
            this.debug = this.debug;
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Track if component is initialized
            this.initialized = false;
        }
        // Helper method for debug logging
        log(message) {
            if (this.enableLogging || this.enableLoggingLifecycle) {
                print(`[TSComponentB] ${message}`);
            }
        }
        onAwake() {
            this.logger = new Logger_1.Logger("TSComponentB", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
        }
        onStart() {
            if (!this.refScript) {
                this.log("Error: TSComponentA reference is missing!");
                return;
            }
            this.initialized = true;
            this.refScript.debug = this.debug;
            this.log("Debug settings synchronized with TSComponentA");
            this.log("Number value: " + this.refScript.numberVal);
            this.log("String value: " + this.refScript.stringVal);
            this.log("Boolean value: " + this.refScript.boolVal);
            this.log("Array value: " + JSON.stringify(this.refScript.arrayVal));
            this.log("Object value: " + JSON.stringify(this.refScript.objectVal));
            this.refScript.printHelloWorld();
            this.log("Last called method: " + this.refScript.getLastCalledMethod());
            const info = this.refScript.getComponentInfo();
            this.log(`Component info: name=${info.name}, version=${info.version}, lastCalled=${info.lastCalled}`);
            const processedData = this.refScript.processData({ id: 123, name: "Test Data" });
            this.log(`Processed data timestamp: ${processedData.timestamp}`);
            const average = this.refScript.calculateAverage(this.refScript.arrayVal);
            this.log(`Average of array values: ${average}`);
            this.log("Initial counter: " + this.refScript.getCounter());
            this.log("After increment: " + this.refScript.incrementCounter());
            this.log("After increment by 5: " + this.refScript.incrementCounter(5));
            this.log("After reset: " + this.refScript.resetCounter());
        }
        // Public methods that could be called from elsewhere
        getComponentInfo() {
            if (!this.initialized || !this.refScript)
                return null;
            return this.refScript.getComponentInfo();
        }
        incrementCounter(amount = 1) {
            if (!this.initialized || !this.refScript)
                return 0;
            const newValue = this.refScript.incrementCounter(amount);
            this.log(`Counter incremented from TSComponentB: ${newValue}`);
            return newValue;
        }
        resetCounter() {
            if (!this.initialized || !this.refScript)
                return 0;
            const newValue = this.refScript.resetCounter();
            this.log(`Counter reset from TSComponentB: ${newValue}`);
            return newValue;
        }
        // Toggle debug mode for both components
        toggleDebug() {
            this.debug = !this.debug;
            if (this.initialized && this.refScript) {
                this.refScript.debug = this.debug;
                this.refScript.toggleDebug();
            }
            this.log(`Debug mode ${this.debug ? 'enabled' : 'disabled'}`);
        }
    };
    __setFunctionName(_classThis, "TSComponentB");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TSComponentB = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TSComponentB = _classThis;
})();
exports.TSComponentB = TSComponentB;
//# sourceMappingURL=AccessTSfromTS_TSComponentB.js.map