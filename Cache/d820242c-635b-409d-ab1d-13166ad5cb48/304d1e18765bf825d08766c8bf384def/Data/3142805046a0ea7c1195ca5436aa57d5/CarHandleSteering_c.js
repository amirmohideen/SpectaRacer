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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">CarHandleSteering – steer car Y rotation from handle X position</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Reads the handle's local X position and adds it as a Y-axis offset to the car's base rotation. Clamped to maxSteerAngle.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject handle {"hint":"The handle SceneObject whose local X position drives steering (e.g. '[Handle] Drag to turn')"}
// @input float maxSteerAngle = 30 {"hint":"Maximum Y-angle offset in degrees in either direction (e.g. 30 clamps to ±30°)"}
// @input float followSpeed = 8 {"hint":"How fast the car rotation lerps toward the target angle (higher = snappier)"}
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
var Module = require("../../../../../Modules/Src/Assets/Examples/Solvers/CarHandleSteering");
Object.setPrototypeOf(script, Module.CarHandleSteering.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("handle", []);
    checkUndefined("maxSteerAngle", []);
    checkUndefined("followSpeed", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
