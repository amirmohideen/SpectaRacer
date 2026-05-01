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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">ArcheryProjectileManagerTS – archery projectile manager</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Manages arrow charging and firing with physics-based projectile motion and score tracking.</span>"}
// @ui {"widget":"separator"}
// @input float initialSpeed = 30 {"hint":"Initial velocity of projectiles when fired (higher = faster arrows)"}
// @input float gravityStrength = 15 {"hint":"Gravity effect on projectiles (lower = flatter trajectory)"}
// @input float dragFactor = 0.005 {"hint":"Air resistance factor (higher = more drag, slower arrows)"}
// @input Asset.ObjectPrefab projectile {"hint":"Projectile to instantiate when firing"}
// @input SceneObject shootingRayStart {"hint":"Start point for the shooting ray"}
// @input SceneObject shootingRayEnd {"hint":"End point for the shooting ray"}
// @input SceneObject lineA {"hint":"Start point for the charging line"}
// @input SceneObject lineB {"hint":"End point for the charging line"}
// @input SceneObject archCharger {"hint":"Object that visualizes the charge level"}
// @input SceneObject manipulatingObject {"hint":"Hand position reference"}
// @input Component.Component chargingText {"hint":"Text component to display charging percentage"}
// @input Component.Component scoreText {"hint":"Text component to display score"}
// @input SceneObject rotatingTarget {"hint":"Target object that rotates (for scoring)"}
// @input AssignableType interactableManipulation {"hint":"The interactable object for manipulation"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/Archery/TS/ArcheryProjectileManagerTS");
Object.setPrototypeOf(script, Module.ArcheryProjectileManagerTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("initialSpeed", []);
    checkUndefined("gravityStrength", []);
    checkUndefined("dragFactor", []);
    checkUndefined("projectile", []);
    checkUndefined("shootingRayStart", []);
    checkUndefined("shootingRayEnd", []);
    checkUndefined("lineA", []);
    checkUndefined("lineB", []);
    checkUndefined("archCharger", []);
    checkUndefined("manipulatingObject", []);
    checkUndefined("chargingText", []);
    checkUndefined("scoreText", []);
    checkUndefined("rotatingTarget", []);
    checkUndefined("interactableManipulation", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
