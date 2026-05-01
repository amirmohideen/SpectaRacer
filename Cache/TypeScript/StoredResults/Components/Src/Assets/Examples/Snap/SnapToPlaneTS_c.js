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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">SnapToPlaneTS – snap an object to the closest point on a plane</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Projects the distance object onto a plane and snaps the target when within snapDistance.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject planeTransform {"hint":"The reference for the plane's position and normal"}
// @input SceneObject snappingObject {"hint":"The object that will snap to the plane (defaults to this SceneObject)"}
// @input SceneObject distanceObject {"hint":"The object used to measure distance to the plane for snap detection"}
// @input float snapDistance = 1 {"hint":"How close the object needs to be to snap to the plane"}
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
var Module = require("../../../../../Modules/Src/Assets/Examples/Snap/SnapToPlaneTS");
Object.setPrototypeOf(script, Module.SnapToPlaneTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("planeTransform", []);
    checkUndefined("snapDistance", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
