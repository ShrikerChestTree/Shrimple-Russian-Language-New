#define AMBIENT_NONE 0
#define AMBIENT_DEFAULT 1
#define AMBIENT_FANCY 2

#define PUDDLES_NONE 0
#define PUDDLES_BASIC 1
#define PUDDLES_PIXEL 2
#define PUDDLES_FANCY 3

#define SKY_TYPE_VANILLA 0
#define SKY_TYPE_CUSTOM 1

#define FOG_MODE_NONE 0
#define FOG_MODE_BORDER 1
//#define FOG_MODE_FULL 0

#define FOG_SHAPE_DEFAULT 0
#define FOG_SHAPE_SPHERE 1
#define FOG_SHAPE_CYLINDER 2

#define WATER_TEXTURED 0
#define WATER_COLORED 1

#define WATER_WAVES_NONE 0
// #define WATER_WAVES_BASIC 1
// #define WATER_WAVES_FANCY 2

#define CLOUDS_NONE 0
#define CLOUDS_VANILLA 1
#define CLOUDS_CUSTOM 2
#define CLOUDS_CUSTOM_CUBE 3

#define SHADOW_TYPE_NONE 0
//#define SHADOW_TYPE_BASIC 1
#define SHADOW_TYPE_DISTORTED 2
#define SHADOW_TYPE_CASCADED 3

#define SHADOW_FILTER_NONE 0
#define SHADOW_FILTER_PCF 1
#define SHADOW_FILTER_PCSS 2

#define NORMALMAP_NONE 0
#define NORMALMAP_GENERATED 1
#define NORMALMAP_LABPBR 2
#define NORMALMAP_OLDPBR 3

#define EMISSION_NONE 0
#define EMISSION_LABPBR 1
#define EMISSION_OLDPBR 2

#define SSS_NONE 0
#define SSS_DEFAULT 1
#define SSS_LABPBR 2

#define POROSITY_NONE 0
#define POROSITY_DEFAULT 1
#define POROSITY_LABPBR 2

#define OCCLUSION_NONE 0
#define OCCLUSION_DEFAULT 1
#define OCCLUSION_LABPBR 2

#define SPECULAR_NONE 0
#define SPECULAR_DEFAULT 1
#define SPECULAR_LABPBR 2
#define SPECULAR_OLDPBR 3

#define DISPLACE_NONE 0
#define DISPLACE_POM 1
#define DISPLACE_POM_SMOOTH 2
#define DISPLACE_POM_SHARP 3
#define DISPLACE_TESSELATION 4

#define REFLECT_NONE 0
#define REFLECT_SKY 1
#define REFLECT_SCREEN 2

#define DYN_LIGHT_NONE 0
#define DYN_LIGHT_LPV 1
#define DYN_LIGHT_TRACED 2

#define HAND_LIGHT_NONE 0
#define HAND_LIGHT_SIMPLE 1
#define HAND_LIGHT_TRACED 2

#define DYN_LIGHT_BLOCK_NONE 0
#define DYN_LIGHT_BLOCK_EMIT 1
#define DYN_LIGHT_BLOCK_TRACE 2

#define LPV_SAMPLE_POINT 0
#define LPV_SAMPLE_LINEAR 1
#define LPV_SAMPLE_CUBIC 2

#define PLAYER_SHADOW_NONE 0
#define PLAYER_SHADOW_BOX 1
#define PLAYER_SHADOW_CYLINDER 2

#define LIGHT_TINT_NONE 0
#define LIGHT_TINT_BASIC 1
#define LIGHT_TINT_ABSORB 2

#define VOLUMETRIC_BLOCK_NONE 0
#define VOLUMETRIC_BLOCK_EMIT 1
#define VOLUMETRIC_BLOCK_TRACE_FAST 2
#define VOLUMETRIC_BLOCK_TRACE_FULL 3

#define VOL_TYPE_NONE 0
#define VOL_TYPE_FAST 1
#define VOL_TYPE_FANCY 2

#define DIST_BLUR_OFF 0
#define DIST_BLUR_FAR 1
#define DIST_BLUR_DOF 2

#define BLOCK_EMPTY 0
#define BLOCK_SOLID 0xFFFF
#define LIGHT_EMPTY 0
#define ENTITY_PHYSICSMOD_SNOW 829925

#define DEBUG_VIEW_NONE 0
#define DEBUG_VIEW_DEFERRED_COLOR 1
#define DEBUG_VIEW_DEFERRED_NORMAL_GEO 2
#define DEBUG_VIEW_DEFERRED_LIGHTING 3
#define DEBUG_VIEW_DEFERRED_LIGHTING2 4
#define DEBUG_VIEW_DEFERRED_SHADOW 5
#define DEBUG_VIEW_DEFERRED_FOG 6
#define DEBUG_VIEW_DEFERRED_NORMAL_TEX 7
#define DEBUG_VIEW_DEFERRED_ROUGH_METAL 8
#define DEBUG_VIEW_DEFERRED_VL 9
#define DEBUG_VIEW_BLOCK_DIFFUSE 10
#define DEBUG_VIEW_BLOCK_SPECULAR 11
#define DEBUG_VIEW_VELOCITY 12
#define DEBUG_VIEW_SHADOW_COLOR 13
#define DEBUG_VIEW_BLOOM_TILES 14
#define DEBUG_VIEW_DEPTH_TILES 15
#define DEBUG_VIEW_WHITEWORLD 16

#define BUFFER_FINAL colortex0
#define BUFFER_DEFERRED_COLOR colortex1
#define BUFFER_DEFERRED_SHADOW colortex2
#define BUFFER_DEFERRED_DATA colortex3
#define BUFFER_BLOCK_DIFFUSE colortex4
#define BUFFER_FINAL_PREV colortex5
#define BUFFER_DEPTH_PREV colortex6
#define BUFFER_VELOCITY colortex7
#define BUFFER_DEFERRED_NORMAL_TEX colortex9
#define BUFFER_VL_SCATTER colortex8
#define BUFFER_VL_TRANSMIT colortex10
#define BUFFER_BLOCK_SPECULAR colortex11
#define BUFFER_BLOOM_TILES colortex15
#define BUFFER_OVERLAY colortex15

#ifdef RENDER_GBUFFER
	#define TEX_LIGHTMAP lightmap
#endif

#ifdef IS_IRIS
	#ifndef RENDER_GBUFFER
		#define TEX_LIGHTMAP texLightmap
	#endif
	
	#define TEX_RIPPLES texRipples
	#define TEX_CLOUDS texClouds
	#define TEX_CLOUDS_VANILLA texVanillaClouds
#else
	#ifndef RENDER_GBUFFER
		#define TEX_LIGHTMAP colortex13
	#endif

	#define TEX_RIPPLES colortex13
	#define TEX_CLOUDS shadowcolor1
#endif

#define TEX_LIGHT_NOISE noisetex
