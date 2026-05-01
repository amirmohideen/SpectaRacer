//@input Component.Camera camera
//@input vec2 bindingPoint
//@input float width = 1.0 {"widget":"slider", "min":0.0, "max":2.0, "step":0.01}
//@input float height = 1.0 {"widget":"slider", "min":0.0, "max":2.0, "step":0.01}

//@input int sourceRegionType = 1 {"widget":"combobox", "values":[{"label":"FullFrame", "value":0}, {"label":"Capture", "value":1}, {"label":"Preview", "value":2}, {"label":"SafeRender", "value":3}, {"label":"RoundButton", "value":4}]}
//@input int onSnapEventRegionType = 2 {"widget":"combobox", "values":[{"label":"FullFrame", "value":0}, {"label":"Capture", "value":1}, {"label":"Preview", "value":2}, {"label":"SafeRender", "value":3}, {"label":"RoundButton", "value":4}]}

//@input int alignType = 1 {"widget":"combobox", "values":[{"label":"none", "value":1}, {"label":"smallSide", "value":2}, {"label":"bigSide", "value":3}, {"label":"width", "value":4}, {"label":"height", "value":5} ]}

var canUseScreenTransform = global.getCoreVersion() >= 77
global.forPointerPos = vec3.zero();
script.bindingPoint = script.bindingPoint
script.size = new vec2(script.width, script.height)
script.regionType = script.sourceRegionType
script.onSnapRegionType = script.onSnapEventRegionType
var screenRegion = null
var screenTransform
var transform = script.getSceneObject().getTransform()
if (canUseScreenTransform) {
    var screenRoot = scene.createSceneObject("Transform")
    screenRegion = screenRoot.createComponent("Component.ScreenRegionComponent")
    screenTransform = screenRoot.createComponent("Component.ScreenTransform")
    screenRegion.region = script.regionType
    
}

script.createEvent("LateUpdateEvent").bind(onUpdate)
script.createEvent("SnapImageCaptureEvent").bind(onRecording)
script.createEvent("SnapRecordStartEvent").bind(onRecording)

function onRecording() {
    if (canUseScreenTransform) {
        script.regionType = script.onSnapRegionType
    }
    onUpdate()
}

var visibleRegion = vec2.one()
var centerRegion = vec2.zero()
var worldScale = vec3.one()
var ndcRight = vec3.right()
var ndcUp = vec3.up()

var rectVec = vec4.zero()
function onUpdate() {
    if (canUseScreenTransform) {
        
        if (screenRegion.region !== script.regionType) {
            screenRegion.region = script.regionType
        }

        rectVec.x = screenTransform.anchors.left
        rectVec.y = screenTransform.anchors.bottom
        rectVec.z = screenTransform.anchors.right
        rectVec.w = screenTransform.anchors.top
        
        var region = rectVec
        
        centerRegion.x = (region.z + region.x) * 0.5
        centerRegion.y = (region.w + region.y) * 0.5
        
        visibleRegion.x = Math.abs(region.z - region.x) * 0.5
        visibleRegion.y = Math.abs(region.w - region.y) * 0.5
    }
    
    var camera = script.camera
    var bindingPoint = script.bindingPoint
    var size = script.size
    
    var worldPosition = transform.getWorldPosition()
    var ndcPosition = camera.project(worldPosition)
    
    ndcPosition.x = 0.0
    ndcPosition.y = 0.0
    
    ndcRight.z = ndcPosition.z
    ndcUp.z = ndcPosition.z
    
    worldPosition = camera.unproject(ndcPosition)
    
    var rightPosition = camera.unproject(ndcRight)
    var upPosition = camera.unproject(ndcUp)
    
    var worldRight = rightPosition.sub(worldPosition)
    var worldUp = upPosition.sub(worldPosition)
    
    worldPosition = worldPosition.add(worldRight.uniformScale(bindingPoint.x * visibleRegion.x + centerRegion.x))
    worldPosition = worldPosition.add(worldUp.uniformScale(bindingPoint.y * visibleRegion.y + centerRegion.y))
    
    worldScale.x = worldRight.length * 2.0 * size.x * visibleRegion.x
    worldScale.y = worldUp.length * 2.0 * size.y * visibleRegion.y
    
    switch (script.alignType) {
        case 2: { //smallSide
            var scale = Math.min(worldScale.x, worldScale.y)
            worldScale.x = scale
            worldScale.y = scale
        } break
        case 3: { //bigSide
            var scale = Math.max(worldScale.x, worldScale.y)
            worldScale.x = scale
            worldScale.y = scale
        } break
        case 4: { //width
            worldScale.y = worldScale.x
        } break
        case 5: { //height
            worldScale.x = worldScale.y
        } break
    }
    transform.setWorldPosition(worldPosition)
    //global.forPointerPos = worldPosition;
    transform.setWorldScale(worldScale)
    global.forPointerPos = transform.getWorldPosition()
    //print(transform.getWorldPosition())
}

script.updatePriority = -20000

