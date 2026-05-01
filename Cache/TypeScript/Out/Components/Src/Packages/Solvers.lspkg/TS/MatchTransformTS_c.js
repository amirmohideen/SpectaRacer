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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Target Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Target object to match transform from</span>"}
// @input SceneObject target {"hint":"Override default target mainCamera"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Position Settings</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Position offset, lerp, and speed configuration</span>"}
// @input vec3 positionOffset = {0,0,0} {"hint":"Position offset for matching the target's position"}
// @input bool usePositionLerp = true {"hint":"Use lerping for smooth position transitions"}
// @input float positionLerpSpeed = 1 {"hint":"Speed for moving towards the target's position (when lerping is enabled)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Rotation and Scale Speeds</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Lerp speed for rotation and scale matching</span>"}
// @input float rotationLerpSpeed = 1 {"hint":"Speed for rotating towards the target's rotation"}
// @input float scaleLerpSpeed = 1 {"hint":"Speed for scaling towards the target's scale"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Position Constraints</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Enable to freeze position on specific axes</span>"}
// @input bool constrainPositionX {"hint":"Toggle to constrain movement on specific axes"}
// @input bool constrainPositionY
// @input bool constrainPositionZ
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Rotation Constraints</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Enable to freeze rotation on specific axes</span>"}
// @input bool constrainRotationX {"hint":"Toggle to constrain rotation on specific axes"}
// @input bool constrainRotationY
// @input bool constrainRotationZ
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Scale Constraints</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Enable to freeze scaling on specific axes</span>"}
// @input bool constrainScaleX {"hint":"Toggle to constrain scaling on specific axes"}
// @input bool constrainScaleY
// @input bool constrainScaleZ
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control logging output for this script instance</span>"}
// @input bool enableLogging {"hint":"Enable general logging (operations, events, etc.)"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy, etc.)"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../Modules/Src/Packages/Solvers.lspkg/TS/MatchTransformTS");
Object.setPrototypeOf(script, Module.MatchTransformTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
