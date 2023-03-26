#define SHADOW_TYPE_NONE 0
//#define SHADOW_TYPE_BASIC 1
#define SHADOW_TYPE_DISTORTED 2
#define SHADOW_TYPE_CASCADED 3

#define SHADOW_COLOR_DISABLED 0
#define SHADOW_COLOR_ENABLED 1
#define SHADOW_COLOR_IGNORED 2

#define NORMALMAP_NONE 0
#define NORMALMAP_OLD 1
#define NORMALMAP_LAB 2

#define EMISSION_NONE 0
#define EMISSION_OLDPBR 1
#define EMISSION_LABPBR 2

#define SSS_NONE 0
#define SSS_DEFAULT 1
#define SSS_LABPBR 2

#define DYN_LIGHT_NONE 0
#define DYN_LIGHT_VERTEX 1
#define DYN_LIGHT_PIXEL 2
#define DYN_LIGHT_TRACED 3

#define DYN_LIGHT_COLOR_HC 0
#define DYN_LIGHT_COLOR_RP 1

#define DYN_LIGHT_TRACE_DDA 0
#define DYN_LIGHT_TRACE_RAY 1

#define VOLUMETRIC_BLOCK_NONE 0
#define VOLUMETRIC_BLOCK_EMIT 1
#define VOLUMETRIC_BLOCK_TRACE_FAST 2
#define VOLUMETRIC_BLOCK_TRACE_FULL 3

#define DEBUG_VIEW_NONE 0
#define DEBUG_VIEW_DEFERRED_COLOR 1
#define DEBUG_VIEW_DEFERRED_NORMAL 2
#define DEBUG_VIEW_DEFERRED_LIGHTING 3
#define DEBUG_VIEW_DEFERRED_SHADOW 4
#define DEBUG_VIEW_DEFERRED_FOG 5
#define DEBUG_VIEW_DEFERRED_TEXTURE 6
#define DEBUG_VIEW_DEFERRED_VL 7
#define DEBUG_VIEW_BLOCKLIGHT 8
#define DEBUG_VIEW_SHADOW_COLOR 9

#define ENTITY_PHYSICSMOD_SNOW 829925


//#define BUFFER_FINAL colortex0
#define BUFFER_DEFERRED_COLOR colortex1
#define BUFFER_DEFERRED_SHADOW colortex2
#define BUFFER_DEFERRED_DATA colortex3
#define BUFFER_BLOCKLIGHT colortex4
#define BUFFER_LIGHT_NORMAL colortex5
#define BUFFER_LIGHT_DEPTH colortex6
#define BUFFER_LIGHT_TA colortex7
#define BUFFER_LIGHT_TA_NORMAL colortex8
#define BUFFER_LIGHT_TA_DEPTH colortex9
#define BUFFER_VL colortex10
#define TEX_LIGHTMAP colortex11
#define TEX_LIGHT_NOISE noisetex


#define BLOCKTYPE_EMPTY 0u

#define BLOCKTYPE_LAYERS_2 1u
#define BLOCKTYPE_LAYERS_4 2u
#define BLOCKTYPE_LAYERS_6 3u
#define BLOCKTYPE_LAYERS_8 4u
#define BLOCKTYPE_LAYERS_10 5u
#define BLOCKTYPE_LAYERS_12 6u
#define BLOCKTYPE_LAYERS_14 7u

// #define BLOCKTYPE_LAYERS_1 1u
// #define BLOCKTYPE_LAYERS_3 3u
// #define BLOCKTYPE_LAYERS_9 3u
// #define BLOCKTYPE_LAYERS_15 7u

#define BLOCKTYPE_SOLID 8u

