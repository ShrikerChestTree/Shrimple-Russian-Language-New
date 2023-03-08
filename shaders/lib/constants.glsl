#define SHADOW_TYPE_NONE 0
//#define SHADOW_TYPE_BASIC 1
#define SHADOW_TYPE_DISTORTED 2
#define SHADOW_TYPE_CASCADED 3

#define SHADOW_COLOR_DISABLED 0
#define SHADOW_COLOR_ENABLED 1
#define SHADOW_COLOR_IGNORED 2

#define HAND_LIGHT_NONE 0
#define HAND_LIGHT_VERTEX 1
#define HAND_LIGHT_PIXEL 2

#define DYN_LIGHT_NONE 0
#define DYN_LIGHT_VERTEX 1
#define DYN_LIGHT_PIXEL 2


#define BUFFER_BLOCKLIGHT_PREV colortex5


#define BLOCKTYPE_EMPTY 0u
#define BLOCKTYPE_SOLID 1u
#define BLOCKTYPE_CACTUS 2u
#define BLOCKTYPE_CAKE 3u
#define BLOCKTYPE_CANDLE_CAKE 4u
#define BLOCKTYPE_CARPET 5u
#define BLOCKTYPE_DAYLIGHT_DETECTOR 6u
#define BLOCKTYPE_ENCHANTING_TABLE 7u
#define BLOCKTYPE_END_PORTAL_FRAME 8u
#define BLOCKTYPE_HOPPER_DOWN 9u
#define BLOCKTYPE_HOPPER_N 10u
#define BLOCKTYPE_HOPPER_E 11u
#define BLOCKTYPE_HOPPER_S 12u
#define BLOCKTYPE_HOPPER_W 13u
#define BLOCKTYPE_LECTERN 14u
#define BLOCKTYPE_PATHWAY 15u
#define BLOCKTYPE_PRESSURE_PLATE 16u
#define BLOCKTYPE_STONECUTTER 17u

#define BLOCKTYPE_BUTTON_FLOOR_N_S 20u
#define BLOCKTYPE_BUTTON_FLOOR_W_E 21u
#define BLOCKTYPE_BUTTON_CEILING_N_S 22u
#define BLOCKTYPE_BUTTON_CEILING_W_E 23u
#define BLOCKTYPE_BUTTON_WALL_N 24u
#define BLOCKTYPE_BUTTON_WALL_E 25u
#define BLOCKTYPE_BUTTON_WALL_S 26u
#define BLOCKTYPE_BUTTON_WALL_W 27u

#define BLOCKTYPE_DOOR_N 28u
#define BLOCKTYPE_DOOR_E 29u
#define BLOCKTYPE_DOOR_S 30u
#define BLOCKTYPE_DOOR_W 31u

#define BLOCKTYPE_LEVER_FLOOR_N_S 32u
#define BLOCKTYPE_LEVER_FLOOR_W_E 33u
#define BLOCKTYPE_LEVER_CEILING_N_S 34u
#define BLOCKTYPE_LEVER_CEILING_W_E 35u
#define BLOCKTYPE_LEVER_WALL_N 36u
#define BLOCKTYPE_LEVER_WALL_E 37u
#define BLOCKTYPE_LEVER_WALL_S 38u
#define BLOCKTYPE_LEVER_WALL_W 39u

#define BLOCKTYPE_TRAPDOOR_BOTTOM 40u
#define BLOCKTYPE_TRAPDOOR_TOP 41u
#define BLOCKTYPE_TRAPDOOR_N 42u
#define BLOCKTYPE_TRAPDOOR_E 43u
#define BLOCKTYPE_TRAPDOOR_S 44u
#define BLOCKTYPE_TRAPDOOR_W 45u

#define BLOCKTYPE_TRIPWIRE_HOOK_N 46u
#define BLOCKTYPE_TRIPWIRE_HOOK_E 47u
#define BLOCKTYPE_TRIPWIRE_HOOK_S 48u
#define BLOCKTYPE_TRIPWIRE_HOOK_W 49u

#define BLOCKTYPE_SLAB_TOP 50u
#define BLOCKTYPE_SLAB_BOTTOM 51u

