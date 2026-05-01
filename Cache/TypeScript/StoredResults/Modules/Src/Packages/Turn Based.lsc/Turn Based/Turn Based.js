"use strict";
var __esDecorate = (this && this.__esDecorate) || function (ctor, descriptorIn, decorators, contextIn, initializers, extraInitializers) {
    function accept(f) { if (f !== void 0 && typeof f !== "function") throw new TypeError("Function expected"); return f; }
    var kind = contextIn.kind, key = kind === "getter" ? "get" : kind === "setter" ? "set" : "value";
    var target = !descriptorIn && ctor ? contextIn["static"] ? ctor : ctor.prototype : null;
    var descriptor = descriptorIn || (target ? Object.getOwnPropertyDescriptor(target, contextIn.name) : {});
    var _, done = false;
    for (var i = decorators.length - 1; i >= 0; i--) {
        var context = {};
        for (var p in contextIn) context[p] = p === "access" ? {} : contextIn[p];
        for (var p in contextIn.access) context.access[p] = contextIn.access[p];
        context.addInitializer = function (f) { if (done) throw new TypeError("Cannot add initializers after decoration has completed"); extraInitializers.push(accept(f || null)); };
        var result = (0, decorators[i])(kind === "accessor" ? { get: descriptor.get, set: descriptor.set } : descriptor[key], context);
        if (kind === "accessor") {
            if (result === void 0) continue;
            if (result === null || typeof result !== "object") throw new TypeError("Object expected");
            if (_ = accept(result.get)) descriptor.get = _;
            if (_ = accept(result.set)) descriptor.set = _;
            if (_ = accept(result.init)) initializers.unshift(_);
        }
        else if (_ = accept(result)) {
            if (kind === "field") initializers.unshift(_);
            else descriptor[key] = _;
        }
    }
    if (target) Object.defineProperty(target, contextIn.name, descriptor);
    done = true;
};
var __runInitializers = (this && this.__runInitializers) || function (thisArg, initializers, value) {
    var useValue = arguments.length > 2;
    for (var i = 0; i < initializers.length; i++) {
        value = useValue ? initializers[i].call(thisArg, value) : initializers[i].call(thisArg);
    }
    return useValue ? value : void 0;
};
var __setFunctionName = (this && this.__setFunctionName) || function (f, name, prefix) {
    if (typeof name === "symbol") name = name.description ? "[".concat(name.description, "]") : "";
    return Object.defineProperty(f, "name", { configurable: true, value: prefix ? "".concat(prefix, " ", name) : name });
};
Object.defineProperty(exports, "__esModule", { value: true });
exports.TurnBased = exports.DebugTurnHistoryJsonStrings = exports.DebugTurnHistoryStudioInputs = exports.UserDefinedGameVariableInput = exports.TappableAreaInput = exports.UserFlowObjects = exports.ComponentErrorCodes = exports.NUMBER_USERS = void 0;
var __selfType = requireType("./Turn Based");
function component(target) {
    target.getTypeName = function () { return __selfType; };
    if (target.prototype.hasOwnProperty("getTypeName"))
        return;
    Object.defineProperty(target.prototype, "getTypeName", {
        value: function () { return __selfType; },
        configurable: true,
        writable: true
    });
}
const Event_1 = require("./Modules/Helpers/Event");
const Logger_1 = require("./Modules/Helpers/Logger");
const TappablesController_1 = require("./Modules/Tappables/TappablesController");
const LaunchParamsController_1 = require("./Modules/Helpers/LaunchParamsController");
const ApiController_1 = require("./Modules/RemoteAPI/ApiController");
const PromptDataController_1 = require("./Modules/Data/PromptDataController");
const TurnDataController_1 = require("./Modules/Data/TurnDataController");
const CurrentUserController_1 = require("./Modules/Users/CurrentUserController");
const OtherUserController_1 = require("./Modules/Users/OtherUserController");
const SceneObjectsController_1 = require("./Modules/Scene/SceneObjectsController");
const DebugSimulateTurnsDataHandler_1 = require("./Modules/Debug/DebugSimulateTurnsDataHandler");
const DebugSingleTurnDataHandler_1 = require("./Modules/Debug/DebugSingleTurnDataHandler");
const InputsValidator_1 = require("./Modules/InputsValidator");
const TurnDataSender_1 = require("./Modules/Data/TurnDataSender");
const DebugTypeNoneDataHandler_1 = require("./Modules/Debug/DebugTypeNoneDataHandler");
const DebugView_1 = require("./Modules/DebugView/DebugView");
const ComponentContext_1 = require("./Modules/ComponentContext");
const DiscreteResponse_1 = require("./Modules/DiscreteResponses/DiscreteResponse");
exports.NUMBER_USERS = 2;
var ComponentErrorCodes;
(function (ComponentErrorCodes) {
    ComponentErrorCodes["INCOMPLETE_TURN_DATA_SENT"] = "INCOMPLETE_TURN_DATA_SENT";
    ComponentErrorCodes["INCOMPLETE_TURN_DATA_RECEIVED"] = "INCOMPLETE_TURN_DATA_RECEIVED";
})(ComponentErrorCodes || (exports.ComponentErrorCodes = ComponentErrorCodes = {}));
// Typedefs
class UserFlowObjects {
}
exports.UserFlowObjects = UserFlowObjects;
class TappableAreaInput {
}
exports.TappableAreaInput = TappableAreaInput;
class UserDefinedGameVariableInput {
    constructor() {
        this.type = "string";
        this.valueString = "";
        this.valueFloat = 0;
        this.valueBoolean = false;
    }
}
exports.UserDefinedGameVariableInput = UserDefinedGameVariableInput;
class DebugTurnHistoryStudioInputs {
}
exports.DebugTurnHistoryStudioInputs = DebugTurnHistoryStudioInputs;
class DebugTurnHistoryJsonStrings {
    constructor() {
        this.variables = "{\"key1\": \"value1\", \"key2\":0}";
    }
}
exports.DebugTurnHistoryJsonStrings = DebugTurnHistoryJsonStrings;
let TurnBased = (() => {
    let _classDecorators = [component];
    let _classDescriptor;
    let _classExtraInitializers = [];
    let _classThis;
    let _classSuper = BaseScriptComponent;
    var TurnBased = _classThis = class extends _classSuper {
        constructor() {
            super();
            // Events
            this.onTurnStart = new Event_1.Event();
            this.onTurnEnd = new Event_1.Event();
            this.onGameOver = new Event_1.Event();
            this.onError = new Event_1.Event();
            // Inputs
            this.requireTurnSubmission = this.requireTurnSubmission;
            this.allowChangingTurnVariablesAfterTurnSubmission = this.allowChangingTurnVariablesAfterTurnSubmission;
            this.useTurnLimit = this.useTurnLimit;
            this.turnLimitInput = this.turnLimitInput;
            this.useTurnHistory = this.useTurnHistory;
            this.turnsSavedLimitInput = this.turnsSavedLimitInput;
            this.tappableAreasInput = this.tappableAreasInput;
            this.user1FlowObjectsInputSO = this.user1FlowObjectsInputSO;
            this.user2FlowObjectsInputSO = this.user2FlowObjectsInputSO;
            this.gameOverObjectsInputSO = this.gameOverObjectsInputSO;
            this.debugMode = this.debugMode;
            this.swapPlayersAfterSimulatedTurn = this.swapPlayersAfterSimulatedTurn;
            this.debugTappedKeySimulateTurn = this.debugTappedKeySimulateTurn;
            this.debugTurnCount = this.debugTurnCount;
            this.debugTappedKeySingleTurn = this.debugTappedKeySingleTurn;
            this.testDataType = this.testDataType;
            this.debugIsTurnComplete = this.debugIsTurnComplete;
            this.debugAssociatedDataStudioInputs = this.debugAssociatedDataStudioInputs;
            this.debugTurnHistoryStudioInputs = this.debugTurnHistoryStudioInputs;
            this.debugAssociatedDataString = this.debugAssociatedDataString;
            this.debugTurnHistoryStrings = this.debugTurnHistoryStrings;
            this._onTurnStartResponses = this._onTurnStartResponses;
            this._onTurnEndResponses = this._onTurnEndResponses;
            this._onGameOverResponses = this._onGameOverResponses;
            this.printLogsInput = this.printLogsInput;
            this.loggerConfig = this.loggerConfig;
            this.showDebugView = this.showDebugView;
            this._advancedOptions = this._advancedOptions;
            this.defaultTurnVariables = this.defaultTurnVariables;
            this.remoteServiceModule = this.remoteServiceModule;
            this.onLateUpdate = () => {
                this.turnDataSender.update();
            };
        }
        __initialize() {
            super.__initialize();
            // Events
            this.onTurnStart = new Event_1.Event();
            this.onTurnEnd = new Event_1.Event();
            this.onGameOver = new Event_1.Event();
            this.onError = new Event_1.Event();
            // Inputs
            this.requireTurnSubmission = this.requireTurnSubmission;
            this.allowChangingTurnVariablesAfterTurnSubmission = this.allowChangingTurnVariablesAfterTurnSubmission;
            this.useTurnLimit = this.useTurnLimit;
            this.turnLimitInput = this.turnLimitInput;
            this.useTurnHistory = this.useTurnHistory;
            this.turnsSavedLimitInput = this.turnsSavedLimitInput;
            this.tappableAreasInput = this.tappableAreasInput;
            this.user1FlowObjectsInputSO = this.user1FlowObjectsInputSO;
            this.user2FlowObjectsInputSO = this.user2FlowObjectsInputSO;
            this.gameOverObjectsInputSO = this.gameOverObjectsInputSO;
            this.debugMode = this.debugMode;
            this.swapPlayersAfterSimulatedTurn = this.swapPlayersAfterSimulatedTurn;
            this.debugTappedKeySimulateTurn = this.debugTappedKeySimulateTurn;
            this.debugTurnCount = this.debugTurnCount;
            this.debugTappedKeySingleTurn = this.debugTappedKeySingleTurn;
            this.testDataType = this.testDataType;
            this.debugIsTurnComplete = this.debugIsTurnComplete;
            this.debugAssociatedDataStudioInputs = this.debugAssociatedDataStudioInputs;
            this.debugTurnHistoryStudioInputs = this.debugTurnHistoryStudioInputs;
            this.debugAssociatedDataString = this.debugAssociatedDataString;
            this.debugTurnHistoryStrings = this.debugTurnHistoryStrings;
            this._onTurnStartResponses = this._onTurnStartResponses;
            this._onTurnEndResponses = this._onTurnEndResponses;
            this._onGameOverResponses = this._onGameOverResponses;
            this.printLogsInput = this.printLogsInput;
            this.loggerConfig = this.loggerConfig;
            this.showDebugView = this.showDebugView;
            this._advancedOptions = this._advancedOptions;
            this.defaultTurnVariables = this.defaultTurnVariables;
            this.remoteServiceModule = this.remoteServiceModule;
            this.onLateUpdate = () => {
                this.turnDataSender.update();
            };
        }
        onAwake() {
            this.logger = new Logger_1.Logger(this.loggerConfig, TurnBased.name);
            this.componentContext = new ComponentContext_1.ComponentContext(this.getSceneObject(), this, this.logger);
            this.inputsValidator = new InputsValidator_1.InputsValidator(this.logger);
            this.validateInputs();
            this.launchParamsController = new LaunchParamsController_1.LaunchParamsController();
            this.tappablesHelper = new TappablesController_1.TappablesController(this.logger, this.tappableAreasInput);
            const dataHandler = this.createDataHandler();
            this.promptDataController = new PromptDataController_1.PromptDataController(dataHandler, this.logger);
            this.turnDataController = new TurnDataController_1.TurnDataController(this.useTurnLimit ? this.turnLimitInput : null, this.logger, this.useTurnHistory ? this.turnsSavedLimitInput : 0, this.requireTurnSubmission, !this.requireTurnSubmission || this.allowChangingTurnVariablesAfterTurnSubmission, this.defaultTurnVariables);
            this.turnDataSender = new TurnDataSender_1.TurnDataSender(this.logger, dataHandler, this.tappablesHelper, this.turnDataController);
            this.currentUserController = new CurrentUserController_1.CurrentUserController();
            this.otherUserController = new OtherUserController_1.OtherUserController(this.logger);
            this.sceneObjectsController = new SceneObjectsController_1.SceneObjectsController(this.user1FlowObjectsInputSO, this.user2FlowObjectsInputSO, this.requireTurnSubmission ? this.gameOverObjectsInputSO : []);
            this.lateUpdateEvent = this.createEvent("LateUpdateEvent");
            if (this.requireTurnSubmission) {
                const triggerErrorIfIncompleteDataWasSent = () => {
                    if (this.turnDataController.wasIncompleteDataSent()) {
                        this.triggerOnErrorEvent(ComponentErrorCodes.INCOMPLETE_TURN_DATA_SENT, "Incomplete turn data was sent");
                    }
                };
                this.createEvent("SnapImageCaptureEvent")
                    .bind(triggerErrorIfIncompleteDataWasSent);
                this.createEvent("SnapRecordStopEvent")
                    .bind(triggerErrorIfIncompleteDataWasSent);
            }
            this.setupEventsResponses();
            this.initialize();
        }
        // API
        setScore(score) {
            this.turnDataController.setScore(score);
        }
        getScore() {
            return this.turnDataController.getScore();
        }
        async getCurrentUserIndex() {
            return this.turnDataController.getCurrentUserIndex();
        }
        async getOtherUserIndex() {
            return exports.NUMBER_USERS - 1 - await this.getCurrentUserIndex();
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
            return this.turnDataController.getGlobalVariables();
        }
        async getGlobalVariable(key) {
            return this.turnDataController.getGlobalVariable(key);
        }
        async setGlobalVariable(key, value) {
            return this.turnDataController.setGlobalVariable(key, value);
        }
        async getCurrentUserVariables() {
            return (await this.getCurrentUserDataStorage()).getAllVariables();
        }
        async getCurrentUserVariable(key) {
            return (await this.getCurrentUserDataStorage()).getVariable(key);
        }
        async setCurrentUserVariable(key, value) {
            return (await this.getCurrentUserDataStorage()).setVariable(key, value);
        }
        async getOtherUserVariables() {
            return (await this.getOtherUserDataStorage()).getAllVariables();
        }
        async getOtherUserVariable(key) {
            return (await this.getOtherUserDataStorage()).getVariable(key);
        }
        async setOtherUserVariable(key, value) {
            return (await this.getOtherUserDataStorage()).setVariable(key, value);
        }
        addTappableArea(key, screenTransform) {
            if (this.inputsValidator.isTappableAreaValid(key, screenTransform)) {
                this.tappablesHelper.addTappableArea(key, screenTransform);
            }
        }
        removeTappableArea(key) {
            this.tappablesHelper.removeTappableArea(key);
        }
        clearTappableAreas() {
            this.tappablesHelper.clearTappableAreas();
        }
        getTappedKey() {
            if (global.deviceInfoSystem.isEditor()) {
                switch (this.debugMode) {
                    case "Single Turn":
                        return this.debugTappedKeySingleTurn;
                    case "Simulate Turns":
                        return this.debugTappedKeySimulateTurn;
                }
            }
            return this.launchParamsController.getTappedKey();
        }
        getTurnCount() {
            return this.turnDataController.getTurnCount();
        }
        /** @deprecated Use {@link getPreviousTurnVariable} instead*/
        getPromptVariable(key) {
            return this.promptDataController.getVariable(key);
        }
        /** @deprecated Use {@link getPreviousTurnVariables} instead*/
        getPromptVariables() {
            return this.promptDataController.getAllVariables();
        }
        getPreviousTurnVariable(key) {
            return this.promptDataController.getVariable(key);
        }
        getPreviousTurnVariables() {
            return this.promptDataController.getAllVariables();
        }
        /** @deprecated Use {@link getCurrentTurnVariable} instead*/
        getTurnVariable(key) {
            return this.turnDataController.getVariable(key);
        }
        /** @deprecated Use {@link setCurrentUserVariable} instead*/
        setTurnVariable(key, value) {
            if (this.inputsValidator.isTurnVariableKeyValid(key)) {
                this.turnDataController.setVariable(key, value);
            }
        }
        /** @deprecated Use {@link setCurrentTurnVariable} with undefined value */
        removeTurnVariable(key) {
            this.turnDataController.setVariable(key, undefined);
        }
        /** @deprecated Use {@link setCurrentTurnVariable} with undefined values */
        clearTurnVariables() {
            this.turnDataController.clearVariables();
        }
        getCurrentTurnVariable(key) {
            return this.turnDataController.getVariable(key);
        }
        setCurrentTurnVariable(key, value) {
            if (this.inputsValidator.isTurnVariableKeyValid(key)) {
                this.turnDataController.setVariable(key, value);
            }
        }
        getCurrentUserDisplayName() {
            return this.currentUserController.getDisplayName();
        }
        getOtherUserDisplayName() {
            return this.otherUserController.getDisplayName();
        }
        isFinalTurn() {
            return this.turnDataController.isFinalTurn();
        }
        getTurnHistory() {
            return this.turnDataController.getTurnHistory();
        }
        getTurn(turnCount) {
            return this.turnDataController.getTurn(turnCount);
        }
        getPreviousTurn() {
            return this.turnDataController.getPreviousTurn();
        }
        setIsFinalTurn(isFinalTurn) {
            this.turnDataController.setIsGameOver(isFinalTurn);
        }
        async endTurn() {
            if (this.requireTurnSubmission) {
                this.turnDataController.endTurn();
                const isFinalTurn = await this.turnDataController.isFinalTurn();
                if (isFinalTurn) {
                    this.sceneObjectsController.onGameOver();
                    this.onGameOver.trigger();
                }
                else {
                    this.onTurnEnd.trigger();
                }
            }
        }
        async getUser(userIndex) {
            if (isNull(userIndex) || isNaN(userIndex) || userIndex < 0 || userIndex >= exports.NUMBER_USERS) {
                return Promise.reject("User " + userIndex + " does not exist");
            }
            const turnCount = await this.turnDataController.getTurnCount();
            let isCurrentUser = turnCount % exports.NUMBER_USERS === userIndex;
            if (global.deviceInfoSystem.isEditor() && this.debugMode === "Simulate Turns" && this.swapPlayersAfterSimulatedTurn) {
                isCurrentUser = userIndex === 0;
            }
            if (isCurrentUser) {
                return this.currentUserController.getCurrentUser();
            }
            else {
                return this.otherUserController.getOtherUser();
            }
        }
        async getCurrentUser() {
            return this.getUser(await this.getCurrentUserIndex());
        }
        async getOtherUser() {
            return this.getUser(exports.NUMBER_USERS - 1 - (await this.getCurrentUserIndex()));
        }
        // Getters and setters
        get user1SceneObjects() {
            return this.sceneObjectsController.user1FlowObjects.slice();
        }
        set user1SceneObjects(so) {
            this.sceneObjectsController.user1FlowObjects =
                this.inputsValidator.validateFlowSceneObjects("User 1 Flow Objects", so);
        }
        get user2SceneObjects() {
            return this.sceneObjectsController.user2FlowObjects.slice();
        }
        set user2SceneObjects(so) {
            this.sceneObjectsController.user2FlowObjects =
                this.inputsValidator.validateFlowSceneObjects("User 2 Flow Objects", so);
        }
        get gameOverSceneObjects() {
            return this.sceneObjectsController.gameOverObjects.slice();
        }
        set gameOverSceneObjects(so) {
            this.sceneObjectsController.gameOverObjects =
                this.inputsValidator.validateFlowSceneObjects("Game Over Flow Objects", so);
        }
        get turnLimit() {
            return this.turnDataController.getTurnLimit();
        }
        set turnLimit(value) {
            this.turnDataController.setTurnLimit(this.inputsValidator.validateTurnLimit(true, value));
        }
        get tappableAreas() {
            return this.tappablesHelper.getTappableAreasInput()
                .slice();
        }
        set tappableAreas(tappableAreaInput) {
            this.tappablesHelper.setTappableAreasInput(this.inputsValidator.validateTappableAreas(tappableAreaInput));
        }
        get printLogs() {
            return this.logger.printInfoLogs;
        }
        set printLogs(value) {
            this.logger.printInfoLogs = value;
        }
        set turnsSavedLimit(turnsSavedLimit) {
            this.turnDataController.setTurnsSavedLimit(this.inputsValidator.validateTurnsSavedLimit(true, turnsSavedLimit));
        }
        get turnsSavedLimit() {
            return this.turnDataController.getTurnsSavedLimit();
        }
        initialize() {
            this.allowSubscribingToStartEventAndChangingInputs(() => {
                this.getCurrentUserIndex()
                    .then((currentUserIndex) => this.logger.logInfo("Current user index : " + currentUserIndex));
                this.logger.logInfo("Tapped key : " + this.getTappedKey());
                this.lateUpdateEvent.bind(this.onLateUpdate);
                this.checkIsPromptDataComplete();
                this.initializeTurnData();
                this.initializeOtherUserController();
                this.initializeSceneObjects();
                this.startTurn();
                if (this.showDebugView) {
                    this.setupDebugViewUpdates();
                }
            });
        }
        async checkIsPromptDataComplete() {
            if (this.requireTurnSubmission) {
                const promptData = await this.promptDataController.getPromptData();
                const promptTurnExists = promptData.associatedData.turnCount >= 0;
                const isTurnComplete = promptData.associatedData.isTurnComplete;
                if (promptTurnExists && !isTurnComplete) {
                    this.triggerOnErrorEvent(ComponentErrorCodes.INCOMPLETE_TURN_DATA_RECEIVED, "Previous turn was not complete");
                }
            }
        }
        async initializeTurnData() {
            const promptData = await this.promptDataController.getPromptData();
            this.turnDataController.initialize(promptData.associatedData);
        }
        async initializeOtherUserController() {
            const uriResource = await this.promptDataController.getOtherUserDynamicResource();
            this.otherUserController.setOtherUser(uriResource);
        }
        async initializeSceneObjects() {
            this.getCurrentUserIndex()
                .then((index) => this.sceneObjectsController.initialize(index));
        }
        allowSubscribingToStartEventAndChangingInputs(onReady) {
            this.createEvent("LateUpdateEvent")
                .bind((event) => {
                event.enabled = false;
                onReady();
            });
        }
        async startTurn() {
            const [promptDataVariables, turnCount, currentUserIndex] = await Promise.all([
                this.promptDataController.getAllVariables(),
                this.turnDataController.getTurnCount(),
                this.turnDataController.getCurrentUserIndex(),
            ]);
            this.logger.logInfo("Turn started");
            this.onTurnStart.trigger({
                turnCount,
                currentUserIndex,
                promptDataVariables,
                tappedKey: this.getTappedKey(),
            });
        }
        createDataHandler() {
            if (global.deviceInfoSystem.isEditor()) {
                switch (this.debugMode) {
                    case "None":
                        return new DebugTypeNoneDataHandler_1.DebugTypeNoneDataHandler();
                    case "Simulate Turns":
                        return new DebugSimulateTurnsDataHandler_1.DebugSimulateTurnsDataHandler(this, new ApiController_1.ApiController(this.remoteServiceModule, this.logger));
                    case "Single Turn":
                        const userDefinedGameVariables = DebugSingleTurnDataHandler_1.DebugSingleTurnDataHandler.getUserDefinedGameVariablesMap(this.logger, this.testDataType, this.debugAssociatedDataStudioInputs, this.debugAssociatedDataString);
                        const turnHistory = DebugSingleTurnDataHandler_1.DebugSingleTurnDataHandler.getTurnHistory(this.debugTurnCount, this.useTurnHistory, this.turnsSavedLimitInput, this.logger, this.testDataType, this.debugTurnHistoryStudioInputs.reverse(), this.debugTurnHistoryStrings.reverse());
                        return new DebugSingleTurnDataHandler_1.DebugSingleTurnDataHandler(this.logger, this.debugTurnCount, this.debugIsTurnComplete, userDefinedGameVariables, turnHistory);
                }
            }
            return new ApiController_1.ApiController(this.remoteServiceModule, this.logger);
        }
        validateInputs() {
            if (!this.remoteServiceModule) {
                this.logger.logError("Remote Service Module is missing. " + TurnBased.name + " is not available.");
            }
            this.turnLimitInput = this.inputsValidator.validateTurnLimit(this.useTurnLimit, this.turnLimitInput);
            this.tappableAreasInput = this.inputsValidator.validateTappableAreas(this.tappableAreasInput);
            this.user1FlowObjectsInputSO = this.inputsValidator.validateFlowSceneObjects("User 1 Flow Objects", this.user1FlowObjectsInputSO);
            this.user2FlowObjectsInputSO = this.inputsValidator.validateFlowSceneObjects("User 2 Flow Objects", this.user2FlowObjectsInputSO);
            this.gameOverObjectsInputSO = this.inputsValidator.validateFlowSceneObjects("Game Over Flow Objects", this.gameOverObjectsInputSO);
            this.debugAssociatedDataStudioInputs = this.inputsValidator.validateUserDefinedGameVariableInputs("Debug Associated Data", this.debugAssociatedDataStudioInputs);
            this.debugAssociatedDataString = this.inputsValidator.validateDebugAssociatedDataString(this.debugAssociatedDataString);
            this.debugTurnHistoryStudioInputs = this.inputsValidator.validateDebugTurnHistoryStudioInputs(this.debugTurnHistoryStudioInputs);
            this.debugTurnHistoryStrings = this.inputsValidator.validateDebugTurnHistoryStrings(this.debugTurnHistoryStrings);
            this.debugTurnCount = this.inputsValidator.validateDebugTurnCount(this.debugTurnCount);
            this.defaultTurnVariables = this.inputsValidator.validateUserDefinedGameVariableInputs("Default Turn Variables", this.defaultTurnVariables);
            this.turnsSavedLimitInput = this.inputsValidator.validateTurnsSavedLimit(this.useTurnHistory, this.turnsSavedLimitInput);
        }
        triggerOnErrorEvent(code, description) {
            this.onError.trigger({ code, description });
            this.logger.logError("Error : " + code + " " + description);
        }
        async getUserDataStorage(userIndex) {
            return this.turnDataController.getUserDataStorage(userIndex);
        }
        async getCurrentUserDataStorage() {
            return this.getUserDataStorage(await this.getCurrentUserIndex());
        }
        async getOtherUserDataStorage() {
            return this.getUserDataStorage(exports.NUMBER_USERS - 1 - await this.getCurrentUserIndex());
        }
        setupDebugViewUpdates() {
            let isUpdateQueued = false;
            this.createEvent("UpdateEvent").bind(() => {
                if (!isUpdateQueued) {
                    isUpdateQueued = true;
                    this.updateDebugView().then(() => {
                        isUpdateQueued = false;
                    });
                }
            });
        }
        async updateDebugView() {
            const [globalVariables, currentUserVariables, otherUserVariables, promptDataVariables, turnCount, currentUserIndex] = await Promise.all([
                this.getGlobalVariables(),
                this.getCurrentUserVariables(),
                this.getOtherUserVariables(),
                this.promptDataController.getAllVariables(),
                this.turnDataController.getTurnCount(),
                this.turnDataController.getCurrentUserIndex(),
            ]);
            const turnDataVariables = this.turnDataController.getAssociatedData().userDefinedGameVariables;
            let message = `Turn Count: ${turnCount}\nCurrent User Index: ${currentUserIndex}\nTapped Key: ${this.getTappedKey()}\n`;
            const addJsonMessage = (title, data) => {
                const dataString = JSON.stringify(data, null, 2);
                message += `\n${title}:\n${dataString}\n`;
            };
            addJsonMessage("Global Variables", globalVariables);
            addJsonMessage("Current User Variables", currentUserVariables);
            addJsonMessage("Other User Variables", otherUserVariables);
            addJsonMessage("Prompt Data Variables", promptDataVariables);
            addJsonMessage("Turn Data Variables", turnDataVariables);
            DebugView_1.DebugView.getInstance().setTrackedData(message);
        }
        setupEventsResponses() {
            const createResponses = (configs) => configs
                .map(config => DiscreteResponse_1.DiscreteResponse.createFromConfig(config, this.componentContext))
                .filter(response => !!response);
            const onTurnStartResponses = createResponses(this._onTurnStartResponses);
            const onTurnEndResponses = createResponses(this._onTurnEndResponses);
            const onGameOverResponses = createResponses(this._onGameOverResponses);
            const responsesTriggerFunctor = (responses) => (data) => {
                for (const response of responses) {
                    response.trigger(data);
                }
            };
            this.onTurnStart.add(responsesTriggerFunctor(onTurnStartResponses));
            this.onTurnEnd.add(responsesTriggerFunctor(onTurnEndResponses));
            this.onGameOver.add(responsesTriggerFunctor(onGameOverResponses));
        }
    };
    __setFunctionName(_classThis, "TurnBased");
    (() => {
        const _metadata = typeof Symbol === "function" && Symbol.metadata ? Object.create(_classSuper[Symbol.metadata] ?? null) : void 0;
        __esDecorate(null, _classDescriptor = { value: _classThis }, _classDecorators, { kind: "class", name: _classThis.name, metadata: _metadata }, null, _classExtraInitializers);
        TurnBased = _classThis = _classDescriptor.value;
        if (_metadata) Object.defineProperty(_classThis, Symbol.metadata, { enumerable: true, configurable: true, writable: true, value: _metadata });
        __runInitializers(_classThis, _classExtraInitializers);
    })();
    return TurnBased = _classThis;
})();
exports.TurnBased = TurnBased;
//# sourceMappingURL=Turn%20Based.js.map