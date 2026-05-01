"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.Watcher = void 0;
const Event_1 = require("./Event");
class Watcher {
    constructor(getter) {
        this.getter = getter;
        this.onUpdate = new Event_1.Event();
        this.data = null;
        this._comparator = (value) => this.data === value;
    }
    getData() {
        return this.data;
    }
    update() {
        const updatedData = this.getter();
        if (!this._comparator(updatedData)) {
            this.data = updatedData;
            this.onUpdate.trigger();
            return true;
        }
        return false;
    }
}
exports.Watcher = Watcher;
//# sourceMappingURL=Watcher.js.map