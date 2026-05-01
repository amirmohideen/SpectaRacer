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
// @ui {"widget":"label", "label":"<span style=\"color: #F472B6;\">PlayPauseManager – central play/pause + HUD controller</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Pauses all instantiators, displays damage % and distance travelled.</span>"}
// @ui {"widget":"separator"}
// @input AssignableType laneController {"hint":"The LanePatternController driving the game speed (used for speed ramp + pause)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Coin Instantiators</span>"}
// @input AssignableType_1 coinLeft {"hint":"Left lane CoinInstantiator"}
// @input AssignableType_2 coinMiddle {"hint":"Middle lane CoinInstantiator"}
// @input AssignableType_3 coinRight {"hint":"Right lane CoinInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Enemy Instantiators</span>"}
// @input AssignableType_4 enemyLeft {"hint":"Left lane EnemyInstantiator"}
// @input AssignableType_5 enemyMiddle {"hint":"Middle lane EnemyInstantiator"}
// @input AssignableType_6 enemyRight {"hint":"Right lane EnemyInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Road Instantiators</span>"}
// @input AssignableType_7 roadLeft {"hint":"Left lane RoadInstantiator"}
// @input AssignableType_8 roadMiddle {"hint":"Middle lane RoadInstantiator"}
// @input AssignableType_9 roadRight {"hint":"Right lane RoadInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">HUD Outputs</span>"}
// @input Component.Component damageText {"hint":"Text component that shows damage percentage (0% → 33% → 67% → 100%)"}
// @input Component.Component distanceText {"hint":"Text component that shows distance travelled in metres"}
// @input Component.Component scoreText {"hint":"Text component that shows the score (format: x 42)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">VFX</span>"}
// @input Component.VFXComponent rainVFX {"hint":"Rain VFXComponent — will be paused/resumed alongside the game"}
// @input Component.VFXComponent cloudVFX {"hint":"Cloud VFXComponent — will be paused/resumed alongside the game"}
// @ui {"widget":"separator"}
// @input bool startPaused {"hint":"If true the game starts paused — useful for testing; in production MainMenu controls this via Play button"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/PlayPauseManager");
Object.setPrototypeOf(script, Module.PlayPauseManager.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("startPaused", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
