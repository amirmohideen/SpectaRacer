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
// @ui {"widget":"label", "label":"<span style=\"color: #F472B6;\">MainMenu – panel navigation + game lifecycle</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Manages Panel 1 (main menu), Panel 2 (pause), Panel 3 (tutorial) and the LevelHandleMover SceneObject.</span>"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Panels — drag each panel's root SceneObject</span>"}
// @input SceneObject panel1 {"hint":"Panel 1 — main menu (tutorial + play)"}
// @input SceneObject panel2 {"hint":"Panel 2 — pause overlay (resume, weather, restart, main menu)"}
// @input SceneObject panel3 {"hint":"Panel 3 — tutorial screen"}
// @input SceneObject panel4 {"hint":"Panel 4 — game over screen (restart + main menu)"}
// @ui {"widget":"separator"}
// @input SceneObject levelHandleMover {"hint":"The root SceneObject for the entire level — disabled at start, enabled when Play is pressed"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Panel 1 — Main Menu buttons</span>"}
// @input AssignableType tutorialButton {"hint":"Tutorial button on Panel 1"}
// @input AssignableType_1 playButton {"hint":"Play button on Panel 1"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">In-game pause buttons — both open Panel 2</span>"}
// @input AssignableType_2 pauseButton1 {"hint":"First pause button"}
// @input AssignableType_3 pauseButton2 {"hint":"Second pause button"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Panel 2 — Pause overlay buttons</span>"}
// @input AssignableType_4 resumeButton {"hint":"Resume button on Panel 2"}
// @input AssignableType_5 weatherToggleSwitch {"hint":"Weather Switch on Panel 2 — on enables the weather object, off disables it"}
// @input AssignableType_6 restartButton {"hint":"Restart button on Panel 2"}
// @input AssignableType_7 mainMenuButtonPanel2 {"hint":"Main Menu button on Panel 2"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Panel 3 — Tutorial buttons</span>"}
// @input AssignableType_8 mainMenuButtonPanel3 {"hint":"Main Menu button on Panel 3"}
// @ui {"widget":"separator"}
// @input SceneObject weatherObject {"hint":"SceneObject toggled by the weather button (enabled ↔ disabled each press)"}
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
var Module = require("../../../../../../../Modules/Src/Assets/Examples/MiniDemos/SnapSaber/TS/MainMenu");
Object.setPrototypeOf(script, Module.MainMenu.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("panel1", []);
    checkUndefined("panel2", []);
    checkUndefined("panel3", []);
    checkUndefined("panel4", []);
    checkUndefined("levelHandleMover", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
