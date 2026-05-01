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
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Collider Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Define the prefab and target object with collider shape</span>"}
// @input Asset.ObjectPrefab prefab {"hint":"Prefab to instantiate"}
// @input SceneObject targetObject {"hint":"Target object with shape"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Distribution Settings</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Configure number of instances and placement mode (inside or surface)</span>"}
// @input float numberOfInstances = 10 {"hint":"Number of instances to spawn"}
// @input bool instantiateInside = true {"hint":"Toggle for inside or on surface instantiation"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Scale Settings</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control prefab scaling with optional random variation</span>"}
// @input float prefabScale = 1 {"hint":"Scale factor for instantiated prefabs"}
// @input float randomScaleVariation {"hint":"Random scale variation (0 = uniform size, 1 = fully random between 0 and prefabScale*2)"}
// @ui {"widget":"separator"}
// @ui {"widget":"label", "label":"<span style=\"color: #60A5FA;\">Logging Configuration</span>"}
// @ui {"widget":"label", "label":"<span style=\"color: #94A3B8; font-size: 11px;\">Control logging output for this script instance</span>"}
// @input bool enableLogging {"hint":"Enable general logging (animation cycles, events, etc.)"}
// @input bool enableLoggingLifecycle {"hint":"Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy, etc.)"}
if (!global.BaseScriptComponent) {
    function BaseScriptComponent() {}
    global.BaseScriptComponent = BaseScriptComponent;
    global.BaseScriptComponent.prototype = Object.getPrototypeOf(script);
    global.BaseScriptComponent.prototype.__initialize = function () {};
    global.BaseScriptComponent.getTypeName = function () {
        throw new Error("Cannot get type name from the class, not decorated with @component");
    };
}
var Module = require("../../../../../../Modules/Src/Packages/Instantiation.lspkg/Scripts/TS/SimpleColliderInstantiatorTS");
Object.setPrototypeOf(script, Module.SimpleColliderInstantiatorTS.prototype);
script.__initialize();
let awakeEvent = script.createEvent("OnAwakeEvent");
awakeEvent.bind(() => {
    checkUndefined("prefab", []);
    checkUndefined("targetObject", []);
    checkUndefined("numberOfInstances", []);
    checkUndefined("instantiateInside", []);
    checkUndefined("prefabScale", []);
    checkUndefined("randomScaleVariation", []);
    checkUndefined("enableLogging", []);
    checkUndefined("enableLoggingLifecycle", []);
    if (script.onAwake) {
       script.onAwake();
    }
});
