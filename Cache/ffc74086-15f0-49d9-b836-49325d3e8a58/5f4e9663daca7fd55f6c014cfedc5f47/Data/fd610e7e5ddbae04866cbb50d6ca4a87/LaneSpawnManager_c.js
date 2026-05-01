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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">LaneSpawnManager – pattern-based 3-lane spawner</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Selects structured coin/tree patterns, ensures a safe lane, ramps difficulty, and forces lane rotation.</span>"}
// @ui {"widget":"separator"}
// @input Asset.ObjectPrefab coinPrefab {"hint":"Coin prefab to instantiate"}
// @input Asset.ObjectPrefab treePrefab {"hint":"Tree prefab to instantiate"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Lane Spawn Points</span>"}
// @input SceneObject leftSpawnPoint {"hint":"Left lane spawn position SceneObject"}
// @input SceneObject middleSpawnPoint {"hint":"Middle lane spawn position SceneObject"}
// @input SceneObject rightSpawnPoint {"hint":"Right lane spawn position SceneObject"}
// @input SceneObject targetPoint {"hint":"Target position — objects move toward this (near the car)"}
// @input SceneObject endZone {"hint":"SceneObject with a box collider at the car end — destroys objects that pass through"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Movement</span>"}
// @input float moveSpeed = 2 {"hint":"Speed objects move toward the target (units/sec)"}
// @input float coinRotSpeedY = 90 {"hint":"Y-axis spin speed for coins (degrees/sec)"}
// @input float treeRotSpeedY = 20 {"hint":"Y-axis spin speed for trees (degrees/sec)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Wave Timing</span>"}
// @input float waveDuration = 2.5 {"hint":"Seconds each pattern wave is active (objects spawn during this window)"}
// @input float gapDuration = 1 {"hint":"Seconds of empty pause between waves (breathing room for the player)"}
// @input float coinsPerLane = 2 {"hint":"Number of coins spawned per coin lane per wave"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Difficulty</span>"}
// @input float difficultyRampTime = 120 {"hint":"Seconds until difficulty reaches maximum (medium patterns become dominant)"}
// @input float gapFrequency = 4 {"hint":"Insert a full rest wave (all empty/coin) every N waves to give the player a break"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/LaneSpawnManager");
Object.setPrototypeOf(script, Module.LaneSpawnManager.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("coinPrefab", []);
    checkUndefined("treePrefab", []);
    checkUndefined("leftSpawnPoint", []);
    checkUndefined("middleSpawnPoint", []);
    checkUndefined("rightSpawnPoint", []);
    checkUndefined("targetPoint", []);
    checkUndefined("moveSpeed", []);
    checkUndefined("coinRotSpeedY", []);
    checkUndefined("treeRotSpeedY", []);
    checkUndefined("waveDuration", []);
    checkUndefined("gapDuration", []);
    checkUndefined("coinsPerLane", []);
    checkUndefined("difficultyRampTime", []);
    checkUndefined("gapFrequency", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
