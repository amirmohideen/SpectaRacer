"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DiscreteResponseConfig = exports.DiscreteResponse = void 0;
const ComponentApiResponse_1 = require("./ComponentApiResponse");
const BehaviorResponse_1 = require("./BehaviorResponse");
const Helpers_1 = require("../Helpers/Helpers");
var DiscreteResponse;
(function (DiscreteResponse) {
    function createFromConfig(config, context) {
        switch (config.responseType) {
            case DiscreteResponseType.ComponentApi:
                return ComponentApiResponse_1.DiscreteComponentApiResponse.createFromConfig(config.componentApiResponseConfig, context);
            case DiscreteResponseType.Behavior:
                return BehaviorResponse_1.BehaviorResponse.createFromConfig(config.behaviorResponseConfig, context);
            default:
                (0, Helpers_1.assertNever)(config.responseType);
        }
    }
    DiscreteResponse.createFromConfig = createFromConfig;
})(DiscreteResponse || (exports.DiscreteResponse = DiscreteResponse = {}));
class DiscreteResponseConfig {
}
exports.DiscreteResponseConfig = DiscreteResponseConfig;
var DiscreteResponseType;
(function (DiscreteResponseType) {
    DiscreteResponseType[DiscreteResponseType["ComponentApi"] = 0] = "ComponentApi";
    DiscreteResponseType[DiscreteResponseType["Behavior"] = 1] = "Behavior";
})(DiscreteResponseType || (DiscreteResponseType = {}));
//# sourceMappingURL=DiscreteResponse.js.map