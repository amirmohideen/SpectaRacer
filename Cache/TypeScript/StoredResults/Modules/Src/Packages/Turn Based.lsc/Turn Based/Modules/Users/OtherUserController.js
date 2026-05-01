"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.OtherUserController = void 0;
class OtherUserController {
    constructor(logger) {
        this.logger = logger;
        this.resolveOtherUser = () => { };
        this.otherUserPromise = new Promise((resolve) => this.resolveOtherUser = resolve);
    }
    setOtherUser(uriResource) {
        if (uriResource) {
            this.loadUserFromUriResource(uriResource, (user) => {
                this.logger.logInfo("Other user loaded successfully");
                this.resolveOtherUser(user);
            }, (error) => {
                this.logger.logError("Error while loading other user: " + error);
                this.resolveOtherUser(null);
            });
        }
        else {
            this.logger.logInfo("No other user resource provided.");
            this.resolveOtherUser(null);
        }
    }
    getOtherUser() {
        return new Promise((resolve, reject) => this.otherUserPromise.then((user) => !!user
            ? resolve(user)
            : reject(new Error("Could not get other user."))));
    }
    async getDisplayName() {
        const user = await this.otherUserPromise;
        return user && user.displayName ? user.displayName : "";
    }
    loadUserFromUriResource(uriResource, onSuccess, onError) {
        global.userContextSystem.loadResourceAsSnapchatUser(uriResource, (user) => onSuccess(user), (error) => onError(error));
    }
}
exports.OtherUserController = OtherUserController;
//# sourceMappingURL=OtherUserController.js.map