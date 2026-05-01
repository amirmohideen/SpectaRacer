"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.TappablesController = void 0;
const Turn_Based_1 = require("../../Turn Based");
const TappablesWatcher_1 = require("./TappablesWatcher");
const TappablesValidator_1 = require("./TappablesValidator");
class TappablesController {
    constructor(logger, tappableAreas) {
        this.logger = logger;
        this.tappableAreas = tappableAreas;
        this.isGameOver = false;
        this.tappablesValidator = new TappablesValidator_1.TappablesValidator(this.logger);
        this.watcher = new TappablesWatcher_1.TappablesWatcher(this.logger, () => this.getTappableAreasInputToSubmit());
    }
    wasModified() {
        return this.watcher.update();
    }
    setIsGameOver(isGameOver) {
        this.isGameOver = isGameOver;
    }
    getTappableAreasInput() {
        return this.tappableAreas;
    }
    setTappableAreasInput(tappableAreas) {
        this.tappableAreas = tappableAreas;
    }
    addTappableArea(key, st) {
        const index = this.tappableAreas.findIndex((tappableArea) => !!tappableArea && tappableArea.key === key);
        if (index >= 0) {
            this.logger.logWarning("Warning: tappable area with key \"" + key + "\" already exists! Overriding tappable area");
            this.tappableAreas[index].screenTransform = st;
        }
        else {
            const tappableArea = new Turn_Based_1.TappableAreaInput();
            tappableArea.key = key;
            tappableArea.screenTransform = st;
            this.tappableAreas.push(tappableArea);
        }
    }
    removeTappableArea(key) {
        const index = this.tappableAreas.findIndex((tappableArea) => !!tappableArea && tappableArea.key === key);
        if (index >= 0) {
            this.tappableAreas.splice(index, 1);
        }
    }
    clearTappableAreas() {
        this.tappableAreas.splice(0, this.tappableAreas.length);
    }
    getTappableAreaConfig() {
        const tappableAreas = this.tappablesValidator.validateTappablesCount(this.getTappableAreasInputToSubmit());
        return this.tappablesValidator.validateTotalCoverage(tappableAreas
            .map((area) => this.getTappableConfigForScreenTransform(area.screenTransform, area.key))
            .filter((val) => !!val)
            .filter((area) => this.tappablesValidator.validateTappableConfig(area)));
    }
    getTappableAreasInputToSubmit() {
        if (this.isGameOver) {
            return [];
        }
        else {
            return this.tappableAreas.filter((area) => !isNull(area.screenTransform)
                && area.screenTransform.enabled
                && area.screenTransform.getSceneObject().enabled
                && area.screenTransform.getSceneObject().isEnabledInHierarchy);
        }
    }
    getTappableConfigForScreenTransform(st, key = "") {
        if (!st) {
            return { key };
        }
        // Get screen pos
        let screenPos;
        try {
            screenPos = st.localPointToScreenPoint(vec2.zero());
        }
        catch (e) {
            this.logger.logError("Error while calling localPointToScreenPoint of tappable screen transform : " + e.message);
            return null;
        }
        // Get rotation angle
        const tr = st.getTransform();
        const up = tr.right;
        const angle = -Math.atan2(up.y, up.x);
        const angleInDegrees = Math.round(MathUtils.RadToDeg * angle);
        // Get relative width and height
        const originalRotation = tr.getWorldRotation();
        tr.setWorldRotation(quat.quatIdentity());
        let p1, p2;
        try {
            p1 = st.localPointToScreenPoint(new vec2(-1, 1));
            p2 = st.localPointToScreenPoint(new vec2(1, -1));
        }
        catch (e) {
            this.logger.logError("Error while calling localPointToScreenPoint of tappable screen transform : " + e.message);
            return null;
        }
        const size = p2.sub(p1);
        tr.setWorldRotation(originalRotation);
        return {
            key: key,
            rotationDegrees: angleInDegrees,
            normalizedX: screenPos.x,
            normalizedY: screenPos.y,
            normalizedWidth: size.x,
            normalizedHeight: size.y,
        };
    }
}
exports.TappablesController = TappablesController;
//# sourceMappingURL=TappablesController.js.map