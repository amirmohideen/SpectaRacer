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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">LanePatternController – dynamic lane pattern orchestrator</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Controls the 6 existing instantiators. Patterns ensure a safe lane, ramp in difficulty, and force lane rotation.</span>"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Coin Instantiators — drag the SceneObject with the CoinInstantiator script for each lane</span>"}
// @input AssignableType coinLeft {"hint":"Left lane CoinInstantiator"}
// @input AssignableType_1 coinMiddle {"hint":"Middle lane CoinInstantiator"}
// @input AssignableType_2 coinRight {"hint":"Right lane CoinInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Tree Instantiators — drag the SceneObject with the TreeInstantiator script for each lane</span>"}
// @input AssignableType_3 treeLeft {"hint":"Left lane TreeInstantiator"}
// @input AssignableType_4 treeMiddle {"hint":"Middle lane TreeInstantiator"}
// @input AssignableType_5 treeRight {"hint":"Right lane TreeInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Speed Ramp</span>"}
// @input float initialMoveSpeed = 100 {"hint":"Move speed of all lanes at game start. Overrides the moveSpeed set on each individual instantiator."}
// @input float maxMoveSpeed = 300 {"hint":"Move speed cap — speed increases linearly from initialMoveSpeed to maxMoveSpeed over speedRampTime seconds."}
// @input float speedRampTime = 120 {"hint":"Seconds to go from initialMoveSpeed to maxMoveSpeed."}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Wave Timing</span>"}
// @input float waveDuration = 4 {"hint":"Seconds each pattern wave stays active. Should be long enough for each instantiator to fire at least once based on its spawnInterval."}
// @input float gapDuration = 1.5 {"hint":"Seconds of silence between waves — gives the player time to react and rotate."}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Difficulty</span>"}
// @input float difficultyRampTime = 120 {"hint":"Seconds until difficulty reaches maximum (medium/hard patterns become dominant)."}
// @input float gapFrequency = 5 {"hint":"Insert a rest wave every N waves to give the player a breather."}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging</span>"}
// @input bool enableLogging {"hint":"Enable general logging"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/LanePatternController");
Object.setPrototypeOf(script, Module.LanePatternController.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("coinLeft", []);
    checkUndefined("coinMiddle", []);
    checkUndefined("coinRight", []);
    checkUndefined("treeLeft", []);
    checkUndefined("treeMiddle", []);
    checkUndefined("treeRight", []);
    checkUndefined("initialMoveSpeed", []);
    checkUndefined("maxMoveSpeed", []);
    checkUndefined("speedRampTime", []);
    checkUndefined("waveDuration", []);
    checkUndefined("gapDuration", []);
    checkUndefined("difficultyRampTime", []);
    checkUndefined("gapFrequency", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
