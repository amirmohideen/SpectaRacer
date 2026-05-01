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
exports.TSComponentA = void 0;
var __selfType = requireType("./AccessTSfromJS_TSComponentA");
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
 * TypeScript component that can be accessed from JavaScript code. Demonstrates how to create
 * TypeScript components with methods and properties that are callable from JavaScript scripts.
 */
const Logger_1 = require("Utilities.lspkg/Scripts/Utils/Logger");
const decorators_1 = require("SnapDecorators.lspkg/decorators");
let TSComponentA = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    let _instanceExtraInitializers = [];
    let _onStart_decorators;
    var TSComponentA = _classThis = class extends _classSuper {
        constructor() {
            super();
            this.debug = (__runInitializers(this, _instanceExtraInitializers), this.debug);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Basic properties
            this.numberVal = 1;
            this.stringVal = "Hello from TypeScript";
            this.boolVal = true;
            this.arrayVal = [1, 2, 3, 4, 5];
            this.objectVal = {
                name: "TSComponentA",
                version: 1.5,
                features: ["typeSafety", "intellisense"]
            };
            // Private state
            this.counter = 0;
        }
        __initialize() {
            super.__initialize();
            this.debug = (__runInitializers(this, _instanceExtraInitializers), this.debug);
            this.enableLogging = this.enableLogging;
            this.enableLoggingLifecycle = this.enableLoggingLifecycle;
            // Basic properties
            this.numberVal = 1;
            this.stringVal = "Hello from TypeScript";
            this.boolVal = true;
            this.arrayVal = [1, 2, 3, 4, 5];
            this.objectVal = {
                name: "TSComponentA",
                version: 1.5,
                features: ["typeSafety", "intellisense"]
            };
            // Private state
            this.counter = 0;
        }
        onAwake() {
            this.logger = new Logger_1.Logger("TSComponentA", this.enableLogging || this.enableLoggingLifecycle, true);
            if (this.enableLoggingLifecycle) {
                this.logger.debug("LIFECYCLE: onAwake() - Component initializing");
            }
        }
        onStart() {
            this.log("TSComponentA initialized");
        }
        // Helper method for debug logging
        log(message) {
            if (this.enableLogging || this.enableLoggingLifecycle) {
                print(`[TSComponentA] ${message}`);
            }
        }
        // Original method enhanced with debug
        printHelloWorld() {
            if (this.enableLogging || this.enableLoggingLifecycle) {
                print('Hello, world!');
            }
        }
        // New methods
        getDescription() {
            const desc = `TypeScript Component (version ${this.objectVal.version})`;
            this.log(`Description requested: ${desc}`);
            return desc;
        }
        // Math operations
        add(a, b) {
            const result = a + b;
            this.log(`Addition: ${a} + ${b} = ${result}`);
            return result;
        }
        multiply(a, b) {
            const result = a * b;
            this.log(`Multiplication: ${a} * ${b} = ${result}`);
            return result;
        }
        // Counter methods
        incrementCounter(amount = 1) {
            this.counter += amount;
            this.log(`Counter incremented by ${amount} to ${this.counter}`);
            return this.counter;
        }
        resetCounter() {
            this.counter = 0;
            this.log("Counter reset to 0");
            return this.counter;
        }
        getCounter() {
            return this.counter;
        }
        // Toggle debug mode
        toggleDebug() {
            this.debug = !this.debug;
            if (this.enableLogging || this.enableLoggingLifecycle) {
                this.log(`Debug mode ${this.debug ? 'enabled' : 'disabled'}`);
            }
        }
    };
    __setFunctionName(_classThis, "TSComponentA");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        _onStart_decorators = [decorators_1.bindStartEvent];
        __esDecorate(_classThis, null, _onStart_decorators, { kind: "method", name: "onStart", static: false, private: false, access: { has: obj => "onStart" in obj, get: obj => obj.onStart }, metadata: _metadata }, null, _instanceExtraInitializers);
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TSComponentA = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TSComponentA = _classThis;
})();
exports.TSComponentA = TSComponentA;
//# sourceMappingURL=AccessTSfromJS_TSComponentA.js.map