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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">RaycastColorChangerTS – change material color on raycast touch</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Fires a ray on touch and randomizes the material color of the first paintable object hit.</span>"}
// @ui {"widget":"separator"}
// @input Component.Component playerCamera {"hint":"Camera from which the ray will be shot"}
// @input float raycastDistance = 100 {"hint":"Max distance for the raycast"}
// @input string paintablePattern = "Paintable" {"hint":"Name pattern to identify paintable objects"}
// @input bool continuousPainting {"hint":"Whether colors should change continuously or only once per touch"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/RaycastPainter/TS/RaycastColorChangerTS");
Object.setPrototypeOf(script, Module.RaycastColorChangerTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("playerCamera", []);
    checkUndefined("raycastDistance", []);
    checkUndefined("paintablePattern", []);
    checkUndefined("continuousPainting", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
