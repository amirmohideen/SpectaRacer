"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
exports.GridRearrangement = void 0;
/**
 * Specs Inc. 2026
 * Grid rearrangement utility class that adds drag-and-rearrange functionality to grid layouts.
 * Helper class for enabling interactive grid item reordering with smooth animations.
 */
const InteractableManipulation_1 = require("SpectaclesInteractionKit.lspkg/Components/Interaction/InteractableManipulation/InteractableManipulation");
/**
 * Represents the state of a dragged item
 */
class DragState {
    constructor() {
        this.draggedObject = null;
        this.originalIndex = -1;
        this.originalPositions = [];
        this.isDragging = false;
    }
}
/**
 * Helper class that manages drag-and-rearrange behavior for a GridLayout
 */
class GridRearrangement {
    constructor(gridLayout, scriptComponent, lerpSpeed = 0.8, zOffset = 0, enableLogging = false, dragProximityThreshold = 3) {
        this.children = [];
        this.dragState = new DragState();
        this.lerpSpeed = 0.8;
        this.zOffset = 0; // Z-offset to maintain during rearrangement
        /** Horizontal snap distance (cm); approx. old totalCellSize.x * 0.6 for drag targeting */
        this.dragProximityThreshold = 3;
        this.updateEvent = null;
        this.scriptComponent = null;
        this.enableLogging = false;
        /**
         * Update loop - checks for rearrangement during drag
         */
        this.update = () => {
            if (this.dragState.isDragging) {
                // Clamp dragged object's Z position to prevent clipping
                if (this.dragState.draggedObject) {
                    const draggedPos = this.dragState.draggedObject.getTransform().getLocalPosition();
                    if (draggedPos.z !== this.zOffset) {
                        draggedPos.z = this.zOffset;
                        this.dragState.draggedObject.getTransform().setLocalPosition(draggedPos);
                    }
                }
                this.checkForRearrangement();
            }
        };
        this.gridLayout = gridLayout;
        this.scriptComponent = scriptComponent;
        this.lerpSpeed = lerpSpeed;
        this.zOffset = zOffset;
        this.enableLogging = enableLogging;
        this.dragProximityThreshold = dragProximityThreshold;
        // Create update event to check for rearrangement
        this.updateEvent = scriptComponent.createEvent("UpdateEvent");
        this.updateEvent.bind(this.update);
    }
    /**
     * Initialize drag interactions for all children
     */
    setupDragInteractions(children) {
        this.children = children;
        if (this.enableLogging) {
            print(`GridRearrangement: Setting up drag interactions for ${children.length} children`);
        }
        children.forEach((child, index) => {
            // Get InteractableManipulation component from child
            const manipComponent = child.getComponent(InteractableManipulation_1.InteractableManipulation.getTypeName());
            if (manipComponent && manipComponent.onManipulationStart) {
                // Add manipulation event listeners
                manipComponent.onManipulationStart.add(() => {
                    this.startDrag(child, index);
                });
                manipComponent.onManipulationEnd.add(() => {
                    this.endDrag();
                });
                if (this.enableLogging) {
                    print(`  ✓ Connected drag events for child ${index}`);
                }
            }
            else if (this.enableLogging) {
                print(`  ⚠️  No InteractableManipulation component found on child ${index}`);
            }
        });
    }
    /**
     * Starts dragging the specified child object
     */
    startDrag(child, originalIndex) {
        if (this.enableLogging) {
            print(`GridRearrangement: Starting drag for child at index ${originalIndex}`);
        }
        // Store all current local positions
        this.dragState.originalPositions = [];
        for (let i = 0; i < this.children.length; i++) {
            this.dragState.originalPositions.push(this.children[i].getTransform().getLocalPosition());
        }
        this.dragState.draggedObject = child;
        this.dragState.originalIndex = originalIndex;
        this.dragState.isDragging = true;
    }
    /**
     * Ends the dragging operation
     */
    endDrag() {
        if (!this.dragState.isDragging || !this.dragState.draggedObject)
            return;
        if (this.enableLogging) {
            print("GridRearrangement: Ending drag");
        }
        // Find closest grid position
        const draggedPos = this.dragState.draggedObject.getTransform().getLocalPosition();
        let closestIndex = 0;
        let closestDistance = Number.MAX_VALUE;
        for (let i = 0; i < this.children.length; i++) {
            if (this.children[i] === this.dragState.draggedObject)
                continue;
            const distance = draggedPos.distance(this.dragState.originalPositions[i]);
            if (distance < closestDistance) {
                closestDistance = distance;
                closestIndex = i;
            }
        }
        // Rearrange the children array
        const draggedChild = this.children.splice(this.dragState.originalIndex, 1)[0];
        this.children.splice(closestIndex, 0, draggedChild);
        // Update parent's children order by reparenting
        this.updateChildrenOrder();
        // Layout the grid with new order
        this.gridLayout.layout();
        // Restore Z offset from original positions (GridLayout resets Z to 0)
        for (let i = 0; i < this.children.length; i++) {
            const currentPos = this.children[i].getTransform().getLocalPosition();
            const originalZ = this.dragState.originalPositions[i].z;
            this.children[i].getTransform().setLocalPosition(new vec3(currentPos.x, currentPos.y, originalZ));
        }
        // Reset drag state
        this.dragState.isDragging = false;
        this.dragState.draggedObject = null;
        this.dragState.originalIndex = -1;
        this.dragState.originalPositions = [];
        if (this.enableLogging) {
            print("GridRearrangement: Drag ended successfully");
        }
    }
    /**
     * Update the actual scene object children order to match internal array
     */
    updateChildrenOrder() {
        const parent = this.gridLayout.sceneObject;
        // Detach all children
        const tempChildren = [...this.children];
        tempChildren.forEach(child => {
            child.setParent(null);
        });
        // Reattach in new order
        this.children.forEach(child => {
            child.setParent(parent);
        });
    }
    /**
     * Check if other elements should be rearranged based on dragged object position
     */
    checkForRearrangement() {
        if (!this.dragState.draggedObject)
            return;
        const draggedPos = this.dragState.draggedObject.getTransform().getLocalPosition();
        // Find which original position this dragged object is closest to
        let closestIndex = 0;
        let closestDistance = Number.MAX_VALUE;
        for (let i = 0; i < this.dragState.originalPositions.length; i++) {
            if (i === this.dragState.originalIndex)
                continue;
            const distance = draggedPos.distance(this.dragState.originalPositions[i]);
            if (distance < closestDistance) {
                closestDistance = distance;
                closestIndex = i;
            }
        }
        // Use threshold based on cell size
        const threshold = this.dragProximityThreshold;
        if (closestDistance < threshold) {
            this.rearrangeOthersForDrag(closestIndex);
        }
    }
    /**
     * Rearrange other elements to make space for the dragged item
     */
    rearrangeOthersForDrag(targetIndex) {
        for (let i = 0; i < this.children.length; i++) {
            if (this.children[i] === this.dragState.draggedObject)
                continue;
            let newIndex = i;
            // Determine where this item should move
            if (this.dragState.originalIndex < targetIndex) {
                // Dragging forward - shift items back
                if (i > this.dragState.originalIndex && i <= targetIndex) {
                    newIndex = i - 1;
                }
            }
            else {
                // Dragging backward - shift items forward
                if (i >= targetIndex && i < this.dragState.originalIndex) {
                    newIndex = i + 1;
                }
            }
            // Clamp to valid range
            newIndex = Math.max(0, Math.min(this.dragState.originalPositions.length - 1, newIndex));
            // Move to the new position smoothly (preserving Z offset)
            const targetPos = this.dragState.originalPositions[newIndex];
            const currentPos = this.children[i].getTransform().getLocalPosition();
            const newPos = vec3.lerp(currentPos, targetPos, this.lerpSpeed);
            // Preserve Z offset to prevent clipping with frame
            newPos.z = this.zOffset;
            this.children[i].getTransform().setLocalPosition(newPos);
        }
    }
    /**
     * Apply Z offset to all children to prevent clipping with frame
     */
    applyZOffset() {
        for (let i = 0; i < this.children.length; i++) {
            const currentPos = this.children[i].getTransform().getLocalPosition();
            this.children[i].getTransform().setLocalPosition(new vec3(currentPos.x, currentPos.y, this.zOffset));
        }
    }
    /**
     * Cleanup method to remove event listeners
     */
    destroy() {
        if (this.updateEvent) {
            this.updateEvent.enabled = false;
        }
    }
}
exports.GridRearrangement = GridRearrangement;
//# sourceMappingURL=GridRearrangement.js.map