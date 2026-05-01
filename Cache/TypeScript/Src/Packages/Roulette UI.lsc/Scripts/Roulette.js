/*
@typedef button
@property {Asset.Texture} on
@property {Asset.Texture} off
@property {SceneObject[]} onSelected 
*/
//@input int buttonsNumber = 8 {"min":1,"max":25}
//@input int selectedButtonOnInit = 3 {"min":1, "max":25}
//@input Component.Camera camera
//@input bool hint = true
//@ui {"widget":"separator"}
//@input button[] buttons
//@input Asset.ObjectPrefab roulettePrefab
//@input Asset.Texture texOn
//@input Asset.Texture texOff

if (script.buttonsNumber < 1) {
    throw Error('Invalid Buttons Number. It must >= 1.');
}

if (script.selectedButtonOnInit > script.buttonsNumber) {
    throw Error ('Invalid Selected Button On Init. It must be <= Buttons Number.');
}

if (script.selectedButtonOnInit < 1) {
    throw Error ('Invalid Selected Button On Init. It must be >= 1.');
}

if (!script.camera) {
    throw Error('Input Camera is empty');
}

script.selectedButtonOnInit -= 1;

const MovingType = {
    Clockwise: 1,
    CounterClockwise: -1,
}

var rouletteAlignerSO,
    rouletteParentSO,
    rouletteSO,
    buttonExampleSO,
    buttonExampleImgSO,
    tapHintSo,
    touchZone;

function instantiatePrefab(){
    rouletteAlignerSO = global.scene.createSceneObject("RouletteAligner");
    rouletteAlignerSO.setParent(script.camera.getSceneObject());
    rouletteAlignerSO = script.roulettePrefab.instantiate(rouletteAlignerSO);
    var rouletteAlignerScript = rouletteAlignerSO.getComponent("Component.ScriptComponent");
    rouletteAlignerScript.camera = script.camera;
    rouletteParentSO = rouletteAlignerSO.getChild(0);
    rouletteSO = rouletteParentSO.getChild(0);
    buttonExampleSO = rouletteSO.getChild(0);
    buttonExampleImgSO = buttonExampleSO.getChild(0).getChild(0);
    buttonExampleImgSO.layer = script.camera.renderLayer
    touchZone = rouletteParentSO.getChild(2).getComponent("Component.InteractionComponent");
    rouletteParentSO.getChild(2).layer = script.camera.renderLayer;
    tapHintSo = rouletteParentSO.getChild(1);
    tapHintSo.layer = script.camera.renderLayer;
}
    
instantiatePrefab();

function tapHint() {
    var pass = tapHintSo.getComponent("Component.Image").mainPass;
    pass.baseTex.control.play(2, 0);
    pass.baseTex.control.setOnFinish(function() {
        script.createEvent("UpdateEvent").bind(function(e) {
            var color = pass.baseColor;
            color.a -= 0.2;
            if (color.a > 0) {
                pass.baseColor = color;
            } else {
                tapHintSo.enabled = false;
                e.enabled = false;
            }
        });
    });
}

if (!script.hint) {
    tapHintSo.enabled = false;
} else {
    tapHint();
}

