"use strict";
/**
 * Tree structure utilities for diagram/mind-map layout. Used by DiagramComponent.
 */
Object.defineProperty(exports, "__esModule", { value: true });
exports.TreeStructureUtils = void 0;
class TreeStructureUtils {
    static findNodesNeedingYSeparation(nodes, minXDistance) {
        const conflicts = [];
        const arr = Array.from(nodes.values());
        for (let i = 0; i < arr.length; i++) {
            for (let j = i + 1; j < arr.length; j++) {
                const a = arr[i];
                const b = arr[j];
                const dx = a.position.x - b.position.x;
                const dist = Math.abs(dx);
                if (dist < minXDistance && dist > 0.0001) {
                    conflicts.push({ nodeA: a, nodeB: b, distance: dist });
                }
            }
        }
        return conflicts;
    }
    static calculateYSeparationOffset(position, otherNodes, _minXDistance, maxYOffset) {
        let offset = 0;
        for (const other of otherNodes) {
            const dx = Math.abs(position.x - other.position.x);
            if (dx < 0.0001) {
                offset += maxYOffset * 0.5;
            }
        }
        return Math.min(offset, maxYOffset);
    }
    static calculateChildPositions(parentPosition, childCount, level, levelSeparation, angularSpread, minBranchDistance, startDirection, _endDirection, enableYVariation, maxYVariation) {
        const positions = [];
        const step = childCount > 1 ? angularSpread / (childCount - 1) : 0;
        const startAngle = childCount > 1 ? -angularSpread / 2 : 0;
        for (let i = 0; i < childCount; i++) {
            const angle = startAngle + step * i;
            const rad = (angle * Math.PI) / 180;
            const dist = Math.max(levelSeparation * level, minBranchDistance);
            let x = parentPosition.x + Math.sin(rad) * dist;
            const y = parentPosition.y + (enableYVariation && maxYVariation ? (Math.random() - 0.5) * 2 * maxYVariation : 0);
            const z = parentPosition.z;
            if (startDirection) {
                const dir = startDirection.normalize();
                x = parentPosition.x + dir.x * dist * (i - (childCount - 1) / 2);
            }
            positions.push(new vec3(x, y, z));
        }
        return positions;
    }
    static establishParentChild(parent, child) {
        child.parentNodeId = parent.nodeId;
        parent.childNodeIds.push(child.nodeId);
    }
    static getNodesAtLevel(nodes, level) {
        return Array.from(nodes.values()).filter((n) => n.treeLevel === level);
    }
    static getTreeStats(nodes) {
        const nodesByLevel = new Map();
        let maxLevel = 0;
        for (const n of nodes.values()) {
            maxLevel = Math.max(maxLevel, n.treeLevel);
            nodesByLevel.set(n.treeLevel, (nodesByLevel.get(n.treeLevel) || 0) + 1);
        }
        return {
            totalNodes: nodes.size,
            maxLevel,
            nodesByLevel,
        };
    }
}
exports.TreeStructureUtils = TreeStructureUtils;
//# sourceMappingURL=TreeStructureUtils.js.map