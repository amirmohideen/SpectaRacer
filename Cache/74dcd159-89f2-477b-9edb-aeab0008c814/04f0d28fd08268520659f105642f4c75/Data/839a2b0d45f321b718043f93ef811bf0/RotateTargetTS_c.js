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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">RotateTargetTS – randomly rotate a target at regular intervals</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Applies a random Y-axis rotation to the attached SceneObject on a configurable timer.</span>"}
// @ui {"widget":"separator"}
// @input float rotationInterval = 2 {"hint":"The time between rotations in seconds"}
// @input float minRotationAngle = -20 {"hint":"The minimum rotation angle in degrees"}
// @input float maxRotationAngle = 20 {"hint":"The maximum rotation angle in degrees"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging</span>"}
// @input bool enableLogging {"hint":"Enable general logging"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy)"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/Archery/TS/RotateTargetTS");
Object.setPrototypeOf(script, Module.RotateTargetTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("rotationInterval", []);
    checkUndefined("minRotationAngle", []);
    checkUndefined("maxRotationAngle", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
