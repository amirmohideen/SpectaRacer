"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.AssociatedDataHelper = void 0;
class AssociatedDataHelper {
    static deserialize(logger, associatedData) {
        try {
            return JSON.parse(associatedData);
        }
        catch (error) {
            logger.logError("Error while deserializing associated data : " + error.message);
            return null;
        }
    }
    static serialize(logger, associatedData, formatted) {
        try {
            if (formatted) {
                return JSON.stringify(associatedData, null, "\t");
            }
            else {
                return JSON.stringify(associatedData);
            }
        }
        catch (error) {
            logger.logError("Error while serializing associated data : " + error.message);
            return JSON.stringify(null);
        }
    }
    static createEmpty(turnCount, defaultValues) {
        return {
            turnCount,
            userDefinedGameVariables: defaultValues
                ? defaultValues
                : {},
            user0Storage: {},
            user1Storage: {},
            globalStorage: {},
            isTurnComplete: false,
            turnHistory: [],
        };
    }
    static isFirstTurnInEditor(promptData) {
        return isNull(promptData) || isNull(promptData.associatedData)
            || promptData.associatedData.length === 0;
    }
}
exports.AssociatedDataHelper = AssociatedDataHelper;
//# sourceMappingURL=AssociatedDataHelper.js.map