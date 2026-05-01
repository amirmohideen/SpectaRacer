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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">DirectionalWorldQuery – perform directional world hit tests</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Casts rays in the direction defined by two scene objects and places a marker at the hit point.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject directionStart {"hint":"Start object defining the ray direction"}
// @input SceneObject directionEnd {"hint":"End object defining the ray direction"}
// @input SceneObject rayStart {"hint":"Origin point from which the ray is cast into the world"}
// @input SceneObject objectHitPoint {"hint":"Object to position at the detected hit location"}
// @input float rayLength = 100 {"hint":"Maximum length of the ray cast in world units"}
// @input bool filterEnabled = true {"hint":"Whether to enable hit-test filtering (recommended for surfaces)"}
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
var Module = require("../../../../../../Modules/Src/Assets/Examples/MiniDemos/DirectionShadows/DirectionalWorldQuery");
Object.setPrototypeOf(script, Module.DirectionalWorldQuery.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("directionStart", []);
    checkUndefined("directionEnd", []);
    checkUndefined("rayStart", []);
    checkUndefined("objectHitPoint", []);
    checkUndefined("rayLength", []);
    checkUndefined("filterEnabled", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
