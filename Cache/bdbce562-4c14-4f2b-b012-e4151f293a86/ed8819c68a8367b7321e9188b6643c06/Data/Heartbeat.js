// Heartbeat.js

// Event: On Awake

// Description: Heartbeat is a runtime manager that adds event layers, lets you easily start, stop, and replace update and delay events, and adds universal pause/play

if (global.Heartbeat == null) {
    global.Heartbeat = script;
    global.Heartbeat.instances = {};
    global.Heartbeat.instance = 0;
    
    function onUpdate() {
        var instanceKeys = Object.keys(global.Heartbeat.instances);
        
        for (var u = instanceKeys.length-1;u >= 0;u--) {
            var instance = global.Heartbeat.instances[instanceKeys[u]];
            
            if (isNull(instance)) {
                delete global.Heartbeat.instances[instanceKeys[u]];
                continue;
            }            
            
            for (var i = 0; i < instance.k.length;i++) {
                instance.updateCalls[instance.k[i]]();
            }
        }
    }

    var updateEvent = script.createEvent("UpdateEvent");
    updateEvent.bind(onUpdate);
    
    function onPhysicsUpdate() {
        var instanceKeys = Object.keys(global.Heartbeat.instances);
        
        for (var u = instanceKeys.length-1;u >= 0;u--) {
            var instance = global.Heartbeat.instances[instanceKeys[u]];
            
            if (isNull(instance)) {
                delete global.Heartbeat.instances[instanceKeys[u]];
                continue;
            }            
            
            for (var i = 0; i < instance.pk.length;i++) {
                instance.physicsUpdateCalls[instance.pk[i]]();
            }
        }
    }
    
    var physicsUpdateEvent = script.createEvent("LateUpdateEvent");
    physicsUpdateEvent.bind(onPhysicsUpdate);
    
    var play = function (layer) {
        var instanceKeys = Object.keys(global.Heartbeat.instances);
        for (var i = 0; i < instanceKeys.length;i++) {
            if (!isNull(global.Heartbeat.instances[instanceKeys[i]]) && (!layer || instanceKeys[i].startsWith(layer))) {
                global.Heartbeat.instances[instanceKeys[i]].resumeUpdates();
                if (global.Heartbeat.instances[instanceKeys[i]].onResume)
                    global.Heartbeat.instances[instanceKeys[i]].onResume()
            }
        }
    }
    
    var pause = function (layer) {
        var instanceKeys = Object.keys(global.Heartbeat.instances);
        for (var i = 0; i < instanceKeys.length;i++) {
            if (!isNull(global.Heartbeat.instances[instanceKeys[i]]) && (!layer || instanceKeys[i].startsWith(layer))) {
                global.Heartbeat.instances[instanceKeys[i]].pauseUpdates();
                if (global.Heartbeat.instances[instanceKeys[i]].onPause)
                    global.Heartbeat.instances[instanceKeys[i]].onPause()
            }
        }
    }
    
    var clearAllEvents = function (layer) {
        var instanceKeys = Object.keys(global.Heartbeat.instances);
        for (var i = 0; i < instanceKeys.length;i++) {
            if (!isNull(global.Heartbeat.instances[instanceKeys[i]]) && (!layer || instanceKeys[i].startsWith(layer)))
                global.Heartbeat.instances[instanceKeys[i]].clearEvents();
        }
    }
    
    script.add = function (objScript, layer) {
        objScript.hasHeartbeat = true;
        objScript.layer = layer;
        objScript.updateCalls = {};
        objScript.k = [];
        objScript.physicsUpdateCalls = {};
        objScript.pk = [];
        objScript.initCalls = [];
        objScript.delayCalls = {};
        objScript.dk = [];
        objScript.paused = false;

        objScript.onStart = function () {
            for (var i = 0; i < objScript.initCalls.length; i++) {
                objScript.initCalls[i](objScript);
            }
            objScript.initCalls = null;
        };

        objScript.addUpdate = function (tag, callback) {
            objScript.updateCalls[tag] = function () { if (!objScript.paused) callback(); };
            objScript.k = Object.keys(objScript.updateCalls);
        };

        objScript.removeUpdate = function (tag) {
            if (objScript.k.indexOf(tag) != -1) {
                delete objScript.updateCalls[tag];
                objScript.k = Object.keys(objScript.updateCalls);
            }
        };

        objScript.eventExists = function (tag) {
            return objScript.updateCalls[tag];
        };

        objScript.pauseUpdates = function () {
            objScript.paused = true;

            if (!objScript.physicsBody)
                objScript.physicsBody = objScript.getSceneObject().getComponent("Physics.BodyComponent");

            if (objScript.physicsBody)
                objScript.physicsBody.enabled = false;

            for (var i = 0; i < objScript.dk.length; i++) {
                objScript.delayCalls[objScript.dk[i]].tl = objScript.delayCalls[objScript.dk[i]].getTimeLeft();
                objScript.delayCalls[objScript.dk[i]].reset(99999);
            }
        };

        objScript.resumeUpdates = function () {
            objScript.paused = false;

            if (objScript.physicsBody) {
                objScript.physicsBody.enabled = true;
            }

            for (var i = 0; i < objScript.dk.length; i++) {
                if (objScript.delayCalls[objScript.dk[i]].tl)
                    objScript.delayCalls[objScript.dk[i]].reset(objScript.delayCalls[objScript.dk[i]].tl);
            }
        };

        objScript.addInit = function (callback) {
            objScript.initCalls.push(callback);
        };

        objScript.addDelay = function (tag, time, callback, repeat) {
            if (!objScript.delayCalls[tag]) {
                objScript.delayCalls[tag] = objScript.createEvent("DelayedCallbackEvent");
                objScript.dk = Object.keys(objScript.delayCalls);
            }
            if (repeat) {
                objScript.delayCalls[tag].bind(function () {
                    callback(repeat);
                    repeat--;
                    if (repeat > 0)
                        objScript.delayCalls[tag].reset(time);
                    else
                        objScript.removeDelay(tag);
                });
                objScript.delayCalls[tag].reset(0);
            } else {
                objScript.delayCalls[tag].bind(function () {
                    objScript.removeDelay(tag);
                    callback();
                });
                objScript.delayCalls[tag].reset(time);
            }
        };

        objScript.removeDelay = function (tag) {
            var x = objScript.dk.indexOf(tag);

            if (!objScript.delayCalls[tag])
                return;

            objScript.removeEvent(objScript.delayCalls[tag]);

            delete objScript.delayCalls[tag];
            objScript.dk = Object.keys(objScript.delayCalls);
        };

        objScript.addPhysicsUpdate = function (tag, callback) {
            objScript.physicsUpdateCalls[tag] = function () { if (!objScript.paused) callback(); };
            objScript.pk = Object.keys(objScript.physicsUpdateCalls);
        };

        objScript.removePhysicsUpdate = function (tag) {
            if (objScript.pk.indexOf(tag) != -1) {
                delete objScript.physicsUpdateCalls[tag];
                objScript.pk = Object.keys(objScript.physicsUpdateCalls);
            }
        };

        objScript.clearEvents = function () {
            objScript.updateCalls = {};
            objScript.physicsUpdateCalls = {};
            objScript.k = [];
            objScript.pk = [];
            objScript.initCalls = [];
            for (var d = objScript.dk.length - 1; d >= 0; d--) {
                objScript.removeEvent(objScript.delayCalls[objScript.dk[d]]);
            }
            objScript.dk = [];
            objScript.delayCalls = {};
        };

        if (objScript.enabled) {
            var myInstance = (global.Heartbeat.instance++).toString();
            var key = (objScript.layer ? (objScript.layer + "_") : "") + myInstance;
            global.Heartbeat.instances[key] = objScript;
        }

        objScript.initEvent = objScript.createEvent("DelayedCallbackEvent");
        objScript.initEvent.bind(objScript.onStart);
        objScript.initEvent.reset(0.01);

        objScript.createEvent("OnDestroyEvent").bind(function () {
            delete global.Heartbeat.instances[myInstance];
        });
    }
    script.play = play;
    script.pause = pause;
    script.clearAllEvents = clearAllEvents;
}
