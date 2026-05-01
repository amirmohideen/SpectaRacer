"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.BehaviorResponseConfig = exports.BehaviorResponse = void 0;
const Helpers_1 = require("../Helpers/Helpers");
class BehaviorResponse {
    constructor(trigger, _context) {
        this.trigger = trigger;
    }
    static createFromConfig(config, context) {
        const triggerFunction = function fetchTriggerFunction() {
            switch (config.behaviorResponseType) {
                case BehaviorResponseType.GlobalCustomTrigger:
                    // If the behavior system is not available, then there are no behavior scripts listening for this trigger.
                    // Therefore, we don't need to print warning statements. Doing nothing is an expected behavior.
                    return () => global["behaviorSystem"]?.sendCustomTrigger(config.customTriggerName);
                case BehaviorResponseType.ManualTrigger:
                    if (!config.behaviorScript) {
                        context.logger.logWarning("Behavior script is not provided for manual trigger.");
                        return null;
                    }
                    return () => {
                        const triggerMethod = config.behaviorScript.trigger;
                        if (typeof triggerMethod === "function") {
                            triggerMethod();
                        }
                        else {
                            context.logger.logWarning("Behavior script does not have a trigger method. Skipping execution.");
                        }
                    };
                default:
                    (0, Helpers_1.assertNever)(config.behaviorResponseType);
            }
        }();
        if (!triggerFunction) {
            return null;
        }
        return new BehaviorResponse(triggerFunction, context);
    }
}
exports.BehaviorResponse = BehaviorResponse;
class BehaviorResponseConfig {
    constructor() {
        this.behaviorResponseType = 0;
        this.customTriggerName = "";
    }
}
exports.BehaviorResponseConfig = BehaviorResponseConfig;
var BehaviorResponseType;
(function (BehaviorResponseType) {
    BehaviorResponseType[BehaviorResponseType["GlobalCustomTrigger"] = 0] = "GlobalCustomTrigger";
    BehaviorResponseType[BehaviorResponseType["ManualTrigger"] = 1] = "ManualTrigger";
})(BehaviorResponseType || (BehaviorResponseType = {}));
//# sourceMappingURL=BehaviorResponse.js.map