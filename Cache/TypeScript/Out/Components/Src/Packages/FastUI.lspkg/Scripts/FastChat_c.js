if (script.onAwake) {
    script.onAwake();
    return;
}
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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">FastChat – placeholder chat component</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">No prefabs. Build your own logic and use the public API: addUserMessage(string), addBotMessage(string), getCardCount(), getCard(index) → SceneObject, getCardMessage(index) → string. Only the options below are shown.</span>"}
// @ui {"widget":"separator"}
// @input string textColor = "white" {"hint":"Text color for all cards", "widget":"combobox", "values":[{"label":"White", "value":"white"}, {"label":"Black", "value":"black"}, {"label":"Gray", "value":"gray"}]}
// @input string colorStyle = "blue_gray" {"hint":"Style 1: one color for user, gray for bot", "widget":"combobox", "values":[{"label":"Blue / Gray", "value":"blue_gray"}, {"label":"Green / Gray", "value":"green_gray"}]}
// @input string layoutStyle = "aligned" {"hint":"Layout: Aligned (centered) or Shifted (user right, bot left)", "widget":"combobox", "values":[{"label":"Aligned", "value":"aligned"}, {"label":"Shifted", "value":"shifted"}]}
// @input bool testMode = true {"hint":"Fill chat with mock-up data (multiple sample cards)"}
// @input bool mask = true {"hint":"Clip chat content to a window (MaskingComponent only, no scroll interaction)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control logging output for this script instance</span>"}
// @input bool enableLogging {"hint":"Enable general logging (animation cycles, events, etc.)"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy, etc.)"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../Modules/Src/Packages/FastUI.lspkg/Scripts/FastChat");
Object.setPrototypeOf(script, Module.FastChat.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("textColor", []);
    checkUndefined("colorStyle", []);
    checkUndefined("layoutStyle", []);
    checkUndefined("testMode", []);
    checkUndefined("mask", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
