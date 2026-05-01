"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.LaunchParamsController = exports.LaunchStates = void 0;
const LAUNCH_DATA_LENS_STATE_KEY = "prompt_lens_state";
const LAUNCH_DATA_TAPPED_KEY = "tapped_key";
var LaunchStates;
(function (LaunchStates) {
    LaunchStates["PromptReply"] = "PROMPT_REPLY";
    LaunchStates["Default"] = "DEFAULT";
})(LaunchStates || (exports.LaunchStates = LaunchStates = {}));
class LaunchParamsController {
    getLaunchState() {
        const launchState = global.launchParams.getString(LAUNCH_DATA_LENS_STATE_KEY);
        return launchState || LaunchStates.Default;
    }
    getTappedKey() {
        const tappedKey = global.launchParams.getString(LAUNCH_DATA_TAPPED_KEY);
        return tappedKey || "";
    }
}
exports.LaunchParamsController = LaunchParamsController;
//# sourceMappingURL=LaunchParamsController.js.map