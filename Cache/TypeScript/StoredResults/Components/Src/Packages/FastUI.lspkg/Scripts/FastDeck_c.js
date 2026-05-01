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
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">FastDeck – swipeable card stack</span><br/><span style=\"color: #94A3B8; font-size: 11px;\">No prefabs. Use addCard(string), getCardCount(), getCurrentIndex(), getCard(index). Swipe center card left = next, right = previous.</span>"}
// @ui {"widget":"separator"}
// @input number swipeThreshold = "50.0" {"hint":"Minimum swipe distance to trigger card change"}
// @input number animationSpeed = "0.5" {"hint":"Animation speed for card transitions (0–1)"}
// @input number swipeSpeedThreshold = "100.0" {"hint":"Minimum swipe speed to trigger quick swipe"}
// @input number leftCardRotationZ = "0" {"hint":"Rotation (degrees) for left card"}
// @input number rightCardRotationZ = "0" {"hint":"Rotation (degrees) for right card"}
// @input bool testMode {"hint":"Fill deck with sample cards for testing"}
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
var Module = require("../../../../../Modules/Src/Packages/FastUI.lspkg/Scripts/FastDeck");
Object.setPrototypeOf(script, Module.FastDeck.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("swipeThreshold", []);
    checkUndefined("animationSpeed", []);
    checkUndefined("swipeSpeedThreshold", []);
    checkUndefined("leftCardRotationZ", []);
    checkUndefined("rightCardRotationZ", []);
    checkUndefined("testMode", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
