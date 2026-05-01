"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DebugSimulateTurnsDataHandler = void 0;
const AssociatedDataHelper_1 = require("../Data/AssociatedDataHelper");
class DebugSimulateTurnsDataHandler {
    constructor(script, debugApiController) {
        this.script = script;
        this.debugApiController = debugApiController;
        this.isComplete = false;
        this.sendData = () => {
            if (this.isComplete) {
                this.debugApiController.setPromptData("", [], null, this.isComplete, () => { }, () => { });
            }
            else {
                this.debugApiController.setPromptData(this.associatedData, this.tappables, 0, this.isComplete, () => { }, () => { });
            }
        };
        if (global.deviceInfoSystem.isEditor()) {
            this.script.createEvent("SnapImageCaptureEvent")
                .bind(this.sendData);
            this.script.createEvent("SnapRecordStopEvent")
                .bind(this.sendData);
        }
    }
    async getPromptData() {
        const promptData = await this.debugApiController.getPromptData();
        if (AssociatedDataHelper_1.AssociatedDataHelper.isFirstTurnInEditor(promptData)) {
            return Promise.resolve(null);
        }
        else {
            return promptData;
        }
    }
    setPromptData(associatedData, tappables, score, isComplete, onSuccess, onFailure) {
        if (!isNull(associatedData)) {
            this.associatedData = associatedData;
        }
        if (!isNull(tappables)) {
            this.tappables = tappables;
        }
        if (!isNull(isComplete)) {
            this.isComplete = isComplete;
        }
        onSuccess();
    }
    requestCompliesWithSizeLimits(associatedData, tappables, score, isComplete) {
        return this.debugApiController.requestCompliesWithSizeLimits(associatedData, tappables, score, isComplete);
    }
}
exports.DebugSimulateTurnsDataHandler = DebugSimulateTurnsDataHandler;
//# sourceMappingURL=DebugSimulateTurnsDataHandler.js.map