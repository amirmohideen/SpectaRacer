if (script.onAwake) {
    script.onAwake();
    return;
}
/*
@typedef TappableAreaInput
@property {string} key
@property {Component.ScreenTransform} screenTransform
*/
/*
@typedef UserDefinedGameVariableInput
@property {string} key
@property {string} type = "string" {"widget":"combobox", "values":[{"label":"string", "value":"string"}, {"label":"float", "value":"float"}, {"label":"boolean", "value":"boolean"}]}
@property {string} valueString {"label":"Value", "showIf":"type", "showIfValue":"string"}
@property {float} valueFloat {"label":"Value", "showIf":"type", "showIfValue":"float"}
@property {bool} valueBoolean {"label":"Value", "showIf":"type", "showIfValue":"boolean"}
*/
/*
@typedef DebugTurnHistoryStudioInputs
@property {UserDefinedGameVariableInput[]} variables
@property {bool} isTurnComplete
*/
/*
@typedef DebugTurnHistoryJsonStrings
@property {string} variables = "{\"key1\": \"value1\", \"key2\":0}" {"widget":"text_area"}
@property {bool} isTurnComplete
*/
/*
@typedef ComponentApiResponseConfig
@ui {"widget":"label", "label":"This response calls a specified method on a script component."}
@property {Component.ScriptComponent} component
@property {string} methodName {"label":"Method Name"}
*/
/*
@typedef BehaviorResponseConfig
@ui {"widget":"label", "label":"For more information, see <a href='https://developers.snap.com/lens-studio/lens-studio-workflow/adding-interactivity/behavior'>Behavior&nbsp;Documentation.</a>"}
@property {int} behaviorResponseType {"label":"Behavior trigger type", "widget":"combobox", "values":[{"label":"Global CustomTrigger", "value":0}, {"label":"Manual Trigger", "value":1}]}
@property {string} customTriggerName {"showIf":"behaviorResponseType", "showIfValue":0}
@property {Component.ScriptComponent} behaviorScript {"showIf":"behaviorResponseType", "showIfValue":1}
*/
/*
@typedef DiscreteResponseConfig
@property {int} responseType {"widget":"combobox", "values":[{"label":"Component API Call", "value":0}, {"label":"Behavior", "value":1}]}
@property {ComponentApiResponseConfig} componentApiResponseConfig {"showIf":"responseType", "showIfValue":0}
@property {BehaviorResponseConfig} behaviorResponseConfig {"label":"Behavior Custom Component integration.", "showIf":"responseType", "showIfValue":1}
*/
/*
@typedef LoggerConfig
@property {bool} printOnScreen = true
@property {float} fontSize = 12 {"showIf":"printOnScreen"}
@property {bool} printErrors = true
@property {bool} printWarnings = true
@property {bool} printInfoLogs
*/
function checkUndefined(property, showIfData) {
    for (var i = 0; i < showIfData.length; i++) {
        if (showIfData[i][0] && script[showIfData[i][0]] != showIfData[i][1]) {
            return;
        }
    }
    if (script[property] == undefined) {
        throw new Error("Input " + property + " was not provided for the object " + script.getSceneObject().name);
    }
}
// @ui {"widget":"label", "label":"<a href='https://developers.snap.com/lens-studio/features/games/turn-based'>Turn Based Documentation"}
// @input bool requireTurnSubmission {"hint":"If true component will emit onError events in case of submitting or loading incomplete turn data. Call endTurn() to mark turn data as complete"}
// @input bool allowChangingTurnVariablesAfterTurnSubmission {"hint":"If true turn variables can be changed after turn submission.", "showIf":"requireTurnSubmission", "showIfValue":true}
// @input bool useTurnLimit {"label":"Use Turn Limit"}
// @input int turnLimitInput = 2 {"label":"Turn Limit", "hint":"Max count of turns", "widget":"spinbox", "min":2, "showIf":"useTurnLimit"}
// @ui {"widget":"separator"}
// @input bool useTurnHistory {"label":"Save Turn History"}
// @input int turnsSavedLimitInput {"label":"Turns Saved Limit", "hint":"Max count of turns saved in turn history. Excess older turns are removed from turn history.", "widget":"spinbox", "min":0, "showIf":"useTurnHistory"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Tappable Areas"}
// @input TappableAreaInput[] tappableAreasInput {"label":"Tappable Areas", "hint":"Only tappable areas with enabled ScreenTransforms and their SceneObjects will be used"}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_start", "label":"Scene"}
// @input SceneObject[] user1FlowObjectsInputSO {"label":"User1 Scene Objects", "hint":"SceneObjects which will be enabled for User 1"}
// @input SceneObject[] user2FlowObjectsInputSO {"label":"User2 Scene Objects", "hint":"SceneObjects which will be enabled for User 2"}
// @input SceneObject[] gameOverObjectsInputSO {"label":"Game Over Scene Objects", "hint":"SceneObjects which will be enabled when game ends", "showIf":"requireTurnSubmission"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Debug"}
// @input string debugMode = "None" {"widget":"combobox", "values":[{"label":"None", "value":"None"}, {"label":"Single Turn", "value":"Single Turn"}, {"label":"Simulate Turns", "value":"Simulate Turns"}]}
// @input bool swapPlayersAfterSimulatedTurn = true {"showIf":"debugMode", "showIfValue":"Simulate Turns"}
// @input string debugTappedKeySimulateTurn {"label":"Tapped Key", "hint":"Key of tappable area", "showIf":"debugMode", "showIfValue":"Simulate Turns"}
// @ui {"widget":"label", "label":"<font color='#7acccc'><i>To reset turns, open “Additional&nbsp;Options” in the preview and select “<b>Clear&nbsp;Turn&nbsp;Based&nbsp;State</b>”."}
// @ui {"widget":"group_start", "label":"Single Turn", "showIf":"debugMode", "showIfValue":"Single Turn"}
// @input int debugTurnCount {"label":"Turn Count", "hint":"Turn count for debug. Even numbers for User 1, starting from 0. Odd numbers for User 2, starting from 1.", "widget":"spinbox", "min":0}
// @input string debugTappedKeySingleTurn {"label":"Tapped Key", "hint":"Key of tappable area"}
// @input string testDataType = "Studio Inputs" {"widget":"combobox", "values":[{"label":"JSON String", "value":"JSON String"}, {"label":"Studio Inputs", "value":"Studio Inputs"}]}
// @input bool debugIsTurnComplete {"label":"Test Is Turn Complete"}
// @input UserDefinedGameVariableInput[] debugAssociatedDataStudioInputs = {} {"label":"Test Data", "showIf":"testDataType", "showIfValue":"Studio Inputs"}
// @input DebugTurnHistoryStudioInputs[] debugTurnHistoryStudioInputs = {} {"label":"Test Turn History", "showIf":"testDataType", "showIfValue":"Studio Inputs"}
// @input string debugAssociatedDataString = "{\"key1\": \"value1\", \"key2\":0}" {"label":"Test Data", "widget":"text_area", "showIf":"testDataType", "showIfValue":"JSON String"}
// @input DebugTurnHistoryJsonStrings[] debugTurnHistoryStrings = {} {"label":"Test Turn History", "showIf":"testDataType", "showIfValue":"JSON String"}
// @ui {"widget":"group_end"}
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @ui {"widget":"group_start", "label":"Events"}
// @input DiscreteResponseConfig[] _onTurnStartResponses
// @input DiscreteResponseConfig[] _onTurnEndResponses
// @input DiscreteResponseConfig[] _onGameOverResponses
// @ui {"widget":"group_end"}
// @ui {"widget":"separator"}
// @input bool printLogsInput {"label":"Print Logs"}
// @input LoggerConfig loggerConfig {"label":"Logger Settings", "showIf":"printLogsInput", "showIfValue":true}
// @input bool showDebugView {"label":"Show Debug View", "hint":"Show debug information overlay"}
// @input bool _advancedOptions
// @ui {"widget":"group_start", "label":"Advanced Options", "showIf":"_advancedOptions", "showIfValue":true}
// @ui {"widget":"label", "label":"<font color='#7acccc'><i>Turn Variables are temporary and not persisted across turns.<br>Use Global or Player Variables to store data that should persist for the entire session."}
// @input UserDefinedGameVariableInput[] defaultTurnVariables = {} {"label":"Turn Variables", "hint":"Default values for turn variables"}
// @ui {"widget":"group_end"}
// @input Asset.RemoteServiceModule remoteServiceModule
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../Modules/Src/Packages/Turn Based.lsc/Turn Based/Turn Based");
Object.setPrototypeOf(script, Module.TurnBased.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("requireTurnSubmission", []);
    checkUndefined("allowChangingTurnVariablesAfterTurnSubmission", [["requireTurnSubmission",true]]);
    checkUndefined("useTurnLimit", []);
    checkUndefined("turnLimitInput", [["useTurnLimit",true]]);
    checkUndefined("useTurnHistory", []);
    checkUndefined("turnsSavedLimitInput", [["useTurnHistory",true]]);
    checkUndefined("tappableAreasInput", []);
    checkUndefined("user1FlowObjectsInputSO", []);
    checkUndefined("user2FlowObjectsInputSO", []);
    checkUndefined("gameOverObjectsInputSO", [["requireTurnSubmission",true]]);
    checkUndefined("debugMode", []);
    checkUndefined("swapPlayersAfterSimulatedTurn", [["debugMode","Simulate Turns"]]);
    checkUndefined("debugTappedKeySimulateTurn", [["debugMode","Simulate Turns"]]);
    checkUndefined("debugTurnCount", [["debugMode","Single Turn"]]);
    checkUndefined("debugTappedKeySingleTurn", [["debugMode","Single Turn"]]);
    checkUndefined("testDataType", [["debugMode","Single Turn"]]);
    checkUndefined("debugIsTurnComplete", [["debugMode","Single Turn"]]);
    checkUndefined("debugAssociatedDataStudioInputs", [["debugMode","Single Turn"],["testDataType","Studio Inputs"]]);
    checkUndefined("debugTurnHistoryStudioInputs", [["debugMode","Single Turn"],["testDataType","Studio Inputs"]]);
    checkUndefined("debugAssociatedDataString", [["debugMode","Single Turn"],["testDataType","JSON String"]]);
    checkUndefined("debugTurnHistoryStrings", [["debugMode","Single Turn"],["testDataType","JSON String"]]);
    checkUndefined("_onTurnStartResponses", []);
    checkUndefined("_onTurnEndResponses", []);
    checkUndefined("_onGameOverResponses", []);
    checkUndefined("printLogsInput", []);
    checkUndefined("loggerConfig", [["printLogsInput",true]]);
    checkUndefined("showDebugView", []);
    checkUndefined("_advancedOptions", []);
    checkUndefined("defaultTurnVariables", [["_advancedOptions",true]]);
    checkUndefined("remoteServiceModule", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
