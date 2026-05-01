"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.DebugTypeNoneDataHandler = void 0;
class DebugTypeNoneDataHandler {
    getPromptData() {
        return Promise.resolve(null);
    }
    setPromptData(associatedData, tappables, score, isComplete, onSuccess, onFailure) {
        onSuccess();
    }
    requestCompliesWithSizeLimits(associatedData, tappables, score, isComplete) {
        return true;
    }
}
exports.DebugTypeNoneDataHandler = DebugTypeNoneDataHandler;
//# sourceMappingURL=DebugTypeNoneDataHandler.js.map