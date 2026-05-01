"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TappablesWatcher = void 0;
const Watcher_1 = require("../Helpers/Watcher");
const CHECK_POINTS = [new vec2(-1.0, -1.0), new vec2(1.0, 1.0)];
class TappablesWatcher extends Watcher_1.Watcher {
    constructor(logger, getter) {
        super(() => {
            return getter()
                .map((area) => {
                try {
                    return [
                        area.key,
                        area.screenTransform.localPointToScreenPoint(CHECK_POINTS[0]),
                        area.screenTransform.localPointToScreenPoint(CHECK_POINTS[1]),
                    ].toString();
                }
                catch (error) {
                    logger.logError("Error while calling localPointToScreenPoint of tappable screen transform : " + error.message);
                    return null;
                }
            })
                .sort()
                .toString();
        });
    }
}
exports.TappablesWatcher = TappablesWatcher;
//# sourceMappingURL=TappablesWatcher.js.map