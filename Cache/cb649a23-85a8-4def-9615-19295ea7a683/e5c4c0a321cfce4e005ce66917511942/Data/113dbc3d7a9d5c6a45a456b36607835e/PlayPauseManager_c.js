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
// @input AssignableType laneController {"hint":"The LanePatternController driving the game speed"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Coin Instantiators</span>"}
// @input AssignableType_1 coinLeft {"hint":"Left lane CoinInstantiator"}
// @input AssignableType_2 coinMiddle {"hint":"Middle lane CoinInstantiator"}
// @input AssignableType_3 coinRight {"hint":"Right lane CoinInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Tree Instantiators</span>"}
// @input AssignableType_4 treeLeft {"hint":"Left lane TreeInstantiator"}
// @input AssignableType_5 treeMiddle {"hint":"Middle lane TreeInstantiator"}
// @input AssignableType_6 treeRight {"hint":"Right lane TreeInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Road Instantiators</span>"}
// @input AssignableType_7 roadLeft {"hint":"Left lane RoadInstantiator"}
// @input AssignableType_8 roadMiddle {"hint":"Middle lane RoadInstantiator"}
// @input AssignableType_9 roadRight {"hint":"Right lane RoadInstantiator"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">HUD Outputs</span>"}
// @input Component.Component damageText {"hint":"Text component that shows damage percentage (0% → 33% → 67% → 100%)"}
// @input Component.Component distanceText {"hint":"Text component that shows distance travelled in metres"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Controls</span>"}
// @input AssignableType_10 pauseInteractable {"hint":"Interactable that triggers pause (e.g. a pause button)"}
// @input AssignableType_11 playInteractable {"hint":"Interactable that triggers resume (e.g. a play button)"}
// @input bool startPaused {"hint":"If true the game starts paused and waits for the play button"}
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
    checkUndefined("laneController", []);
    checkUndefined("startPaused", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
