"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.enable = enable;
exports.disable = disable;
exports.getUserDefinedGameVariablesMapFromInputs = getUserDefinedGameVariablesMapFromInputs;
exports.assertNever = assertNever;
function enable(so) {
    if (!isNull(so)) {
        so.enabled = true;
    }
}
function disable(so) {
    if (!isNull(so)) {
        so.enabled = false;
    }
}
function getUserDefinedGameVariablesMapFromInputs(inputs) {
    const getValue = (input) => {
        switch (input.type) {
            case "string":
                return input.valueString;
            case "float":
                return input.valueFloat;
            case "boolean":
                return input.valueBoolean;
        }
    };
    const map = {};
    inputs.forEach((input) => map[input.key] = getValue(input));
    return map;
}
function assertNever(value) {
    throw new Error(`Unexpected value: ${value}`);
}
//# sourceMappingURL=Helpers.js.map