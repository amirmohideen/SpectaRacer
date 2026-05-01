"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DebugSingleTurnDataHandler = void 0;
const AssociatedDataHelper_1 = require("../Data/AssociatedDataHelper");
const Helpers_1 = require("../Helpers/Helpers");
class DebugSingleTurnDataHandler {
    static getUserDefinedGameVariablesMap(logger, testDataType, studioInputs, inputString) {
        switch (testDataType) {
            case "Studio Inputs":
                return (0, Helpers_1.getUserDefinedGameVariablesMapFromInputs)(studioInputs);
            case "JSON String":
                try {
                    return JSON.parse(inputString);
                }
                catch (error) {
                    logger.logWarning("Error while parsing debug json string : " + error.message);
                    return {};
                }
        }
        return {};
    }
    static getTurnHistory(currentTurnCount, useTurnHistory, turnsSavedLimitInput, logger, testDataType, studioInputs, inputStrings) {
        const maxNumEntries = useTurnHistory ? turnsSavedLimitInput : 0;
        switch (testDataType) {
            case "Studio Inputs":
                return studioInputs.slice(0, maxNumEntries)
                    .map((entry, index) => {
                    return {
                        turnCount: currentTurnCount - 1 - studioInputs.length + index,
                        userDefinedGameVariables: (0, Helpers_1.getUserDefinedGameVariablesMapFromInputs)(entry.variables),
                        isTurnComplete: entry.isTurnComplete,
                    };
                })
                    .filter((entry) => {
                    const isValid = entry.turnCount >= 0;
                    if (!isValid) {
                        logger.logWarning("Skipping turn history entry with invalid turn count : " + entry.turnCount);
                    }
                    return isValid;
                });
            case "JSON String":
                return inputStrings.slice(0, maxNumEntries)
                    .map((entry, index) => {
                    let userDefinedGameVariables = {};
                    try {
                        userDefinedGameVariables = JSON.parse(entry.variables);
                    }
                    catch (error) {
                        logger.logWarning("Error while parsing debug json string : " + error.message);
                    }
                    return {
                        turnCount: currentTurnCount - 1 - studioInputs.length + index,
                        userDefinedGameVariables,
                        isTurnComplete: entry.isTurnComplete,
                    };
                });
        }
        return [];
    }
    constructor(logger, debugTurnCount, isTurnComplete, debugUserDefinedGameVariables, turnHistory) {
        this.logger = logger;
        this.debugTurnCount = debugTurnCount;
        this.isTurnComplete = isTurnComplete;
        this.debugUserDefinedGameVariables = debugUserDefinedGameVariables;
        this.turnHistory = turnHistory;
    }
    getPromptData() {
        return Promise.resolve({
            associatedData: AssociatedDataHelper_1.AssociatedDataHelper.serialize(this.logger, {
                turnCount: this.debugTurnCount - 1,
                userDefinedGameVariables: this.debugUserDefinedGameVariables,
                user0Storage: {},
                user1Storage: {},
                globalStorage: {},
                turnHistory: this.turnHistory,
                isTurnComplete: this.isTurnComplete,
            }),
            otherUser: null,
        });
    }
    setPromptData(associatedData, tappables, score, isComplete, onSuccess, onFailure) {
        // Skip setting prompt data
        onSuccess();
    }
    requestCompliesWithSizeLimits() {
        return true;
    }
}
exports.DebugSingleTurnDataHandler = DebugSingleTurnDataHandler;
//# sourceMappingURL=DebugSingleTurnDataHandler.js.map