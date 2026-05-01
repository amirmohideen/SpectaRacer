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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">RaycastPainterTS – draw a line path by raycasting on paintable surfaces</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Accumulates world-space hit points into a line renderer as the user touches and drags.</span>"}
// @ui {"widget":"separator"}
// @input Component.Component playerCamera {"hint":"Camera from which the ray will be shot"}
// @input float raycastDistance = 100 {"hint":"Max distance for the raycast"}
// @input string paintablePattern = "Paintable" {"hint":"Name pattern to identify paintable objects"}
// @input float lineThickness = 0.02 {"hint":"Thickness of the painted line in world units"}
// @input vec4 lineColor = {1,0,0,1} {"hint":"Color of the painted line (RGBA)"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/RaycastPainter/TS/RaycastPainterTS");
Object.setPrototypeOf(script, Module.RaycastPainterTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("playerCamera", []);
    checkUndefined("raycastDistance", []);
    checkUndefined("paintablePattern", []);
    checkUndefined("lineThickness", []);
    checkUndefined("lineColor", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
