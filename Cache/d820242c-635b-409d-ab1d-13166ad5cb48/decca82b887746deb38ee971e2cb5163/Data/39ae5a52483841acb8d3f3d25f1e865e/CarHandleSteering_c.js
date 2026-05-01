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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">CarHandleSteering – steer car Y from handle X movement</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Car angle tracks handle X while moving. Holds angle during brief pauses. Returns to base after stationary timeout.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject handle {"hint":"The handle SceneObject whose local X position drives steering"}
// @input float maxSteerAngle = 30 {"hint":"Maximum Y-angle offset in degrees in either direction"}
// @input float followSpeed = 8 {"hint":"How fast the car rotation lerps toward the target angle (higher = snappier)"}
// @input float stationaryTimeout = 1 {"hint":"Seconds the handle must be held still before the car resets to its base rotation"}
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
    checkUndefined("stationaryTimeout", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
