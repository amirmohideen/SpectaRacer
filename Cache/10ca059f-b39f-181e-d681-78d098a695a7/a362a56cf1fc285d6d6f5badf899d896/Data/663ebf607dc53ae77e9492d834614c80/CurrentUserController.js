"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.CurrentUserController = void 0;
class CurrentUserController {
    constructor() { }
    getDisplayName() {
        return new Promise((resolve) => global.userContextSystem.requestDisplayName(resolve));
    }
    getCurrentUser() {
        return Promise.resolve(null);
    }
}
exports.CurrentUserController = CurrentUserController;
//# sourceMappingURL=CurrentUserController.js.map