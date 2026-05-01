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
// @ui {"widget":"label", "label":"<span style=\"color: #4ADE80;\">TreeInstantiator – spawn and animate tree obstacle cubes</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Instantiates tree prefabs at regular intervals and moves them toward a target. Hitting a tree deals damage.</span>"}
// @ui {"widget":"separator"}
// @input Asset.ObjectPrefab prefab {"hint":"Prefab to instantiate"}
// @input SceneObject spawnPosition {"hint":"Spawn position – where prefabs appear from"}
// @input SceneObject targetPosition {"hint":"Target position – defines movement direction"}
// @input float spawnInterval = 2 {"hint":"Time between spawning prefabs in seconds"}
// @input float moveSpeed = 2 {"hint":"Speed at which prefabs move toward the target"}
// @input float rotationSpeedX {"hint":"Rotation speed on X axis in degrees per second"}
// @input float rotationSpeedY = 45 {"hint":"Rotation speed on Y axis in degrees per second"}
// @input float rotationSpeedZ {"hint":"Rotation speed on Z axis in degrees per second"}
// @input float maxLifetime = 10 {"hint":"Maximum lifetime of prefabs in seconds before auto-destruction"}
// @input bool destroyOnReachTarget {"hint":"Destroy prefabs when they reach the target position"}
// @input bool showSpawnGizmo = true {"hint":"Draw a debug line from spawn position to target position each frame"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/TreeInstantiator");
Object.setPrototypeOf(script, Module.TreeInstantiator.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("prefab", []);
    checkUndefined("spawnPosition", []);
    checkUndefined("targetPosition", []);
    checkUndefined("spawnInterval", []);
    checkUndefined("moveSpeed", []);
    checkUndefined("rotationSpeedX", []);
    checkUndefined("rotationSpeedY", []);
    checkUndefined("rotationSpeedZ", []);
    checkUndefined("maxLifetime", []);
    checkUndefined("destroyOnReachTarget", []);
    checkUndefined("showSpawnGizmo", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
