local pictures = {  ["w_dia"]="Dia",
                    ["dia"]="Dia%",
                    ["dia_mkt1"]="Dia_Mkt1",
                    ["dia_mkt2"]="Dia_Mkt2",
                    ["texture_0"]="Bem-vindo!",
                    ["texture_1"]="Diaaa",


}

for name,desc in pairs(pictures) do
    minetest.register_node("dia:"..name, {
        description = desc,
        drawtype = "signlike",
        inventory_image = name..".png",
        wield_image = name..".png",
        visual_scale = 3.0,
        tiles = {name..".png",},
        use_texture_alpha = true,
        paramtype = "light",
        paramtype2 = "wallmounted",
        sunlight_propagates = true,
        walkable = false,
        light_source = 5,
        is_ground_content = false,
        selection_box = {
            type = "wallmounted",
            fixed = {-0.5, -0.5, -0.5, 0.5, -0.4, 0.5}
        },
        groups = {cracky=3,dig_immediate=3},
        on_construct = function(pos)
            local msg = desc
            local meta = minetest.get_meta(pos)
            --meta:set_string("text", msg)
            meta:set_string("infotext", '"' .. msg .. '"')
        end,
    })
end

minetest.register_node("dia:concrete", {
    description = "Dia Concrete",
    tiles = {"concrete_dia.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:metal", {
    description = "Dia Metal",
    tiles = {"metal_dia.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:concrete2", {
    description = "Dia Concrete 2",
    tiles = {"concrete2_dia.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:blinds", {
    description = "Dia Blinds",
    tiles = {"blinds_dia.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:azulejo", {
    description = "Azulejo Dia",
    tiles = {"azulejo_dia.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:azulejo2", {
    description = "Azulejo Dia 2",
    tiles = {"azulejo_dia2.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})

minetest.register_node("dia:asphalt", {
    description = "Asphalt",
    tiles = {"asphalt.jpg"},
    is_ground_content = true,
    groups = {cracky=3, stone=1}
})