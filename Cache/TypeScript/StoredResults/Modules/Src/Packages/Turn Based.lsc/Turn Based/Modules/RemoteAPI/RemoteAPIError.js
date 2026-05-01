"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.RemoteServiceError = void 0;
exports.makeNetworkErrorMessage = makeNetworkErrorMessage;
exports.getMessageForStatusCode = getMessageForStatusCode;
class RemoteServiceError extends Error {
    constructor(bodyText, errorCode, prefix) {
        const fullMessage = makeNetworkErrorMessage(bodyText, errorCode, prefix);
        super(fullMessage);
        this.statusCode = errorCode;
        this.bodyText = bodyText;
    }
    static createFromResponse(response, prefix) {
        return new RemoteServiceError(response.body, response.statusCode, prefix);
    }
}
exports.RemoteServiceError = RemoteServiceError;
function makeNetworkErrorMessage(errorMessage, statusCode, prefix) {
    let ret = prefix || "Error";
    if (!isNull(statusCode)) {
        ret += " " + getMessageForStatusCode(statusCode);
    }
    return ret + ": " + errorMessage;
}
function getMessageForStatusCode(errorNumber) {
    // https://docs.snap.com/api/lens-studio/Classes/ScriptObjects/#RemoteApiResponse--statusCode
    switch (errorNumber) {
        // case 0: return "Unknown Status Code";
        case 1:
            return "Success";
        case 2:
            return "Redirected";
        case 3:
            return "Bad Request";
        case 4:
            return "Access Denied";
        case 5:
            return "Api Call Not Found";
        case 6:
            return "Timeout";
        case 7:
            return "Request Too Large";
        case 8:
            return "Server Processing Error";
        case 9:
            return "Request cancelled by caller";
        case 10:
            return "Internal: Framework Error";
    }
    return "Unknown Status Code " + errorNumber;
}
//# sourceMappingURL=RemoteAPIError.js.map