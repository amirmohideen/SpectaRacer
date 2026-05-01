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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">DotProductDemoTS – demonstrate dot product and vector operations</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Changes a material color based on the horizontal angle between the camera and a reference object.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject reference {"hint":"Reference object to check angle against"}
// @input Asset.Material referenceMaterial {"hint":"Material to change color based on facing direction"}
// @input float thresholdDot = 0.95 {"hint":"Threshold dot product value for changing color (0-1)"}
// @input float thresholdDotInDegrees = 30 {"hint":"Threshold angle in degrees for recentering"}
// @input Component.Camera camera {"hint":"Camera used for direction checking"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/DotProduct/TS/DotProductDemoTS");
Object.setPrototypeOf(script, Module.DotProductDemoTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("reference", []);
    checkUndefined("referenceMaterial", []);
    checkUndefined("thresholdDot", []);
    checkUndefined("thresholdDotInDegrees", []);
    checkUndefined("camera", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
