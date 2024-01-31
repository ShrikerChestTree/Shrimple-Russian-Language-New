const float tile_dist[4] = float[](5, 12, 30, 80);


// tile: 0-3
vec2 GetShadowTilePos(const in int tile) {
    if (tile < 0) return vec2(10.0);

    vec2 pos;
    pos.x = fract(tile / 2.0);
    pos.y = floor(float(tile) * 0.5) * 0.5;
    return pos;
}

float GetShadowRange(const in int cascade) {
    return -2.0 / cascadeProjection[cascade][2][2];
}

const float cascadeNormalBias[] = float[]
    (0.06, 0.10, 0.20, 0.50);

const float cascadeOffsetBias[] = float[]
    (0.02, 0.05, 0.1, 0.8);

float GetShadowNormalBias(const in int cascade, const in float geoNoL) {
    float bias = 0.0;

    #if SHADOW_FILTER == SHADOW_FILTER_PCF
        bias += 0.0008 * SHADOW_PCF_SIZE_MAX;
    #endif

    bias += cascadeNormalBias[cascade];

    return bias * max(1.0 - geoNoL, 0.0) * SHADOW_BIAS_SCALE;
}

float GetShadowOffsetBias(const in int cascade) {
    // float bias = 0.0;

    // #if SHADOW_FILTER == SHADOW_FILTER_PCF
    //     bias += 0.001 * rcp(far * 3.0) * SHADOW_PCF_SIZE_MAX;
    // #endif

    // float _far = far;
    // #ifdef DISTANT_HORIZONS
    //     _far = 0.5 * dhFarPlane;
    // #endif

    // float zNear = -_far;
    // float zFar = _far * 2.0;
    float shadowDepthRange = -2.0 / cascadeProjection[cascade][2][2];

    return cascadeOffsetBias[cascade] * SHADOW_BIAS_SCALE / shadowDepthRange;

    // float blocksPerPixelScale = max(shadowProjectionSize[cascade].x, shadowProjectionSize[cascade].y) / cascadeTexSize;

    // float zRangeBias = 0.0000001;
    // float xySizeBias = blocksPerPixelScale * tile_dist_bias_factor;
    // return mix(xySizeBias, zRangeBias, geoNoL) * SHADOW_BIAS_SCALE;
}

bool CascadeContainsPosition(const in vec3 shadowViewPos, const in int cascade, const in float padding) {
    return all(greaterThan(shadowViewPos.xy, cascadeViewMin[cascade] - padding))
        && all(lessThan(shadowViewPos.xy, cascadeViewMax[cascade] + padding));
}

bool CascadeIntersectsPosition(const in vec3 shadowViewPos, const in int cascade) {
    return all(greaterThan(shadowViewPos.xy + 3.0, cascadeViewMin[cascade]))
        && all(lessThan(shadowViewPos.xy - 3.0, cascadeViewMax[cascade]));
}

int GetShadowCascade(const in vec3 shadowViewPos, const in float padding) {
    if (CascadeContainsPosition(shadowViewPos, 0, padding)) return 0;
    if (CascadeContainsPosition(shadowViewPos, 1, padding)) return 1;
    if (CascadeContainsPosition(shadowViewPos, 2, padding)) return 2;
    if (CascadeContainsPosition(shadowViewPos, 3, padding)) return 3;
    return -1;
}

#if (defined RENDER_VERTEX || defined RENDER_GEOMETRY) && !defined RENDER_COMPOSITE
    // returns: tile [0-3] or -1 if excluded
    int GetShadowTile(const in mat4 matShadowProjections[4], const in vec3 blockPos) {
        //#ifdef SHADOW_CSM_FITRANGE
        //    const int max = 3;
        //#else
            const int max = 4;
        //#endif

        for (int i = 0; i < max; i++) {
            if (CascadeContainsPosition(blockPos, i, -3.0)) return i;
        }

        //#ifdef SHADOW_CSM_FITRANGE
        //    return 3;
        //#else
            return -1;
        //#endif
    }
#endif

#if (defined RENDER_VERTEX) && !defined RENDER_COMPOSITE
    void ApplyShadows(const in vec3 localPos, const in vec3 localNormal, const in float geoNoL, out vec3 shadowPos[4], out int shadowTile) {
        for (int i = 0; i < 4; i++) {
            float bias = GetShadowNormalBias(i, geoNoL);
            vec3 offsetLocalPos = localPos + localNormal * bias;

            vec3 shadowViewPos = (shadowModelViewEx * vec4(offsetLocalPos, 1.0)).xyz;

            // convert to shadow screen space
            shadowPos[i] = (cascadeProjection[i] * vec4(shadowViewPos, 1.0)).xyz;

            shadowPos[i] = shadowPos[i] * 0.5 + 0.5; // convert from -1 ~ +1 to 0 ~ 1
            shadowPos[i].xy = shadowPos[i].xy * 0.5 + shadowProjectionPos[i]; // scale and translate to quadrant
        }

        #if defined RENDER_HAND //|| defined RENDER_ENTITIES
            vec3 blockPos = vec3(0.0);
        #elif defined RENDER_TERRAIN || defined RENDER_WATER
            vec3 blockPos = localPos + at_midBlock / 64.0 + 0.5;
            blockPos = floor(blockPos + fract(cameraPosition));
            // blockPos = (gl_ModelViewMatrix * vec4(blockPos, 1.0)).xyz;
            // blockPos = (shadowModelViewEx * (gbufferModelViewInverse * vec4(blockPos, 1.0))).xyz;
            blockPos = (shadowModelViewEx * vec4(blockPos, 1.0)).xyz;
        #else
            // vec3 blockPos = gl_Vertex.xyz;
            vec3 blockPos = floor(localPos + fract(cameraPosition) + 0.5);
            blockPos = (shadowModelViewEx * vec4(blockPos, 1.0)).xyz;
        #endif

        shadowTile = GetShadowTile(cascadeProjection, blockPos);
    }
#endif
