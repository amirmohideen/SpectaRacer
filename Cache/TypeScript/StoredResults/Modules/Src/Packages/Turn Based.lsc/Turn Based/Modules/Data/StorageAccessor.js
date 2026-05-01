"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.StorageAccessor = void 0;
class StorageAccessor {
    constructor(variablesPromise) {
        this.variablesPromise = variablesPromise;
        this.wasDataChanged = false;
    }
    async getVariable(key) {
        return (await this.variablesPromise)[key];
    }
    async setVariable(key, value) {
        const variables = await this.variablesPromise;
        if (typeof value === "object") {
            this.wasDataChanged = true;
        }
        else if (value !== (await this.variablesPromise)[key]) {
            this.wasDataChanged = true;
        }
        variables[key] = value;
    }
    async getAllVariables() {
        return await this.variablesPromise;
    }
    async clearAllVariables() {
        const variables = await this.variablesPromise;
        if (Object.keys(variables).length > 0) {
            this.wasDataChanged = true;
        }
        for (const key in variables) {
            delete variables[key];
        }
    }
}
exports.StorageAccessor = StorageAccessor;
//# sourceMappingURL=StorageAccessor.js.map