var Roulette = function() {
    var _this = this;

    this.buttonsOnCircle = 12;
    this.selectedButtonSize = 0.18;
    
    this.rouletteLimitMin;
    this.rouletteLimitMax;
    this.selectedButtonIdx;

    this.buttonsParent = rouletteSO;
    this.angleBetweenButtons = Math.PI * 2 / Math.max(this.buttonsOnCircle, script.buttonsNumber);
    this.rouletteT = rouletteSO.getTransform();
    this.rouletteAngle = 0.0;
    
    this.buttonsRotationObj = [];
    this.buttonsImgObj = [],
    this.buttonsImgComp = [];
    this.buttonsTransforms = [];
    
    this.prevTouchPosition;

    this.rouletteCenterPosition;
    this.nearestButtonAngle;
    this.positionDiff = 0;
    this.clockwiseState;
    
    this.needToCenterButton = false;
    this.movingInertion = false;
    this.tapping = false;
    
    this.onSelectedCb = [];
    
    this.updateEvent = script.createEvent("UpdateEvent");
    
    this.init = function() {
        this.rouletteLimitMin = -this.angleBetweenButtons;
        this.rouletteLimitMax = (script.buttonsNumber - 1) * this.angleBetweenButtons + this.angleBetweenButtons;
        this.positionButtons();
        buttonExampleSO.enabled = false;
        this.setUpRolling();
        var delay = script.createEvent("DelayedCallbackEvent")
        delay.bind(function() {
            _this.setCenterPosition();
        });
        delay.reset(0.1);
        this.updateEvent.bind(this.manageUpdateEvent);
        this.selectButton(script.selectedButtonOnInit);
    }
    
    this.manageUpdateEvent = function() {
        if (_this.needToCenterButton) { 
            _this.toCenterButton();
        }
        if (_this.movingInertion) { 
            _this.inertionMove();
        }
        _this.toScaleButtons();
    }
    
    this.selectButton = function(idx) {
        this.selectedButtonIdx = idx;
        this.onSelected();
        this.nearestButtonAngle = idx * this.angleBetweenButtons;
        this.rouletteAngle = this.nearestButtonAngle;
        this.rouletteT.setLocalRotation(quat.angleAxis(this.rouletteAngle, vec3.forward()));
        this.needToCenterButton = false;
    }
    
    this.inertionMove = function() { 
        if (_this.positionDiff.length > 0.02) {
            _this.rouletteAngle += Math.max(Math.abs(_this.positionDiff.x), Math.abs(_this.positionDiff.y)) * _this.clockwiseState * 2;
            if (script.buttonsNumber < this.buttonsOnCircle) {
                if (_this.rouletteAngle > _this.rouletteLimitMax || _this.rouletteAngle < _this.rouletteLimitMin) {
                    _this.movingInertion = false;
                    _this.centralizeRoulette();
                }
                _this.rouletteAngle = MathUtils.clamp(_this.rouletteAngle, _this.rouletteLimitMin, _this.rouletteLimitMax);
            }
            _this.rouletteT.setLocalRotation(quat.angleAxis(_this.rouletteAngle, vec3.forward()));
            _this.positionDiff = _this.positionDiff.uniformScale(0.8);
        } else {
           _this.movingInertion = false;
           _this.centralizeRoulette();
        }
    }
    
    this.toCenterButton = function() {
        _this.rouletteAngle = MathUtils.lerp(_this.rouletteAngle, _this.nearestButtonAngle, 0.2);
        if (Math.abs(_this.nearestButtonAngle - _this.rouletteAngle) < 0.03) {
            _this.rouletteAngle = _this.nearestButtonAngle;
            _this.needToCenterButton = false;
            _this.tapping = false;
        }
        _this.rouletteT.setLocalRotation(quat.angleAxis(_this.rouletteAngle, vec3.forward()));
    }
    
    this.toScaleButtons = function() {
        _this.buttonsTransforms.forEach(function(transform, idx) {
            var quat = transform.getWorldRotation();
            var angle = quat.getAngle();
            if (isNaN(angle)) { 
                angle = 0.0;
            }
            angle = Math.min(angle, Math.PI * 2 - angle); 
            if (angle < _this.angleBetweenButtons) {
                var scale = _this.fitTo(0, _this.angleBetweenButtons, 1.25, 1.0, angle);
                var distance = _this.fitTo(0, _this.angleBetweenButtons, -0.05, 0.0, angle);
                var angleRotation = idx * _this.angleBetweenButtons;
                var x = distance * Math.sin(angleRotation);
                var y = distance * Math.cos(angleRotation);
                
                transform.setLocalScale(vec3.one().uniformScale(scale));
                transform.setLocalPosition(new vec3(x, y, 0));
                if (scale > 1.125 && !_this.tapping) {
                    if (_this.selectedButtonIdx !== idx) {
                        _this.selectedButtonIdx = idx;
                        _this.onSelected();
                    }
                   
                }
            } else {
                transform.setLocalScale(vec3.one());
                transform.setLocalPosition(vec3.zero());
            }
        });
    }
    
    this.onSelected = function() {
        this.buttonsImgComp.forEach(function(img, idx) {
            if (script.buttons[idx]) {
                img.mainPass.baseTex = script.buttons[idx].off;
                script.buttons[idx].onSelected.forEach(disable);
            } else {
                img.mainPass.baseTex = script.texOff;
            }
        });
//        script.buttons.forEach(function(buttonType, idx) {
//            if (idx < script.buttonsNumber) {
//                buttonType.onSelected.forEach(disable);
//                _this.buttonsImgComp[idx].mainPass.baseTex = buttonType.off;
//            }
//        });
        if (script.buttons[this.selectedButtonIdx]) {
            this.buttonsImgComp[this.selectedButtonIdx].mainPass.baseTex = script.buttons[this.selectedButtonIdx].on;
            script.buttons[this.selectedButtonIdx].onSelected.forEach(enable);
        } else {
            this.buttonsImgComp[this.selectedButtonIdx].mainPass.baseTex = script.texOn;
        }
        this.onSelectedCb.forEach(function(cb) {
            cb(_this.selectedButtonIdx);
        });
    }
    
    this.positionButtons = function() {
        for (var i = 0; i < script.buttonsNumber; i++) {
            var newButton = this.buttonsParent.copyWholeHierarchy(buttonExampleSO);
            newButton.enabled = true;
            var newButtonT = newButton.getTransform();
            newButtonT.setLocalRotation(quat.angleAxis(i * -this.angleBetweenButtons, vec3.forward()));
            
            var buttonImg = newButton.getChild(0).getChild(0);
            var buttonImgT = buttonImg.getTransform();
            
            var scale = (script.buttonsNumber <= this.buttonsOnCircle) ? this.selectedButtonSize :
                Math.max(0.1, (this.selectedButtonSize - (script.buttonsNumber - this.buttonsOnCircle) * 0.01));
            buttonImgT.setLocalScale(vec3.one().uniformScale(scale));
            
            this.buttonsImgObj.push(buttonImg);
            this.buttonsImgComp.push(buttonImg.getComponent("Component.Image"));
            buttonImg.getComponent("Component.Image").clearMaterials();
            buttonImg.getComponent("Component.Image").addMaterial(buttonExampleImgSO.getComponent("Component.Image").mainMaterial.clone());
            this.buttonsRotationObj.push(newButton);
            this.buttonsTransforms.push(newButtonT);
        }
    }

    this.onTap = function (ev) {
        this.movingInertion = false;
        var position = ev.position;
        var minDistance = 100;
        var minDistanceIdx = -1;
        this.tapping = true;
        this.buttonsRotationObj.forEach(function(btn, idx) {
            var transform = btn.getChild(0).getTransform();
            var screenPos = script.camera.worldSpaceToScreenSpace(transform.getWorldPosition());
            if (minDistance > screenPos.distance(position)) {
                minDistance = screenPos.distance(position);
                minDistanceIdx = idx;
            }
        });
        this.moveToButton(minDistanceIdx);
    }
    
    this.moveToButton = function(idx) {
        this.selectedButtonIdx = idx;
        this.onSelected();
        this.nearestButtonAngle = idx * this.angleBetweenButtons;
        this.needToCenterButton = true;
        this.tapping = true;
    }
    
    this.setUpRolling = function() {
        touchZone.onTouchMove.add(this.onMoving);
        touchZone.onTouchEnd.add(function() {
            _this.prevTouchPosition = null;
            _this.movingInertion = true;
        }); 
        touchZone.onTap.add(function(ev) {
            _this.onTap(ev);
        });
    }
    
    this.onMoving = function(ev) {
        if (tapHintSo) {
            tapHintSo.enabled = false;
        }
        _this.movingInertion = false;
        _this.needToCenterButton = false;
        
        if (!_this.prevTouchPosition) {
            _this.prevTouchPosition = ev.position;
            return;
        }
        _this.positionDiff = _this.prevTouchPosition.sub(ev.position);
        _this.clockwiseState = _this.getMovingType(_this.positionDiff);
        _this.rouletteAngle += Math.max(Math.abs(_this.positionDiff.x),
            Math.abs(_this.positionDiff.y)) * _this.clockwiseState * 4;
        if (script.buttonsNumber < _this.buttonsOnCircle) {
            _this.rouletteAngle = MathUtils.clamp(_this.rouletteAngle, _this.rouletteLimitMin, _this.rouletteLimitMax);
        }

        _this.rouletteT.setLocalRotation(quat.angleAxis(_this.rouletteAngle, vec3.forward()));
        _this.prevTouchPosition = ev.position;
    }

    this.setCenterPosition = function () {
        this.rouletteCenterPosition = script.camera.worldSpaceToScreenSpace(this.rouletteT.getWorldPosition()); 
    }

    this.getMovingType = function (positionDiff) {
        if (Math.abs(positionDiff.x) > Math.abs(positionDiff.y)) {
            if (_this.prevTouchPosition.x > this.rouletteCenterPosition.x && _this.prevTouchPosition.y < this.rouletteCenterPosition.y ||
                _this.prevTouchPosition.x < this.rouletteCenterPosition.x && _this.prevTouchPosition.y < this.rouletteCenterPosition.y) {
                return (positionDiff.x > 0) ? MovingType.Clockwise : MovingType.CounterClockwise;
            } else {
                return (positionDiff.x < 0) ? MovingType.Clockwise : MovingType.CounterClockwise;
            }
        } else {
            if (_this.prevTouchPosition.x > this.rouletteCenterPosition.x && _this.prevTouchPosition.y < this.rouletteCenterPosition.y ||
                _this.prevTouchPosition.x > this.rouletteCenterPosition.x && _this.prevTouchPosition.y > this.rouletteCenterPosition.y) {
                return (positionDiff.y > 0) ? MovingType.Clockwise : MovingType.CounterClockwise;
            } else {
                return (positionDiff.y < 0) ? MovingType.Clockwise : MovingType.CounterClockwise;
            }
        }
    }
    this.centralizeRoulette = function () {
        if (script.buttonsNumber < this.buttonsOnCircle) {
            if (this.rouletteAngle < 0) {
                this.nearestButtonAngle = 0.0;
            } else {
                this.nearestButtonAngle = Math.min(script.buttonsNumber - 1,
                    Math.round(this.rouletteAngle / this.angleBetweenButtons)) *
                    this.angleBetweenButtons;
            }
        } else {
            this.nearestButtonAngle = Math.round(Math.abs(this.rouletteAngle) /
                this.angleBetweenButtons) * this.angleBetweenButtons *
                (this.rouletteAngle / Math.abs(this.rouletteAngle));
        }
        this.needToCenterButton = true;
    }

    
    this.fitTo = function(sliderMin, sliderMax, effectMin, effectMax, sliderValue) {
        return (sliderValue - sliderMin) * (effectMax - effectMin) / (sliderMax - sliderMin) + effectMin;
    }
    
    //API
    this.addCallbackOnSelection = function(cb) {
        this.onSelectedCb.push(cb);
    }
    
    this.popCallbackOnSelection = function(cb) {
        this.onSelectedCb.pop();
    }

    this.getSelectedButton = function() {
        return this.selectedButtonIdx;
    }
    
    this.init();
}

function enable(so) {
    so.enabled = true;
}

function disable(so) {
    so.enabled = false;
}

var rouletteObj = new Roulette();

//API
script.addCallbackOnSelection = function(cb) {
    rouletteObj.addCallbackOnSelection(cb);
}
script.popCallbackOnSelection = function() {
    return rouletteObj.popCallbackOnSelection();
}
script.moveToButton = function(idx) {
    rouletteObj.moveToButton(idx);
}
script.selectButton = function(idx) {
    rouletteObj.selectButton(idx);
}
script.getSelectedButton = function() {
    return rouletteObj.getSelectedButton();
}


