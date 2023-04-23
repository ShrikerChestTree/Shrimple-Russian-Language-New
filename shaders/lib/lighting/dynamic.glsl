const ivec3 SceneLightGridSize = ivec3(LIGHT_SIZE_XZ, LIGHT_SIZE_Y, LIGHT_SIZE_XZ);
const ivec3 SceneLightSize = SceneLightGridSize * LIGHT_BIN_SIZE;
const ivec3 LightGridCenter = SceneLightSize / 2;

const int lightMaskBitCount = int(log2(LIGHT_BIN_SIZE));


vec3 GetLightGridPosition(const in vec3 position) {
    vec3 cameraOffset = fract(cameraPosition / LIGHT_BIN_SIZE) * LIGHT_BIN_SIZE;
    return position + LightGridCenter + cameraOffset;
}

// vec3 GetLightLocalPosition(const in vec3 gridPos) {
//     vec3 cameraOffset = fract(cameraPosition / LIGHT_BIN_SIZE) * LIGHT_BIN_SIZE;
//     return gridPos - LightGridCenter - cameraOffset;
// }

ivec3 GetSceneLightGridCell(const in vec3 gridPos) {
    return ivec3(floor(gridPos / LIGHT_BIN_SIZE + 0.001));
}

bool GetSceneLightGridCell(const in vec3 gridPos, out ivec3 gridCell, out ivec3 blockCell) {
    gridCell = GetSceneLightGridCell(gridPos);
    if (any(lessThan(gridCell, ivec3(0.0))) || any(greaterThanEqual(gridCell, SceneLightGridSize))) return false;

    blockCell = ivec3(floor(gridPos - gridCell * LIGHT_BIN_SIZE));
    return true;
}

uint GetSceneLightGridIndex(const in ivec3 gridCell) {
    return gridCell.z * (LIGHT_SIZE_Y * LIGHT_SIZE_XZ) + gridCell.y * LIGHT_SIZE_XZ + gridCell.x;
}

#ifdef RENDER_SHADOWCOMP
    uint GetSceneLightMask(const in ivec3 blockCell, const in uint gridIndex) {
        uint maskIndex = (blockCell.z << (lightMaskBitCount * 2)) | (blockCell.y << lightMaskBitCount) | blockCell.x;
        maskIndex *= DYN_LIGHT_MASK_STRIDE;
        uint intIndex = maskIndex >> 5;

        uint bit = SceneLightMaps[gridIndex].LightMask[intIndex] >> (maskIndex & 31);
        return (bit & 255);
    }
#endif

#if DYN_LIGHT_MODE == DYN_LIGHT_TRACED
    #if !(defined RENDER_BEGIN || defined RENDER_SHADOW)
        uint GetSceneBlockMask(const in ivec3 blockCell, const in uint gridIndex) {
            uint maskIndex = (blockCell.z << (lightMaskBitCount * 2)) | (blockCell.y << lightMaskBitCount) | blockCell.x;
            maskIndex *= DYN_LIGHT_MASK_STRIDE;
            uint intIndex = maskIndex >> 5;

            uint bit = SceneBlockMaps[gridIndex].BlockMask[intIndex] >> (maskIndex & 31);
            return (bit & 255);
        }
    #endif

    uint GetLightMaskFace(const in vec3 normal) {
        vec3 normalAbs = abs(normal);

        if (normalAbs.y > normalAbs.x && normalAbs.y > normalAbs.z)
            return normal.y > 0 ? LIGHT_MASK_UP : LIGHT_MASK_DOWN;
        
        if (normalAbs.x > normalAbs.z)
            return normal.x > 0 ? LIGHT_MASK_EAST : LIGHT_MASK_WEST;

        return normal.z > 0 ? LIGHT_MASK_SOUTH : LIGHT_MASK_NORTH;
    }
#endif

#ifdef RENDER_SHADOW
    bool SetSceneLightMask(const in ivec3 blockCell, const in uint gridIndex, const in uint lightType) {
        uint maskIndex = (blockCell.z << (lightMaskBitCount * 2)) | (blockCell.y << lightMaskBitCount) | blockCell.x;
        maskIndex *= DYN_LIGHT_MASK_STRIDE;

        uint intIndex = maskIndex >> 5u;
        uint bit = lightType << (maskIndex & 31u);

        uint was = atomicOr(SceneLightMaps[gridIndex].LightMask[intIndex], bit);
        return (was & bit) == 0u;
    }

    #if defined RENDER_SHADOW && DYN_LIGHT_MODE == DYN_LIGHT_TRACED
        void SetSceneBlockMask(const in ivec3 blockCell, const in uint gridIndex, const in uint blockType) {
            uint maskIndex = (blockCell.z << (lightMaskBitCount * 2)) | (blockCell.y << lightMaskBitCount) | blockCell.x;
            maskIndex *= DYN_LIGHT_MASK_STRIDE;

            uint intIndex = maskIndex >> 5;
            uint bit = blockType << (maskIndex & 31);

            atomicOr(SceneBlockMaps[gridIndex].BlockMask[intIndex], bit);
        }
    #endif
#elif defined RENDER_SHADOWCOMP
    bool LightIntersectsBin(const in vec3 binPos, const in float binSize, const in vec3 lightPos, const in float lightRange) { 
        vec3 pointDist = lightPos - clamp(lightPos, binPos - binSize, binPos + binSize);
        return dot(pointDist, pointDist) < _pow2(lightRange);
    }
#elif !defined RENDER_BEGIN
    uint GetSceneLights(const in vec3 position, out uint gridIndex) {
        ivec3 gridCell, blockCell;
        vec3 gridPos = GetLightGridPosition(position);
        if (!GetSceneLightGridCell(gridPos, gridCell, blockCell)) {
            gridIndex = DYN_LIGHT_GRID_MAX;
            return 0u;
        }

        gridIndex = GetSceneLightGridIndex(gridCell);
        return min(SceneLightMaps[gridIndex].LightCount + SceneLightMaps[gridIndex].LightNeighborCount, LIGHT_BIN_MAX_COUNT);
    }

    uvec4 GetSceneLight(const in uint gridIndex, const in uint binLightIndex) {
        uint lightGlobalIndex = SceneLightMaps[gridIndex].GlobalLights[binLightIndex];
        return SceneLights[lightGlobalIndex];
    }
#endif
