"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.RemoteAPIWrapper = void 0;
const RemoteAPIError_1 = require("./RemoteAPIError");
class RemoteAPIWrapper {
    constructor(remoteServiceModule) {
        this.remoteServiceModule = remoteServiceModule;
    }
    doAPIRequest(request, onComplete, onError) {
        this.remoteServiceModule.performApiRequest(request, (resp) => {
            if (resp.statusCode == 1) {
                if (onComplete) {
                    onComplete(resp.body, resp);
                }
            }
            else {
                const error = RemoteAPIError_1.RemoteServiceError.createFromResponse(resp, "Error calling " + request.endpoint + ":");
                if (onError) {
                    onError(error);
                }
                else {
                    print((0, RemoteAPIError_1.makeNetworkErrorMessage)(error.bodyText, error.statusCode));
                }
            }
        });
    }
}
exports.RemoteAPIWrapper = RemoteAPIWrapper;
//# sourceMappingURL=RemoteAPIWrapper.js.map