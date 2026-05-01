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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">SnapSaberGlobalManager – singleton score & damage manager</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Tracks score from coin hits and enemy damage strikes. 3 enemy hits = game over.</span>"}
// @ui {"widget":"separator"}
// @input float pointsPerHit = 10 {"hint":"Points awarded for each coin hit"}
// @input float maxEnemyStrikes = 3 {"hint":"Number of enemy hits before game over"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Sound Effects</span>"}
// @input Component.AudioComponent coinAudio {"hint":"AudioComponent to play when a coin is collected — assign your coin SFX AudioComponent here"}
// @input Component.AudioComponent enemyAudio {"hint":"AudioComponent to play when the car hits an enemy — assign your crash SFX AudioComponent here"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/SnapSaberGlobalManager");
Object.setPrototypeOf(script, Module.SnapSaberGlobalManager.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("pointsPerHit", []);
    checkUndefined("maxEnemyStrikes", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
