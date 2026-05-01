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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Line – visual line renderer between two scene objects</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">Renders a dynamic line between two points using InteractorLineRenderer, updated every frame.</span>"}
// @ui {"widget":"separator"}
// @input SceneObject startPointObject {"hint":"The SceneObject marking the start of the line"}
// @input SceneObject endPointObject {"hint":"The SceneObject marking the end of the line"}
// @input Asset.Material lineMaterial {"hint":"Material used to render the line"}
// @input vec3 _beginColor = "{1, 1, 0}" {"hint":"Color at the start of the line", "widget":"color"}
// @input vec3 _endColor = "{1, 1, 0}" {"hint":"Color at the end of the line", "widget":"color"}
// @input float lineWidth = 0.5 {"hint":"Thickness of the line in world units"}
// @input float lineLength = 160 {"hint":"Length of the line in units"}
// @input float lineStyle = 2 {"hint":"Visual style of the line (Full, Split, or FadedEnd)", "widget":"combobox", "values":[{"label":"Full", "value":0}, {"label":"Split", "value":1}, {"label":"FadedEnd", "value":2}]}
// @input bool shouldStick = true {"hint":"Whether the line should stick to its endpoint objects"}
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
var Module = require("../../../../../../Modules/Src/Assets/Examples/MiniDemos/DirectionShadows/Line");
Object.setPrototypeOf(script, Module.Line.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("startPointObject", []);
    checkUndefined("endPointObject", []);
    checkUndefined("lineMaterial", []);
    checkUndefined("_beginColor", []);
    checkUndefined("_endColor", []);
    checkUndefined("lineWidth", []);
    checkUndefined("lineLength", []);
    checkUndefined("lineStyle", []);
    checkUndefined("shouldStick", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
