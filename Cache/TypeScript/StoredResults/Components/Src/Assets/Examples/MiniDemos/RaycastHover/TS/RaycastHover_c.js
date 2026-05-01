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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">RaycastHoverTS – scale a panel on raycast hover</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Detects when the ray between two points hits a collider and animates the target panel scale.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject rayStart {"hint":"The origin SceneObject of the ray"}
// @input SceneObject rayEnd {"hint":"The destination SceneObject of the ray"}
// @input SceneObject targetPanel {"hint":"The panel SceneObject to scale on hover"}
// @input SceneObject targetCollider {"hint":"The collider SceneObject to test the ray against"}
// @input float animationDuration = 500 {"hint":"Duration of the scale animation in milliseconds"}
// @input vec3 normalScale = {1,1,1} {"hint":"Default scale of the panel when not hovered"}
// @input vec3 expandedScale = {1.2,1.2,1.2} {"hint":"Expanded scale of the panel when hovered"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/RaycastHover/TS/RaycastHover");
Object.setPrototypeOf(script, Module.RaycastHoverTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("rayStart", []);
    checkUndefined("rayEnd", []);
    checkUndefined("targetPanel", []);
    checkUndefined("targetCollider", []);
    checkUndefined("animationDuration", []);
    checkUndefined("normalScale", []);
    checkUndefined("expandedScale", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
