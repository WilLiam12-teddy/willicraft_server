--Ws Rgb
--a mod for color a solid block using unified dyes pallete.

minetest.register_node("wc_rgb:solid_block", {
    description = "Solid Node",
    tiles = {"solid_rgb.png"},
    is_ground_content = false,
    groups = {choppy=1, snappy=1, oddly_breakable_by_hand=1, ud_param2_colorable = 1},
    sounds = default.node_sound_stone_defaults(),
    paramtype2 = "color",
    palette = "unifieddyes_palette_extended.png",
})