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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">FastRoundedRectangle – resizable button from text</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">No prefabs. Size is derived from content. Use in scene or via FastRoundedRectangle.createRoundedRectangle() from FastChat.</span>"}
// @ui {"widget":"separator"}
// @input string content = "Card content" {"hint":"Text content (height grows with content, truncated at max lines)"}
// @input string style = "bot" {"hint":"Visual style: Gray (bot), Blue (user), or Green (no border)", "widget":"combobox", "values":[{"label":"Gray", "value":"bot"}, {"label":"Blue", "value":"user"}, {"label":"Green", "value":"green"}]}
// @input string textColor = "white" {"hint":"Text color (content)", "widget":"combobox", "values":[{"label":"White", "value":"white"}, {"label":"Black", "value":"black"}, {"label":"Gray", "value":"gray"}]}
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
var Module = require("../../../../../Modules/Src/Packages/FastUI.lspkg/Scripts/FastRoundedRectangle");
Object.setPrototypeOf(script, Module.FastRoundedRectangle.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("content", []);
    checkUndefined("style", []);
    checkUndefined("textColor", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
