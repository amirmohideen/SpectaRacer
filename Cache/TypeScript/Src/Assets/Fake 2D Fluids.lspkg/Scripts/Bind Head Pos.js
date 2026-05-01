// Bind Head Pos.js

// Version: 1.0.0

// Event: On Awake

// Description: [Passes the position of the user's head in the Pivot pos parameters of Solver materials.]
//@input SceneObject mainCamera
//@input Asset.Material smokeMaterial
//@input Asset.Material fireMaterial

cameraObject = script.mainCamera;
mainCameraComponent = cameraObject.getFirstComponent("Component.Camera");

var binding1 = scene.createSceneObject('Binding1');
var headComponent = binding1.createComponent('Head');
binding1.setParent(cameraObject);
binding1.getTransform().setWorldPosition(new vec3(0,0,0));
headComponent.setAttachmentPointType(AttachmentPointType.CandideCenter);

// Update
var event = script.createEvent("UpdateEvent");
event.bind(function(eventData)
{
binding1WorldPos = binding1.getTransform().getWorldPosition();
binding1ScreenPos = mainCameraComponent.worldSpaceToScreenSpace(binding1WorldPos);
binding1ScreenPos.y = 1.0 - binding1ScreenPos.y;

script.smokeMaterial.mainPass.radialPivotPos = binding1ScreenPos;
script.smokeMaterial.mainPass.noisePivotPos = binding1ScreenPos;
script.fireMaterial.mainPass.screenHeadPos = binding1ScreenPos;
script.fireMaterial.mainPass.radialPivotPos = binding1ScreenPos;
script.fireMaterial.mainPass.noisePivotPos = binding1ScreenPos;
});