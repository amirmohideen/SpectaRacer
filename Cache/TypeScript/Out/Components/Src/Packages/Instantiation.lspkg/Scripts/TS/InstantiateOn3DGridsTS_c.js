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
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Grid Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Specify the prefab and center point for the 3D grid layout</span>"}
// @input Asset.ObjectPrefab prefab {"hint":"The prefab to instantiate"}
// @input SceneObject gridCenter {"hint":"The center of the grid"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Grid Dimensions</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Define the grid size along X, Y, and Z axes</span>"}
// @input float gridWidth = 5 {"hint":"Number of elements along the X axis"}
// @input float gridHeight = 5 {"hint":"Number of elements along the Y axis"}
// @input float gridDepth = 5 {"hint":"Number of elements along the Z axis"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Spacing Settings</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Configure spacing between elements in all three dimensions</span>"}
// @input float spacingX = 1.5 {"hint":"Spacing between elements in the X direction"}
// @input float spacingY = 1.5 {"hint":"Spacing between elements in the Y direction"}
// @input float spacingZ = 1.5 {"hint":"Spacing between elements in the Z direction"}
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
var Module = require("../../../../../../Modules/Src/Packages/Instantiation.lspkg/Scripts/TS/InstantiateOn3DGridsTS");
Object.setPrototypeOf(script, Module.InstantiateOn3DGridsTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("prefab", []);
    checkUndefined("gridCenter", []);
    checkUndefined("gridWidth", []);
    checkUndefined("gridHeight", []);
    checkUndefined("gridDepth", []);
    checkUndefined("spacingX", []);
    checkUndefined("spacingY", []);
    checkUndefined("spacingZ", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