#define BLOCKTYPE_ANVIL_N_S 9u
#define BLOCKTYPE_ANVIL_W_E 10u
#define BLOCKTYPE_BELL_FLOOR_N_S 11u
#define BLOCKTYPE_BELL_FLOOR_W_E 12u
#define BLOCKTYPE_CACTUS 13u
#define BLOCKTYPE_CAKE 14u
#define BLOCKTYPE_CAMPFIRE_N_S 15u
#define BLOCKTYPE_CAMPFIRE_W_E 16u
#define BLOCKTYPE_CANDLE_CAKE 17u
#define BLOCKTYPE_CARPET 18u
#define BLOCKTYPE_END_PORTAL_FRAME 19u
#define BLOCKTYPE_FLOWER_POT 20u
#define BLOCKTYPE_GRINDSTONE_FLOOR_N_S 21u
#define BLOCKTYPE_GRINDSTONE_FLOOR_W_E 22u
#define BLOCKTYPE_GRINDSTONE_WALL_N_S 23u
#define BLOCKTYPE_GRINDSTONE_WALL_W_E 24u
#define BLOCKTYPE_HOPPER_DOWN 25u
#define BLOCKTYPE_HOPPER_N 26u
#define BLOCKTYPE_HOPPER_E 27u
#define BLOCKTYPE_HOPPER_S 28u
#define BLOCKTYPE_HOPPER_W 29u
#define BLOCKTYPE_LECTERN 30u
#define BLOCKTYPE_LIGHTNING_ROD_N 31u
#define BLOCKTYPE_LIGHTNING_ROD_E 32u
#define BLOCKTYPE_LIGHTNING_ROD_S 33u
#define BLOCKTYPE_LIGHTNING_ROD_W 34u
#define BLOCKTYPE_LIGHTNING_ROD_UP 35u
#define BLOCKTYPE_LIGHTNING_ROD_DOWN 36u
#define BLOCKTYPE_PATHWAY 37u
#define BLOCKTYPE_PISTON_EXTENDED_N 38u
#define BLOCKTYPE_PISTON_EXTENDED_E 39u
#define BLOCKTYPE_PISTON_EXTENDED_S 40u
#define BLOCKTYPE_PISTON_EXTENDED_W 41u
#define BLOCKTYPE_PISTON_EXTENDED_UP 42u
#define BLOCKTYPE_PISTON_EXTENDED_DOWN 43u
#define BLOCKTYPE_PISTON_HEAD_N 44u
#define BLOCKTYPE_PISTON_HEAD_E 45u
#define BLOCKTYPE_PISTON_HEAD_S 46u
#define BLOCKTYPE_PISTON_HEAD_W 47u
#define BLOCKTYPE_PISTON_HEAD_UP 48u
#define BLOCKTYPE_PISTON_HEAD_DOWN 49u
#define BLOCKTYPE_PRESSURE_PLATE 50u
#define BLOCKTYPE_STONECUTTER 51u

#define BLOCKTYPE_BUTTON_FLOOR_N_S 52u
#define BLOCKTYPE_BUTTON_FLOOR_W_E 53u
#define BLOCKTYPE_BUTTON_CEILING_N_S 54u
#define BLOCKTYPE_BUTTON_CEILING_W_E 55u
#define BLOCKTYPE_BUTTON_WALL_N 56u
#define BLOCKTYPE_BUTTON_WALL_E 57u
#define BLOCKTYPE_BUTTON_WALL_S 58u
#define BLOCKTYPE_BUTTON_WALL_W 59u

#define BLOCKTYPE_DOOR_N 60u
#define BLOCKTYPE_DOOR_E 61u
#define BLOCKTYPE_DOOR_S 62u
#define BLOCKTYPE_DOOR_W 63u

#define BLOCKTYPE_LEVER_FLOOR_N_S 64u
#define BLOCKTYPE_LEVER_FLOOR_W_E 65u
#define BLOCKTYPE_LEVER_CEILING_N_S 66u
#define BLOCKTYPE_LEVER_CEILING_W_E 67u
#define BLOCKTYPE_LEVER_WALL_N 68u
#define BLOCKTYPE_LEVER_WALL_E 69u
#define BLOCKTYPE_LEVER_WALL_S 70u
#define BLOCKTYPE_LEVER_WALL_W 71u

#define BLOCKTYPE_TRAPDOOR_BOTTOM 72u
#define BLOCKTYPE_TRAPDOOR_TOP 73u
#define BLOCKTYPE_TRAPDOOR_N 74u
#define BLOCKTYPE_TRAPDOOR_E 75u
#define BLOCKTYPE_TRAPDOOR_S 76u
#define BLOCKTYPE_TRAPDOOR_W 77u

#define BLOCKTYPE_TRIPWIRE_HOOK_N 78u
#define BLOCKTYPE_TRIPWIRE_HOOK_E 79u
#define BLOCKTYPE_TRIPWIRE_HOOK_S 80u
#define BLOCKTYPE_TRIPWIRE_HOOK_W 81u

#define BLOCKTYPE_SLAB_TOP 82u

#define BLOCKTYPE_STAIRS_BOTTOM_N 83u
#define BLOCKTYPE_STAIRS_BOTTOM_E 84u
#define BLOCKTYPE_STAIRS_BOTTOM_S 85u
#define BLOCKTYPE_STAIRS_BOTTOM_W 86u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_W 87u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_E 88u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_W 89u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_E 90u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_W 91u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_E 92u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_W 93u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_E 94u
#define BLOCKTYPE_STAIRS_TOP_N 95u
#define BLOCKTYPE_STAIRS_TOP_E 96u
#define BLOCKTYPE_STAIRS_TOP_S 97u
#define BLOCKTYPE_STAIRS_TOP_W 98u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_W 99u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_E 100u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_W 101u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_E 102u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_W 103u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_E 104u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_W 105u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_E 106u

