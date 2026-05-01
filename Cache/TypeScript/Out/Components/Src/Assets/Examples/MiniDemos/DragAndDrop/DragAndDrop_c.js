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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">DragAndDrop – drag an object and drop with physics</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Uses SIK Interactable to select, manipulate, and drop an object with a delayed auto-destroy.</span>"}
// @ui {"widget":"separator"}
// @input AssignableType manipulateObject {"hint":"The Interactable for select and release events"}
// @input AssignableType_1 manipulationComponent {"hint":"The InteractableManipulation component for manipulation events"}
// @input Component.BodyComponent physicsBody {"hint":"The BodyComponent to re-enable physics on drop"}
// @input float destroyDelay = 5 {"hint":"The delay time in seconds before the instantiated object is destroyed"}
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
var Module = require("../../../../../../Modules/Src/Assets/Examples/MiniDemos/DragAndDrop/DragAndDrop");
Object.setPrototypeOf(script, Module.DragAndDrop.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("destroyDelay", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
