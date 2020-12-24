--AspireMint Blocks created by maikerumine
-- Minetest 0.4.x -5.x mod: "aspiremint_blocks"
-- namespace: aspiremint_blocks
--version 1.0
--https://github.com/maikerumine

--License:
--~~~~~~~~
--Code:
--(c) Copyright 2020 maikerumine; modified zlib-License
--see "LICENSE.txt" for details.

--Media(if not stated differently):
--(c) Copyright (2014-2020) maikerumine; CC-BY-SA 3.0

aspiremint_blocks = {}


local dyes = dye.dyes

-- register es AspireMint nodes

for i = 1, #dyes do
	local name, desc = unpack(dyes[i])

	minetest.register_node("aspiremint_blocks:Stair" .. name, {
		description = desc .. " AspireMint Stair",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		inventory_image = "wool_" .. name .. ".png^amgit.png",
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 0},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Slab" .. name,})
		end,
	})

	minetest.register_node("aspiremint_blocks:Slab" .. name, {
		description = desc .. " AspireMint Slab",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, 0, 0.5},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Stair_Corner_Inner_" .. name,})
		end,
	})

	minetest.register_node("aspiremint_blocks:Stair_Corner_Inner_" .. name, {
		description = desc .. " AspireMint Stair Corner Inner",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.5, 0.5, 0.5},
				{-0.5, 0.0, -0.5, 0.0, 0.5, 0.0},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Stair_Corner_Outer_" .. name,})
		end,
	})

	minetest.register_node("aspiremint_blocks:Stair_Corner_Outer_" .. name, {
		description = desc .. " AspireMint Stair Corner Outer",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0.0, 0.5},
				{-0.5, 0.0, 0.0, 0.0, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Slope" .. name,})
		end,
	})

	minetest.register_node("aspiremint_blocks:Slope" .. name, {
		description = desc .. " AspireMint Slope",
		drawtype = "mesh",
		mesh = "stairs_slope.obj",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		selection_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		collision_box = {
			type = "fixed",
			fixed = {
				{-0.5, -0.5, -0.5, 0.5, 0, 0.5},
				{-0.5, 0, 0, 0.5, 0.5, 0.5},
			},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Slab_Thin_" .. name,})
		end,
	})

	minetest.register_node("aspiremint_blocks:Slab_Thin_" .. name, {
		description = desc .. " AspireMint Thin Slab",
		drawtype = "nodebox",	
		tiles = {"wool_" .. name .. ".png"},
		paramtype = "light",
		paramtype2 = "facedir",
		sunlight_propagates = true,
		node_box = {
			type = "fixed",
			fixed = {-0.5, -0.5, -0.5, 0.5, (1/16)-0.5, 0.5},
		},
		groups = {snappy = 2, choppy = 2, oddly_breakable_by_hand = 3,
				flammable = 3, wool = 1, not_in_creative_inventory = 1},
		sounds = default.node_sound_defaults(),
		drop = "aspiremint_blocks:Stair" .. name,
		on_rightclick = function(pos, node, clicker, itemstack, pointed_thing)
			minetest.set_node(pos, {name = "aspiremint_blocks:Stair" .. name,})
		end,
	})


--Crafting
minetest.register_craft({
	output = "aspiremint_blocks:Stair" .. name,
		type = "shapeless",
			recipe = {"group:dye,color_" .. name, "default:diamond", "group:wool",}
})
end