#define BLOCKTYPE_FENCE_POST 107u
#define BLOCKTYPE_FENCE_N 108u
#define BLOCKTYPE_FENCE_E 109u
#define BLOCKTYPE_FENCE_S 110u
#define BLOCKTYPE_FENCE_W 111u
#define BLOCKTYPE_FENCE_N_S 112u
#define BLOCKTYPE_FENCE_W_E 113u
#define BLOCKTYPE_FENCE_N_W 114u
#define BLOCKTYPE_FENCE_N_E 115u
#define BLOCKTYPE_FENCE_S_W 116u
#define BLOCKTYPE_FENCE_S_E 117u
#define BLOCKTYPE_FENCE_W_N_E 118u
#define BLOCKTYPE_FENCE_W_S_E 119u
#define BLOCKTYPE_FENCE_N_W_S 120u
#define BLOCKTYPE_FENCE_N_E_S 121u
#define BLOCKTYPE_FENCE_ALL 122u

#define BLOCKTYPE_FENCE_GATE_CLOSED_N_S 123u
#define BLOCKTYPE_FENCE_GATE_CLOSED_W_E 124u

#define BLOCKTYPE_WALL_POST 125u
#define BLOCKTYPE_WALL_POST_LOW_N 126u
#define BLOCKTYPE_WALL_POST_LOW_E 127u
#define BLOCKTYPE_WALL_POST_LOW_S 128u
#define BLOCKTYPE_WALL_POST_LOW_W 129u
#define BLOCKTYPE_WALL_POST_LOW_N_S 130u
#define BLOCKTYPE_WALL_POST_LOW_W_E 131u
#define BLOCKTYPE_WALL_POST_LOW_N_W 132u
#define BLOCKTYPE_WALL_POST_LOW_N_E 133u
#define BLOCKTYPE_WALL_POST_LOW_S_W 134u
#define BLOCKTYPE_WALL_POST_LOW_S_E 135u
#define BLOCKTYPE_WALL_POST_LOW_N_W_S 136u
#define BLOCKTYPE_WALL_POST_LOW_N_E_S 137u
#define BLOCKTYPE_WALL_POST_LOW_W_N_E 138u
#define BLOCKTYPE_WALL_POST_LOW_W_S_E 139u
#define BLOCKTYPE_WALL_POST_LOW_ALL 140u
#define BLOCKTYPE_WALL_POST_TALL_N 141u
#define BLOCKTYPE_WALL_POST_TALL_E 142u
#define BLOCKTYPE_WALL_POST_TALL_S 143u
#define BLOCKTYPE_WALL_POST_TALL_W 144u
#define BLOCKTYPE_WALL_POST_TALL_N_S 145u
#define BLOCKTYPE_WALL_POST_TALL_W_E 146u
#define BLOCKTYPE_WALL_POST_TALL_N_W 147u
#define BLOCKTYPE_WALL_POST_TALL_N_E 148u
#define BLOCKTYPE_WALL_POST_TALL_S_W 149u
#define BLOCKTYPE_WALL_POST_TALL_S_E 150u
#define BLOCKTYPE_WALL_POST_TALL_N_W_S 151u
#define BLOCKTYPE_WALL_POST_TALL_N_E_S 152u
#define BLOCKTYPE_WALL_POST_TALL_W_N_E 153u
#define BLOCKTYPE_WALL_POST_TALL_W_S_E 154u
#define BLOCKTYPE_WALL_POST_TALL_ALL 155u
#define BLOCKTYPE_WALL_LOW_N_S 156u
#define BLOCKTYPE_WALL_LOW_W_E 157u
#define BLOCKTYPE_WALL_TALL_N_S 158u
#define BLOCKTYPE_WALL_TALL_W_E 159u

#define BLOCKTYPE_CHORUS_DOWN 160u
#define BLOCKTYPE_CHORUS_UP_DOWN 161u
#define BLOCKTYPE_CHORUS_OTHER 162u

#define BLOCKTYPE_AMETHYST 163u
#define BLOCKTYPE_DIAMOND 164u
#define BLOCKTYPE_EMERALD 165u
#define BLOCKTYPE_HONEY 166u
#define BLOCKTYPE_SLIME 167u
#define BLOCKTYPE_SNOW 168u
#define BLOCKTYPE_STAINED_GLASS_BLACK 169u
#define BLOCKTYPE_STAINED_GLASS_BLUE 170u
#define BLOCKTYPE_STAINED_GLASS_BROWN 171u
#define BLOCKTYPE_STAINED_GLASS_CYAN 172u
#define BLOCKTYPE_STAINED_GLASS_GRAY 173u
#define BLOCKTYPE_STAINED_GLASS_GREEN 174u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_BLUE 175u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_GRAY 176u
#define BLOCKTYPE_STAINED_GLASS_LIME 177u
#define BLOCKTYPE_STAINED_GLASS_MAGENTA 178u
#define BLOCKTYPE_STAINED_GLASS_ORANGE 179u
#define BLOCKTYPE_STAINED_GLASS_PINK 180u
#define BLOCKTYPE_STAINED_GLASS_PURPLE 181u
#define BLOCKTYPE_STAINED_GLASS_RED 182u
#define BLOCKTYPE_STAINED_GLASS_WHITE 183u
#define BLOCKTYPE_STAINED_GLASS_YELLOW 184u

#define BLOCKTYPE_LIGHT 255u
