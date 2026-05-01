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
// @input Component.ScreenTransform contentTransform
// @input bool limitContentHeight
// @input float contentHeight = 2 {"label":"Content Height", "hint":"Height relative to view height (1 = same as view)", "widget":"slider", "min":0.1, "max":10, "step":0.1, "showIf":"limitContentHeight"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../../../Modules/Src/Packages/Turn Based.lsc/Turn Based/Modules/DebugView/ScrollView");
Object.setPrototypeOf(script, Module.ScrollView.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("contentTransform", []);
    checkUndefined("limitContentHeight", []);
    checkUndefined("contentHeight", [["limitContentHeight",true]]);
    if (script.onAwake) {
       script.onAwake();
    }
});
