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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">ℹ️ Programmatic UI Component</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Create a UI Manager script to customize buttons at runtime using:<br/>• <code>updateButtonText(index, title, subtitle)</code><br/>• <code>updateButtonImage(index, texture, material)</code><br/>• <code>setButtonCallback(index, callback)</code></span>"}
// @ui {"widget":"separator"}
// @input float rows = 2 {"hint":"Number of rows in the grid (2-4)", "widget":"slider", "min":2, "max":4, "step":1}
// @input float columns = 4 {"hint":"Number of columns in the grid (2-8)", "widget":"slider", "min":2, "max":8, "step":1}
// @input float buttonWidth = 10 {"hint":"Button width in cm (6-15)", "widget":"slider", "min":6, "max":15, "step":0.5}
// @input float buttonHeight = 10 {"hint":"Button height in cm (8-15)", "widget":"slider", "min":8, "max":15, "step":0.5}
// @input Asset.Texture buttonImageTexture {"hint":"Placeholder image texture for buttons (optional)"}
// @input Asset.Material buttonImageMaterial {"hint":"Placeholder image material for buttons (optional)"}
// @input bool draggable {"hint":"Enable drag-and-drop rearrangement of buttons"}
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
var Module = require("../../../../../Modules/Src/Packages/FastUI.lspkg/Scripts/FastGrid");
Object.setPrototypeOf(script, Module.FastGrid.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("rows", []);
    checkUndefined("columns", []);
    checkUndefined("buttonWidth", []);
    checkUndefined("buttonHeight", []);
    checkUndefined("draggable", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
