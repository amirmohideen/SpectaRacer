"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.ApiController = void 0;
const RemoteAPIWrapper_1 = require("./RemoteAPIWrapper");
const RemoteAPIError_1 = require("./RemoteAPIError");
const ENDPOINT_SET_PROMPT_DATA = "set_prompt_data";
const ENDPOINT_GET_PROMPT_DATA = "get_prompt_data";
const PAYLOAD_TOTAL_SIZE_LIMIT_BYTES = 4 * 1024 * 1024;
class ApiController {
    constructor(remoteServiceModule, logger) {
        this.remoteServiceModule = remoteServiceModule;
        this.logger = logger;
        this.apiWrapper = new RemoteAPIWrapper_1.RemoteAPIWrapper(this.remoteServiceModule);
    }
    requestCompliesWithSizeLimits(associatedData, tappables, score, isComplete) {
        return this.createSetPromptDataRequestBody(associatedData, tappables, score, isComplete).length < PAYLOAD_TOTAL_SIZE_LIMIT_BYTES;
    }
    setPromptData(associatedData, tappables, score, isComplete, onSuccess, onFailure) {
        const onSuccessRunOnce = () => {
            onSuccess && onSuccess();
            onSuccess = null;
        };
        if (!this.remoteServiceModule) {
            onFailure();
            return;
        }
        const request = RemoteApiRequest.create();
        request.endpoint = ENDPOINT_SET_PROMPT_DATA;
        request.body = this.createSetPromptDataRequestBody(associatedData, tappables, score, isComplete);
        if (request.body.length > PAYLOAD_TOTAL_SIZE_LIMIT_BYTES) {
            this.logger.logError("Total payload size exceeds limits");
            onFailure();
            return;
        }
        try {
            this.apiWrapper.doAPIRequest(request, () => {
                this.logger.logInfo("Prompt data successfully sent.");
                onSuccessRunOnce();
            }, (error) => {
                this.logger.logError("Failed to set prompt data: " + (0, RemoteAPIError_1.makeNetworkErrorMessage)(error.bodyText, error.statusCode));
                onFailure();
            });
            if (global.deviceInfoSystem.isEditor()) {
                // in editor response is never received, skip waiting for doAPIRequest response
                onSuccessRunOnce();
            }
        }
        catch (error) {
            this.logger.logError("Error while sending set prompt data request: " + error.message);
            onFailure();
        }
    }
    getPromptData() {
        if (!this.remoteServiceModule) {
            return Promise.resolve(null);
        }
        return new Promise((resolve) => {
            const request = RemoteApiRequest.create();
            request.endpoint = ENDPOINT_GET_PROMPT_DATA;
            try {
                this.apiWrapper.doAPIRequest(request, (responseBody, response) => {
                    let body = null;
                    try {
                        body = JSON.parse(responseBody);
                    }
                    catch (error) {
                        this.logger.logError("Error while parsing get prompt data response body: " + error.message);
                    }
                    const associatedData = body?.associatedData;
                    const otherUser = response.uriResources?.[0];
                    this.logger.logInfo("Prompt data responseBody : " + responseBody);
                    resolve({ associatedData, otherUser });
                }, (error) => {
                    this.logger.logError("Failed to get prompt data : " + (0, RemoteAPIError_1.makeNetworkErrorMessage)(error.bodyText, error.statusCode));
                    resolve({ associatedData: null, otherUser: null });
                });
            }
            catch (e) {
                this.logger.logError("Error : " + e.message);
            }
        });
    }
    createSetPromptDataRequestBody(associatedData, tappables, score, isComplete) {
        try {
            const bodyData = {
                ...(score != null ? { score: score } : {}),
                associatedData,
                tappables,
                isComplete,
            };
            return JSON.stringify(bodyData);
        }
        catch (error) {
            this.logger.logError("Error while serializing prompt data request body : " + error.message);
            return JSON.stringify({});
        }
    }
}
exports.ApiController = ApiController;
//# sourceMappingURL=ApiController.js.map