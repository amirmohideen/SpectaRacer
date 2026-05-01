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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Tracking Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Configure marker tracking component and objects to resize based on marker aspect ratio</span>"}
// @input Component.MarkerTrackingComponent markerTrackingComponent
// @input SceneObject[] resizeObjectArray
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Custom Callbacks</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Enable custom function callbacks for marker found/lost events</span>"}
// @input bool editEventCallbacks {"hint":"Enable this to add functions from another script to this component's callback events"}
// @ui {"widget":"group_start", "label":"On State Changed Callbacks", "showIf":"editEventCallbacks"}
// @input Component.ScriptComponent customFunctionScript {"hint":"The script containing functions to be called on marker found"}
// @input string[] onMarkerFoundFunctionNames = {} {"hint":"The names for the functions on the provided script, to be called on marker found"}
// @input string[] onMarkerLostFunctionNames = {} {"hint":"The names for the functions on the provided script, to be called on marker found"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control logging output for this script instance</span>"}
// @input bool enableLogging {"hint":"Enable general logging (animation cycles, events, etc.)"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy, etc.)"}
// @ui {"widget":"group_end"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../Modules/Src/Packages/MarkerTrackingHelper.lspkg/Scripts/ImageTrackingController");
Object.setPrototypeOf(script, Module.ImageTrackingController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("markerTrackingComponent", []);
    checkUndefined("resizeObjectArray", []);
    checkUndefined("editEventCallbacks", []);
    checkUndefined("enableLogging", [["editEventCallbacks",true]]);
    checkUndefined("enableLoggingLifecycle", [["editEventCallbacks",true]]);
    if (script.onAwake) {
       script.onAwake();
    }
});