#define BLOCKTYPE_STAIRS_BOTTOM_N 52u
#define BLOCKTYPE_STAIRS_BOTTOM_E 53u
#define BLOCKTYPE_STAIRS_BOTTOM_S 54u
#define BLOCKTYPE_STAIRS_BOTTOM_W 55u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_W 56u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_N_E 57u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_W 58u
#define BLOCKTYPE_STAIRS_BOTTOM_INNER_S_E 59u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_W 60u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_N_E 61u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_W 62u
#define BLOCKTYPE_STAIRS_BOTTOM_OUTER_S_E 63u
#define BLOCKTYPE_STAIRS_TOP_N 64u
#define BLOCKTYPE_STAIRS_TOP_E 65u
#define BLOCKTYPE_STAIRS_TOP_S 66u
#define BLOCKTYPE_STAIRS_TOP_W 67u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_W 68u
#define BLOCKTYPE_STAIRS_TOP_INNER_N_E 69u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_W 70u
#define BLOCKTYPE_STAIRS_TOP_INNER_S_E 71u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_W 72u
#define BLOCKTYPE_STAIRS_TOP_OUTER_N_E 73u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_W 74u
#define BLOCKTYPE_STAIRS_TOP_OUTER_S_E 75u

#define BLOCKTYPE_FENCE_POST 76u
#define BLOCKTYPE_FENCE_N 77u
#define BLOCKTYPE_FENCE_E 78u
#define BLOCKTYPE_FENCE_S 79u
#define BLOCKTYPE_FENCE_W 80u
#define BLOCKTYPE_FENCE_N_S 81u
#define BLOCKTYPE_FENCE_W_E 82u
#define BLOCKTYPE_FENCE_N_W 83u
#define BLOCKTYPE_FENCE_N_E 84u
#define BLOCKTYPE_FENCE_S_W 85u
#define BLOCKTYPE_FENCE_S_E 86u
#define BLOCKTYPE_FENCE_W_N_E 87u
#define BLOCKTYPE_FENCE_W_S_E 88u
#define BLOCKTYPE_FENCE_N_W_S 89u
#define BLOCKTYPE_FENCE_N_E_S 90u
#define BLOCKTYPE_FENCE_ALL 91u

#define BLOCKTYPE_WALL_POST 92u
#define BLOCKTYPE_WALL_POST_LOW_N_S 93u
#define BLOCKTYPE_WALL_POST_LOW_W_E 94u
#define BLOCKTYPE_WALL_POST_TALL_N_S 95u
#define BLOCKTYPE_WALL_POST_TALL_W_E 96u
#define BLOCKTYPE_WALL_LOW_N_S 97u
#define BLOCKTYPE_WALL_LOW_W_E 98u
#define BLOCKTYPE_WALL_TALL_N_S 99u
#define BLOCKTYPE_WALL_TALL_W_E 100u
#define BLOCKTYPE_WALL_N_LOW 101u
#define BLOCKTYPE_WALL_E_LOW 102u
#define BLOCKTYPE_WALL_S_LOW 103u
#define BLOCKTYPE_WALL_W_LOW 104u
#define BLOCKTYPE_WALL_N_TALL 105u
#define BLOCKTYPE_WALL_E_TALL 106u
#define BLOCKTYPE_WALL_S_TALL 107u
#define BLOCKTYPE_WALL_W_TALL 108u
// TODO: add remaining wall types

#define BLOCKTYPE_CHORUS_DOWN 110u
#define BLOCKTYPE_CHORUS_UP_DOWN 111u
#define BLOCKTYPE_CHORUS_OTHER 112u

#define BLOCKTYPE_STAINED_GLASS_BLACK 115u
#define BLOCKTYPE_STAINED_GLASS_BLUE 116u
#define BLOCKTYPE_STAINED_GLASS_BROWN 117u
#define BLOCKTYPE_STAINED_GLASS_CYAN 118u
#define BLOCKTYPE_STAINED_GLASS_GRAY 119u
#define BLOCKTYPE_STAINED_GLASS_GREEN 120u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_BLUE 121u
#define BLOCKTYPE_STAINED_GLASS_LIGHT_GRAY 122u
#define BLOCKTYPE_STAINED_GLASS_LIME 123u
#define BLOCKTYPE_STAINED_GLASS_MAGENTA 124u
#define BLOCKTYPE_STAINED_GLASS_ORANGE 125u
#define BLOCKTYPE_STAINED_GLASS_PINK 126u
#define BLOCKTYPE_STAINED_GLASS_PURPLE 127u
#define BLOCKTYPE_STAINED_GLASS_RED 128u
#define BLOCKTYPE_STAINED_GLASS_WHITE 129u
#define BLOCKTYPE_STAINED_GLASS_YELLOW 130u

#define BLOCKTYPE_LIGHT 255u

#define TEX_LIGHT_NOISE noisetex
