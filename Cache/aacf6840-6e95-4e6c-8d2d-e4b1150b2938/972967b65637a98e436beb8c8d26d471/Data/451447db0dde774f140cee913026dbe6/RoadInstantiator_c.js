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
// @ui {"widget":"label", "label":"<span style=\"color: #34D399;\">RoadInstantiator – continuous road tile spawner</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Spawns road tiles at a fixed interval. Speed synced via LanePatternController. Tiles are destroyed at end zone only.</span>"}
// @ui {"widget":"separator"}
// @input Asset.ObjectPrefab prefab {"hint":"Road tile prefab to instantiate"}
// @input SceneObject spawnPosition {"hint":"Spawn position – where tiles appear"}
// @input SceneObject targetPosition {"hint":"Target position – defines movement direction (tiles pass through without triggering score/damage)"}
// @input SceneObject endZone {"hint":"SceneObject with a box collider that destroys road tiles on contact (e.g. InstantiatorEndPosition)"}
// @input float spawnInterval = 0.5 {"hint":"Time between spawning road tiles in seconds"}
// @input float moveSpeed = 100 {"hint":"Speed at which tiles move toward the target — overridden by LanePatternController"}
// @input bool destroyOnReachTarget {"hint":"Destroy tiles when they reach the target position — disable to let them pass through"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/RoadInstantiator");
Object.setPrototypeOf(script, Module.RoadInstantiator.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("prefab", []);
    checkUndefined("spawnPosition", []);
    checkUndefined("targetPosition", []);
    checkUndefined("spawnInterval", []);
    checkUndefined("moveSpeed", []);
    checkUndefined("destroyOnReachTarget", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
