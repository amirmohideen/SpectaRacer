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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">SoftPressController – soft press interaction with threshold event</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Detects when a finger presses through a cube collider past a threshold and triggers navigation.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject colliderObject {"hint":"The collider that will detect the soft press interaction"}
// @input SceneObject interactorObject {"hint":"The interactor object (e.g., finger tip)"}
// @input SceneObject closestPointMarker {"hint":"Optional: A SceneObject to visually mark the closest point on the line (for debugging)"}
// @input SceneObject topVertex0 {"hint":"Top vertex 0 of the collider cube"}
// @input SceneObject topVertex1 {"hint":"Top vertex 1 of the collider cube"}
// @input SceneObject topVertex2 {"hint":"Top vertex 2 of the collider cube"}
// @input SceneObject topVertex3 {"hint":"Top vertex 3 of the collider cube"}
// @input SceneObject bottomVertex0 {"hint":"Bottom vertex 0 of the collider cube"}
// @input SceneObject bottomVertex1 {"hint":"Bottom vertex 1 of the collider cube"}
// @input SceneObject bottomVertex2 {"hint":"Bottom vertex 2 of the collider cube"}
// @input SceneObject bottomVertex3 {"hint":"Bottom vertex 3 of the collider cube"}
// @input float pressThreshold = 0.7 {"hint":"The threshold for triggering the press event (0 to 1)"}
// @input float resetDuration = 1 {"hint":"Time (in seconds) for the press value to smoothly reset to 0 after exit"}
// @input bool next {"hint":"If true, triggers the next action; if false, triggers the previous action"}
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
var Module = require("../../../../../Modules/Src/Assets/Examples/Physics-Collision/SoftPressControllerTS");
Object.setPrototypeOf(script, Module.SoftPressController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("colliderObject", []);
    checkUndefined("interactorObject", []);
    checkUndefined("topVertex0", []);
    checkUndefined("topVertex1", []);
    checkUndefined("topVertex2", []);
    checkUndefined("topVertex3", []);
    checkUndefined("bottomVertex0", []);
    checkUndefined("bottomVertex1", []);
    checkUndefined("bottomVertex2", []);
    checkUndefined("bottomVertex3", []);
    checkUndefined("pressThreshold", []);
    checkUndefined("resetDuration", []);
    checkUndefined("next", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
