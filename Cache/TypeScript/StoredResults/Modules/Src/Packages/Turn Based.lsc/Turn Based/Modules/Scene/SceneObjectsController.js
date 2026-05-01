"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.SceneObjectsController = void 0;
const Helpers_1 = require("../Helpers/Helpers");
class SceneObjectsController {
    constructor(_user1FlowObjectsSO, _user2FlowObjectsSO, _gameOverObjectsSO) {
        this._user1FlowObjectsSO = _user1FlowObjectsSO;
        this._user2FlowObjectsSO = _user2FlowObjectsSO;
        this._gameOverObjectsSO = _gameOverObjectsSO;
        this.areUser1FlowObjectsEnabled = false;
        this.areUser2FlowObjectsEnabled = false;
        this.areGameOverObjectsEnabled = false;
        this.onStateUpdated();
    }
    initialize(index) {
        this.areUser1FlowObjectsEnabled = index === 0;
        this.areUser2FlowObjectsEnabled = !this.areUser1FlowObjectsEnabled;
        this.areGameOverObjectsEnabled = false;
        this.onStateUpdated();
    }
    onGameOver() {
        this.areGameOverObjectsEnabled = true;
        this.onStateUpdated();
    }
    get user1FlowObjects() {
        return this._user1FlowObjectsSO;
    }
    set user1FlowObjects(objects) {
        this._user1FlowObjectsSO = objects;
        this.onStateUpdated();
    }
    get user2FlowObjects() {
        return this._user2FlowObjectsSO;
    }
    set user2FlowObjects(objects) {
        this._user2FlowObjectsSO = objects;
        this.onStateUpdated();
    }
    get gameOverObjects() {
        return this._gameOverObjectsSO;
    }
    set gameOverObjects(objects) {
        this._gameOverObjectsSO = objects;
        this.onStateUpdated();
    }
    onStateUpdated() {
        this._user1FlowObjectsSO.forEach(this.areUser1FlowObjectsEnabled ? Helpers_1.enable : Helpers_1.disable);
        this._user2FlowObjectsSO.forEach(this.areUser2FlowObjectsEnabled ? Helpers_1.enable : Helpers_1.disable);
        this._gameOverObjectsSO.forEach(this.areGameOverObjectsEnabled ? Helpers_1.enable : Helpers_1.disable);
    }
}
exports.SceneObjectsController = SceneObjectsController;
//# sourceMappingURL=SceneObjectsController.js.map