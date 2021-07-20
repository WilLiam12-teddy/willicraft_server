minetest.register_node("shadow:stonebrick", {
    description = "Shadow Stone Brick",
    tiles = {"shadow_stone_brick.png"},
    is_ground_content = true,
    groups = {cracky=2, stone=1}
})

minetest.register_node("shadow:reddiamond_block", {
    description = "Red Diamond Block Gem",
    tiles = {"diamond_block_red.png"},
    is_ground_content = true,
    groups = {cracky = 1, level = 3}
})

minetest.register_craftitem("shadow:red_diamond", {
    description = "Red Diamond Gem",
    inventory_image = "diamond_red.png"
})

minetest.register_craftitem("shadow:shadow", {
    description = "Shadow",
    inventory_image = "diamond_shadow.png"
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:red_diamond 09",
    recipe = {
        {"", "",                         ""},
        {"", "shadow:reddiamond_block",  ""},
        {"", "",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:reddiamond_block 01",
    recipe = {
        {"shadow:red_diamond", "shadow:red_diamond",  "shadow:red_diamond"},
        {"shadow:red_diamond", "shadow:red_diamond",  "shadow:red_diamond"},
        {"shadow:red_diamond", "shadow:red_diamond",  "shadow:red_diamond"}
    }
})

minetest.register_tool("shadow:sword", {
	description = ("Shadow Sword"),
	inventory_image = "tool_sword_shadow.png",
	tool_capabilities = {
		full_punch_interval = 0.5,
		max_drop_level=1,
		groupcaps={
			snappy={times={[1]=1.20, [2]=0.30, [3]=0.05}, uses=50, maxlevel=4},
		},
		damage_groups = {fleshy=10},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {sword = 1}
})

minetest.register_tool("shadow:pick", {
	description = ("Shadow Pickaxe"),
	inventory_image = "tool_pick_shadow.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=3,
		groupcaps={
			cracky = {times={[1]=1.50, [2]=0.50, [3]=0.10}, uses=40, maxlevel=4},
		},
		damage_groups = {fleshy=6},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {pickaxe = 1}
})

minetest.register_tool("shadow:axe", {
	description = ("Shadow Axe"),
	inventory_image = "tool_axe_shadow.png",
	tool_capabilities = {
		full_punch_interval = 0.7,
		max_drop_level=1,
		groupcaps={
			choppy={times={[1]=1.30, [2]=0.40, [3]=0.05}, uses=40, maxlevel=4},
		},
		damage_groups = {fleshy=8},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {axe = 1}
})

minetest.register_tool("shadow:shovel", {
	description = ("Shadow Shovel"),
	inventory_image = "tool_shovel_shadow.png",
	wield_image = "tool_shovel_shadow.png^[transformR90",
	tool_capabilities = {
		full_punch_interval = 0.8,
		max_drop_level=1,
		groupcaps={
			crumbly = {times={[1]=0.60, [2]=0.30, [3]=0.10}, uses=40, maxlevel=4},
		},
		damage_groups = {fleshy=5},
	},
	sound = {breaks = "default_tool_breaks"},
	groups = {shovel = 1}
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:sword 01",
    recipe = {
        {"", "shadow:shadow",  ""},
        {"", "shadow:shadow",  ""},
        {"", "default:stick",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:pick 01",
    recipe = {
        {"shadow:shadow", "shadow:shadow",  "shadow:shadow"},
        {"", "default:stick",  ""},
        {"", "default:stick",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:axe 01",
    recipe = {
        {"shadow:shadow", "shadow:shadow",  ""},
        {"shadow:shadow", "default:stick",  ""},
        {"", "default:stick",  ""}
    }
})

minetest.register_craft({
    type = "shaped",
    output = "shadow:shovel 01",
    recipe = {
        {"", "shadow:shadow",  ""},
        {"", "default:stick",  ""},
        {"", "default:stick",  ""}
    }
})

if minetest.get_modpath("3d_armor") then
	armor:register_armor("shadow:helmet_shadow", {
		description = ("Shadow Helmet"),
		inventory_image = "shadow_inv_helmet_shadow.png",
		groups = {armor_head=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=17},
		damage_groups = {cracky=2, snappy=1, level=4},
    })

	armor:register_armor("shadow:leggings_shadow", {
		description = ("Shadow Leggings"),
		inventory_image = "shadow_inv_leggings_shadow.png",
		groups = {armor_legs=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=22},
		damage_groups = {cracky=2, snappy=1, level=4},
	})

	armor:register_armor("shadow:chestplate_shadow", {
		description = ("Shadow Chestplate"),
		inventory_image = "shadow_inv_chestplate_shadow.png",
		groups = {armor_torso=1, armor_heal=16, armor_use=70},
		armor_groups = {fleshy=22},
		damage_groups = {cracky=2, snappy=1, level=4},
	})

-- boots 
		armor:register_armor("shadow:boots_shadow", {
		description = ("Shadow Boots"),
		inventory_image = "shadow_inv_boots_shadow.png",
		groups = {armor_feet=1, armor_heal=16, armor_use=70, physics_speed=1.25,
				physics_jump=0.5},
		armor_groups = {fleshy=17},
		damage_groups = {cracky=2, snappy=1, level=4},
	})

		armor:register_armor("shadow:shield_shadow", {
			description = ("Shadow Shield"),
			inventory_image = "shadow_inv_shield_shadow.png",
			groups = {armor_shield=1, armor_heal=12, armor_use=70},
			armor_groups = {fleshy=15},
			damage_groups = {cracky=2, snappy=1, level=4},
	})

end




-- Armor craft

minetest.register_craft({
	output = "shadow:helmet_shadow",
	recipe = {
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
		{"shadow:shadow", "", "shadow:shadow"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "shadow:chestplate_shadow",
	recipe = {
		{"shadow:shadow", "", "shadow:shadow"},
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
	}
})

minetest.register_craft({
	output = "shadow:leggings_shadow",
	recipe = {
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
		{"shadow:shadow", "", "shadow:shadow"},
		{"shadow:shadow", "", "shadow:shadow"},
	}
})

minetest.register_craft({
	output = "shadow:boots_shadow",
	recipe = {
		{"shadow:shadow", "", "shadow:shadow"},
		{"shadow:shadow", "", "shadow:shadow"},
		{"", "", ""},
	}
})

minetest.register_craft({
	output = "shadow:shield_shadow",
	recipe = {
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
		{"shadow:shadow", "shadow:shadow", "shadow:shadow"},
		{"", "shadow:shadow", ""},
	}
})
