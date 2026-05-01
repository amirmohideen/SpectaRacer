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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">ScaleBasedOnDistance – scale an object based on distance</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Applies a uniform scale to the target object based on the distance between two reference objects.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject startObject {"hint":"The first reference object used to measure distance"}
// @input SceneObject endObject {"hint":"The second reference object used to measure distance"}
// @input float minScale = 0.5 {"hint":"Minimum scale to apply when at minimum distance"}
// @input float maxScale = 2 {"hint":"Maximum scale to apply when at maximum distance"}
// @input SceneObject objectToScale {"hint":"The scene object whose scale will be adjusted"}
// @input bool closestIsBigger = true {"hint":"If true, closer objects are scaled larger; if false, closer objects are smaller"}
// @input float minDistance {"hint":"Minimum distance that maps to the min/max scale bound"}
// @input float maxDistance = 100 {"hint":"Maximum distance that maps to the max/min scale bound"}
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
var Module = require("../../../../../../Modules/Src/Assets/Examples/MiniDemos/DirectionShadows/ScaleBasedOnDistance");
Object.setPrototypeOf(script, Module.ScaleBasedOnDistance.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("startObject", []);
    checkUndefined("endObject", []);
    checkUndefined("minScale", []);
    checkUndefined("maxScale", []);
    checkUndefined("objectToScale", []);
    checkUndefined("closestIsBigger", []);
    checkUndefined("minDistance", []);
    checkUndefined("maxDistance", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
