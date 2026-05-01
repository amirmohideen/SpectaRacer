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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">SnapToLineTS – snap an object to the closest point on a line</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Projects the distance object onto the line and snaps the target when within snapDistance.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject lineStart {"hint":"The start point of the line"}
// @input SceneObject lineEnd {"hint":"The end point of the line"}
// @input SceneObject snappingObject {"hint":"The object that will snap to the line (defaults to this SceneObject)"}
// @input SceneObject distanceObject {"hint":"The object used to measure distance to the line for snap detection"}
// @input float snapDistance = 1 {"hint":"How close the object needs to be to snap to the line"}
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
var Module = require("../../../../../Modules/Src/Assets/Examples/Snap/SnapToLineTS");
Object.setPrototypeOf(script, Module.SnapToLineTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("lineStart", []);
    checkUndefined("lineEnd", []);
    checkUndefined("snapDistance", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
