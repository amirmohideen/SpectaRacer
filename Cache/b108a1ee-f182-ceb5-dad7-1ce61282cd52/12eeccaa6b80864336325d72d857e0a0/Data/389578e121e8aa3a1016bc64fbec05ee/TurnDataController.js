"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TurnDataController = void 0;
const Turn_Based_1 = require("../../Turn Based");
const Helpers_1 = require("../Helpers/Helpers");
const Watcher_1 = require("../Helpers/Watcher");
const StorageAccessor_1 = require("./StorageAccessor");
class TurnDataController {
    constructor(turnLimit, logger, turnsSavedLimit, requireTurnSubmission, allowChangingTurnVariablesAfterTurnSubmission, defaultTurnGameVariables) {
        this.turnLimit = turnLimit;
        this.logger = logger;
        this.turnsSavedLimit = turnsSavedLimit;
        this.requireTurnSubmission = requireTurnSubmission;
        this.allowChangingTurnVariablesAfterTurnSubmission = allowChangingTurnVariablesAfterTurnSubmission;
        this.isGameOverValue = false;
        this.isTurnDataCompleteSentValue = false;
        this.wasTurnDataChanged = false;
        this.score = null;
        this.isCompleteWatcher = new Watcher_1.Watcher(() => this.wasInitialised() ? this.isFinalTurnForTurnCount(this.turnData.turnCount) : undefined);
        this.initializedPromise = new Promise((resolve) => this.onInitialized = resolve);
        this.turnData = {
            turnCount: undefined,
            userDefinedGameVariables: (0, Helpers_1.getUserDefinedGameVariablesMapFromInputs)(defaultTurnGameVariables),
            user0Storage: undefined,
            user1Storage: undefined,
            globalStorage: undefined,
            turnHistory: undefined,
            isTurnComplete: this.requireTurnSubmission ? false : undefined,
        };
        this.globalStorage = new StorageAccessor_1.StorageAccessor(this.initializedPromise.then(data => data.globalStorage));
        this.user0Storage = new StorageAccessor_1.StorageAccessor(this.initializedPromise.then(data => data.user0Storage));
        this.user1Storage = new StorageAccessor_1.StorageAccessor(this.initializedPromise.then(data => data.user1Storage));
    }
    setScore(score) {
        this.score = score;
    }
    getScore() {
        return this.score;
    }
    wasTurnDataModified() {
        if (!this.wasInitialised()) {
            return false;
        }
        return this.wasTurnDataChanged;
    }
    wasStorageDataModified() {
        if (!this.wasInitialised()) {
            return false;
        }
        return this.globalStorage.wasDataChanged
            || this.user0Storage.wasDataChanged
            || this.user1Storage.wasDataChanged;
    }
    wasIsGameOverModified() {
        if (!this.wasInitialised()) {
            return false;
        }
        return this.isCompleteWatcher.update();
    }
    resetModified() {
        this.wasTurnDataChanged = false;
        this.globalStorage.wasDataChanged = false;
        this.user0Storage.wasDataChanged = false;
        this.user1Storage.wasDataChanged = false;
    }
    getAssociatedData() {
        return this.turnData;
    }
    getIsComplete() {
        if (!this.wasInitialised()) {
            return false;
        }
        return this.isFinalTurnForTurnCount(this.turnData.turnCount);
    }
    async getCurrentUserIndex() {
        await this.initializedPromise;
        return this.turnData.turnCount % Turn_Based_1.NUMBER_USERS;
    }
    async initialize(promptData) {
        const currentTurnCount = promptData.turnCount + 1;
        const turnHistory = currentTurnCount === 0
            ? []
            : [...promptData.turnHistory, {
                    turnCount: promptData.turnCount,
                    isTurnComplete: promptData.isTurnComplete,
                    userDefinedGameVariables: promptData.userDefinedGameVariables,
                }];
        this.removeOldTurnHistoryEntries(turnHistory, false);
        this.turnData.turnHistory = turnHistory;
        this.turnData.turnCount = currentTurnCount;
        this.wasTurnDataChanged = true;
        this.turnData.user0Storage = promptData.user0Storage;
        this.turnData.user1Storage = promptData.user1Storage;
        this.turnData.globalStorage = promptData.globalStorage;
        this.onInitialized(this.turnData);
    }
    setIsGameOver(isGameOver) {
        this.isGameOverValue = isGameOver;
    }
    endTurn() {
        if (this.requireTurnSubmission) {
            this.turnData.isTurnComplete = true;
            this.wasTurnDataChanged = true;
        }
    }
    getTurnLimit() {
        return this.turnLimit;
    }
    setTurnLimit(turnLimit) {
        this.turnLimit = turnLimit;
    }
    getVariable(key) {
        return this.turnData.userDefinedGameVariables[key];
    }
    setVariable(key, value) {
        if (!this.canChangeVariables()) {
            this.logger.logWarning("Turn ended. Can not update turn variables");
            return;
        }
        if (typeof value === "object") {
            this.wasTurnDataChanged = true;
        }
        if (this.turnData.userDefinedGameVariables[key] !== value) {
            this.wasTurnDataChanged = true;
        }
        this.turnData.userDefinedGameVariables[key] = value;
    }
    clearVariables() {
        if (!this.canChangeVariables()) {
            this.logger.logWarning("Turn ended. Can not clear turn variables");
            return;
        }
        if (Object.keys(this.turnData.userDefinedGameVariables).length > 0) {
            this.wasTurnDataChanged = true;
        }
        this.turnData.userDefinedGameVariables = {};
    }
    async getTurnCount() {
        await this.initializedPromise;
        return this.turnData.turnCount;
    }
    async getTurnHistory() {
        await this.initializedPromise;
        return this.turnData.turnHistory;
    }
    async setTurnsSavedLimit(turnsSavedLimit) {
        await this.initializedPromise;
        this.turnsSavedLimit = turnsSavedLimit;
        this.removeOldTurnHistoryEntries(this.turnData.turnHistory, false);
    }
    getTurnsSavedLimit() {
        return this.turnsSavedLimit;
    }
    async getTurn(turnCount) {
        await this.initializedPromise;
        const turnHistory = this.turnData.turnHistory;
        const turnHistoryEntry = turnHistory.find((entry) => entry.turnCount === turnCount);
        return turnHistoryEntry || null;
    }
    async getPreviousTurn() {
        await this.initializedPromise;
        const turnCount = this.turnData.turnCount;
        return this.getTurn(turnCount - 1);
    }
    async isFinalTurn() {
        await this.initializedPromise;
        const turnCount = this.turnData.turnCount;
        return this.isFinalTurnForTurnCount(turnCount);
    }
    onIsTurnDataCompleteSend(isTurnDataComplete) {
        if (isTurnDataComplete) {
            this.isTurnDataCompleteSentValue = isTurnDataComplete;
        }
    }
    wasIncompleteDataSent() {
        return !this.isTurnDataCompleteSentValue;
    }
    async getUserDataStorage(userIndex) {
        if (isNull(userIndex) || isNaN(userIndex) || userIndex < 0 || userIndex >= Turn_Based_1.NUMBER_USERS) {
            return Promise.reject("User " + userIndex + " does not exist");
        }
        return userIndex === 0 ? this.user0Storage : this.user1Storage;
    }
    async getUserVariables(userIndex) {
        const storage = await this.getUserDataStorage(userIndex);
        return storage.getAllVariables();
    }
    async getUserVariable(userIndex, key) {
        const storage = await this.getUserDataStorage(userIndex);
        return storage.getVariable(key);
    }
    async setUserVariable(userIndex, key, value) {
        const storage = await this.getUserDataStorage(userIndex);
        return storage.setVariable(key, value);
    }
    async getGlobalVariables() {
        return await this.globalStorage.getAllVariables();
    }
    async getGlobalVariable(key) {
        return await this.globalStorage.getVariable(key);
    }
    async setGlobalVariable(key, value) {
        return this.globalStorage.setVariable(key, value);
    }
    removeOldTurnHistoryEntries(turnHistory, shouldCountPromptData) {
        if (isNull(this.turnsSavedLimit)) {
            return;
        }
        const limit = Math.max(0, shouldCountPromptData ? this.turnsSavedLimit - 1 : this.turnsSavedLimit);
        while (turnHistory.length > limit) {
            turnHistory.shift();
        }
    }
    isFinalTurnForTurnCount(turnCount) {
        const isLastTurn = this.turnLimit !== null && this.turnLimit !== undefined
            && this.turnLimit > 0 && turnCount + 1 >= this.turnLimit;
        return isLastTurn || this.isGameOverValue;
    }
    wasInitialised() {
        return this.turnData.turnCount !== undefined;
    }
    canChangeVariables() {
        return this.allowChangingTurnVariablesAfterTurnSubmission || !this.turnData.isTurnComplete || !this.requireTurnSubmission;
    }
}
exports.TurnDataController = TurnDataController;
//# sourceMappingURL=TurnDataController.js.map