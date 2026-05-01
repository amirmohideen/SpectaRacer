/**
 * Specs Inc. 2026
 * Modified from BillboardTS (Solvers.lspkg): tracks target in the XY plane (Z-axis rotation)
 * instead of the XZ plane (Y-axis rotation).
 */
import { bindStartEvent, bindUpdateEvent } from "SnapDecorators.lspkg/decorators";
import { Logger } from "Utilities.lspkg/Scripts/Utils/Logger";

@component
export class BillboardTS_Modified extends BaseScriptComponent {
    @ui.separator
    @ui.label('<span style="color: #60A5FA;">Billboard Configuration</span>')
    @ui.label('<span style="color: #94A3B8; font-size: 11px;">Target selection and orientation settings</span>')

    @input
    @allowUndefined
    @hint("Is billboard looking at default direction or opposite?")
    lookAway: boolean = true;

    @input
    @allowUndefined
    @hint("Override default target mainCamera with your target")
    target!: SceneObject;

    @ui.separator
    @ui.label('<span style="color: #60A5FA;">Logging Configuration</span>')
    @ui.label('<span style="color: #94A3B8; font-size: 11px;">Control logging output for this script instance</span>')

    @input
    @hint("Enable general logging (operations, events, etc.)")
    enableLogging: boolean = false;

    @input
    @hint("Enable lifecycle logging (onAwake, onStart, onUpdate, onDestroy, etc.)")
    enableLoggingLifecycle: boolean = false;

    private logger: Logger;

    private _targetRotation: quat = new quat(0, 0, 0, 1);
    private _lookDir: vec3 = new vec3(0, 0, 0);

    onAwake(): void {
        const shouldLog = this.enableLogging || this.enableLoggingLifecycle;
        this.logger = new Logger("BillboardTS_Modified", shouldLog, true);

        if (this.enableLoggingLifecycle) {
            this.logger.header("BillboardTS_Modified Initialization");
            this.logger.debug("LIFECYCLE: onAwake() - Component waking up");
        }
    }

    @bindStartEvent
    onStart(): void {
        this.billboarding(); // or manually set a desired initial rotation
        if (this.enableLoggingLifecycle) {
            this.logger.debug("LIFECYCLE: onStart() - Scene started");
        }
    }

    @bindUpdateEvent
    onUpdate(): void {
        if (this.enableLoggingLifecycle) {
            this.logger.debug("LIFECYCLE: onUpdate() - Update event");
        }

        this.billboarding();
    }

    billboarding(): void {
        if (!this.target) return;

        const myPosition = this.sceneObject.getTransform().getWorldPosition();
        const targetPosition = this.target.getTransform().getWorldPosition();

        // Project onto the XY plane (zero out Z) so only X and Y offsets drive rotation
        this._lookDir = new vec3(
            targetPosition.x - myPosition.x,
            targetPosition.y - myPosition.y,
            0
        ).normalize();

        if (this.lookAway) {
            this._lookDir.x *= -1;
            this._lookDir.y *= -1;
        }

        // Angle in the XY plane; rotate around the Z axis
        const angle = Math.atan2(this._lookDir.y, this._lookDir.x);
        this._targetRotation = quat.fromEulerAngles(0, 0, angle);

        const currentRotation = this.sceneObject.getTransform().getWorldRotation();

        const newRotation = quat.slerp(
            currentRotation,
            this._targetRotation,
            getDeltaTime() * 5
        );

        this.sceneObject.getTransform().setWorldRotation(newRotation);
    }
}
