minetest.register_node("atl_terrain:loam", {
	description = "Loam Soil",
	tiles = {"atl_terrain.loam.png"},
	groups = {soil = 1},
	drop = ""
})

minetest.register_node("atl_terrain:leafy_loam", {
	description = "Loam Soil",
	tiles = {"atl_flora.loam_with_leaves.png"},
	groups = {soil = 1},
	drop = ""
})


minetest.register_node("atl_terrain:ocean_water_source", {
	description = "Ocean Water Source",
	waving = 3,
	tiles = {"atl_terrain.water_source.png"},
	special_tiles = {
		{
			name = "atl_terrain.water_source.png",
			backface_culling = false,
		},
		{
			name = "atl_terrain.water_source.png",
			backface_culling = true,
		},
	},
	drawtype = "liquid",
	paramtype = "light",
	use_texture_alpha = "blend",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "source",
	liquid_alternative_flowing = "atl_terrain:ocean_water",
	liquid_alternative_source = "atl_terrain:ocean_water_source",
	liquid_viscosity = 1,
	liquid_range = 8,
	liquid_renewable = false,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 1, liquid = 3}
})

minetest.register_node("atl_terrain:ocean_water", {
	description = "Ocean Water",
	waving = 3,
	tiles = {"atl_terrain.water_source.png"},
	special_tiles = {
		{
			name = "atl_terrain.water_source.png",
			backface_culling = false,
		},
		{
			name = "atl_terrain.water_source.png",
			backface_culling = true,
		},
	},
	drawtype = "flowingliquid",
	use_texture_alpha = "blend",
	paramtype = "light",
	paramtype2 = "flowingliquid",
	walkable = false,
	pointable = false,
	diggable = false,
	buildable_to = true,
	is_ground_content = false,
	liquidtype = "flowing",
	liquid_alternative_flowing = "atl_terrain:ocean_water",
	liquid_alternative_source = "atl_terrain:ocean_water_source",
	liquid_viscosity = 1,
	liquid_range = 8,
	liquid_renewable = false,
	post_effect_color = {a = 103, r = 30, g = 60, b = 90},
	groups = {water = 1, liquid = 3}
})