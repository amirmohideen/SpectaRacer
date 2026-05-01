"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ComponentApiResponseConfig = exports.DiscreteComponentApiResponse = void 0;
class DiscreteComponentApiResponse {
    constructor(config, context) {
        this.config = config;
        this.context = context;
    }
    trigger(data) {
        const method = this.config.component[this.config.methodName];
        if (typeof method === "function") {
            method.call(this.config.component, data);
        }
        else {
            this.context.logger.logWarning(`ComponentApiResponse: Method '${this.config.methodName}' not found on component.`);
        }
    }
    static createFromConfig(config, context) {
        if (!ComponentApiResponseConfig.validate(config, context)) {
            return null;
        }
        return new DiscreteComponentApiResponse(config, context);
    }
}
exports.DiscreteComponentApiResponse = DiscreteComponentApiResponse;
class ComponentApiResponseConfig {
    constructor() {
        this.methodName = "";
    }
}
exports.ComponentApiResponseConfig = ComponentApiResponseConfig;
(function (ComponentApiResponseConfig) {
    function validate(config, context) {
        if (!config.component) {
            context.logger.logWarning("ComponentApiResponse: No component provided in config.");
            return false;
        }
        if (!config.methodName) {
            context.logger.logWarning("ComponentApiResponse: No method name provided in config.");
            return false;
        }
        return true;
    }
    ComponentApiResponseConfig.validate = validate;
})(ComponentApiResponseConfig || (exports.ComponentApiResponseConfig = ComponentApiResponseConfig = {}));
//# sourceMappingURL=ComponentApiResponse.js.map