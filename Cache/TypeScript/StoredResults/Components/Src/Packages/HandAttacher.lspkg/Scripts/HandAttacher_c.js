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
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Specify the object to attach to the hand joint (leave empty to use this object)</span>"}
// @input SceneObject targetObject {"hint":"Object to attach to hand joint (leave empty to use this object)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Hand Joint Selection</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Choose which hand and joint to attach to</span>"}
// @input string handSide = "right" {"hint":"Hand: left | right | dominant | nondominant"}
// @input string handJoint = "indexTip" {"hint":"Joint: wrist | thumbToWrist | thumbKnuckle | thumbMidJoint | thumbTip | indexToWrist | indexKnuckle | indexMidJoint | indexUpperJoint | indexTip | middleToWrist | middleKnuckle | middleMidJoint | middleUpperJoint | middleTip | ringToWrist | ringKnuckle | ringMidJoint | ringUpperJoint | ringTip | pinkyToWrist | pinkyKnuckle | pinkyMidJoint | pinkyUpperJoint | pinkyTip"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Position & Rotation Offsets</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Adjust position and rotation offsets relative to the joint</span>"}
// @input vec3 positionOffset {"hint":"Position offset from joint (in joint's local space)"}
// @input vec3 rotationOffset {"hint":"Rotation offset (in degrees)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Smoothing Settings</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Configure interpolation smoothing for position and rotation tracking</span>"}
// @input bool usePositionSmoothing = true {"hint":"Enable smooth position interpolation"}
// @input float positionSmoothSpeed = 10 {"hint":"Position smoothing speed (higher = faster response)"}
// @input bool useRotationSmoothing = true {"hint":"Enable smooth rotation interpolation"}
// @input float rotationSmoothSpeed = 8 {"hint":"Rotation smoothing speed (higher = faster response)"}
// @input bool updatePositionOnly {"hint":"Only update position"}
// @input bool updateRotationOnly {"hint":"Only update rotation"}
// @input bool hideWhenNotTracked = true {"hint":"Hide object when hand is not tracked"}
// @input bool debugMode {"hint":"Debug: Show tracking status in console"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control logging output for this script instance</span>"}
// @input bool enableLogging {"hint":"Enable general logging (animation cycles, events, etc.)"}
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
var Module = require("../../../../../Modules/Src/Packages/HandAttacher.lspkg/Scripts/HandAttacher");
Object.setPrototypeOf(script, Module.HandAttacher.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("handSide", []);
    checkUndefined("handJoint", []);
    checkUndefined("positionOffset", []);
    checkUndefined("rotationOffset", []);
    checkUndefined("usePositionSmoothing", []);
    checkUndefined("positionSmoothSpeed", []);
    checkUndefined("useRotationSmoothing", []);
    checkUndefined("rotationSmoothSpeed", []);
    checkUndefined("updatePositionOnly", []);
    checkUndefined("updateRotationOnly", []);
    checkUndefined("hideWhenNotTracked", []);
    checkUndefined("debugMode", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
