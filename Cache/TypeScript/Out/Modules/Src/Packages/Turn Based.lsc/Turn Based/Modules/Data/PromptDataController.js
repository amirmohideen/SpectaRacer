"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.PromptDataController = void 0;
const AssociatedDataHelper_1 = require("./AssociatedDataHelper");
class PromptDataController {
    constructor(dataHandler, logger) {
        this.dataHandler = dataHandler;
        this.logger = logger;
        this.promptDataPromise = this.loadPromptData();
    }
    async getIsTurnComplete() {
        const promptData = await this.promptDataPromise;
        return promptData.associatedData.isTurnComplete;
    }
    getPromptData() {
        return this.promptDataPromise;
    }
    async getVariable(key) {
        const promptData = await this.promptDataPromise;
        return promptData.associatedData.userDefinedGameVariables[key];
    }
    async getOtherUserDynamicResource() {
        const promptData = await this.promptDataPromise;
        return promptData.otherUser;
    }
    async getAllVariables() {
        const promptData = await this.promptDataPromise;
        return promptData.associatedData.userDefinedGameVariables;
    }
    async getPreviousTurnCount() {
        const promptData = await this.promptDataPromise;
        return promptData.associatedData.turnCount;
    }
    deserializePromptData(data) {
        const newGameAssociatedData = AssociatedDataHelper_1.AssociatedDataHelper.createEmpty(-1);
        if (!data) {
            return { associatedData: newGameAssociatedData, otherUser: null };
        }
        let associatedData = isNull(data.associatedData)
            ? newGameAssociatedData
            : AssociatedDataHelper_1.AssociatedDataHelper.deserialize(this.logger, data.associatedData);
        if (isNull(associatedData)) {
            associatedData = newGameAssociatedData;
            this.logger.logError("Associated data is invalid. Starting new game.");
        }
        else {
            const isTurnCountValid = !isNull(associatedData.turnCount) && !isNaN(associatedData.turnCount)
                && associatedData.turnCount >= 0;
            if (!isTurnCountValid) {
                this.logger.logError("Turn count is invalid : " + associatedData.turnCount
                    + ". Starting new game.");
                associatedData = newGameAssociatedData;
            }
            const areUserDefinedGameVariablesValid = !isNull(associatedData.userDefinedGameVariables);
            if (!areUserDefinedGameVariablesValid) {
                this.logger.logError("User defined variables are invalid : " + associatedData.userDefinedGameVariables
                    + ". Starting new game.");
                associatedData = newGameAssociatedData;
            }
        }
        return { associatedData, otherUser: data.otherUser };
    }
    async loadPromptData() {
        const serializedPromptData = await this.dataHandler.getPromptData();
        return this.deserializePromptData(serializedPromptData);
    }
}
exports.PromptDataController = PromptDataController;
//# sourceMappingURL=PromptDataController.js.map