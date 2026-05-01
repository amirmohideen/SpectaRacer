"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.LoggerConfig = exports.Logger = void 0;
const OnScreenLogger_1 = require("./OnScreenLogger");
class Logger {
    constructor(config, prefix) {
        this.config = config;
        this.prefix = prefix;
        this.printInfoLogs = config.printInfoLogs;
        if (config.printOnScreen) {
            this.onScreenLogger = OnScreenLogger_1.OnScreenLogger.getInstance();
            this.onScreenLogger.fontSize = config.fontSize;
        }
    }
    logError(message) {
        if (this.config.printErrors) {
            const withPrefix = "❌ " + this.withPrefix(message);
            print(withPrefix);
            this.onScreenLogger?.log(withPrefix);
        }
    }
    logWarning(message) {
        if (this.config.printWarnings) {
            const withPrefix = "⚠️ " + this.withPrefix(message);
            print(withPrefix);
            this.onScreenLogger?.log(withPrefix);
        }
    }
    logInfo(message) {
        if (this.printInfoLogs) {
            const withPrefix = "ℹ️ " + this.withPrefix(message);
            print(withPrefix);
            this.onScreenLogger?.log(withPrefix);
        }
    }
    withPrefix(message) {
        return "[" + this.prefix + "] " + message;
    }
}
exports.Logger = Logger;
class LoggerConfig {
    constructor() {
        this.printOnScreen = true;
        this.fontSize = 12;
        this.printErrors = true;
        this.printWarnings = true;
        this.printInfoLogs = false;
    }
}
exports.LoggerConfig = LoggerConfig;
(function (LoggerConfig) {
    LoggerConfig.mock = {
        printOnScreen: false,
        fontSize: 12,
        printErrors: false,
        printWarnings: false,
        printInfoLogs: false,
    };
})(LoggerConfig || (exports.LoggerConfig = LoggerConfig = {}));
//# sourceMappingURL=Logger.js.map