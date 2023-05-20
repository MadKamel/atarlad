minetest.set_mapgen_setting("mg_name", "singlenode", true)

minetest.register_on_newplayer(function(player)
	player:set_pos({x = 0, y = 2, z = 0})
end)

minetest.register_on_mapgen_init(function(mgparams)
    minetest.set_mapgen_params({mgname="singlenode", flags="nolight", flagmask="nolight"})
end)

-- This is not my code, I stole it from https://forum.minetest.net/viewtopic.php?t=6396
minetest.register_on_generated(function(minp, maxp, seed)
	local t1 = os.clock()
	local vm, emin, emax = minetest.get_mapgen_object("voxelmanip")
	local a = VoxelArea:new{
		MinEdge={x=emin.x, y=emin.y, z=emin.z},
		MaxEdge={x=emax.x, y=emax.y, z=emax.z},
	}

	local data = vm:get_data()

	local c_dirt  = minetest.get_content_id("atl_terrain:loam")
	local c_water = minetest.get_content_id("atl_terrain:ocean_water_source")

	local sidelen = maxp.x - minp.x + 1

	local noise = minetest.get_perlin_map(
		{offset=0, scale=0.3, spread={x=200, y=125, z=200}, seed=15, octaves=5, persist=0.3},
		{x=sidelen, y=sidelen, z=sidelen}
	)
	local nvals = noise:get3dMap_flat({x=minp.x, y=minp.y, z=minp.z})

	local ni = 1
	for z = minp.z, maxp.z do
		for y = minp.y, maxp.y do
			for x = minp.x, maxp.x do
				if nvals[ni] - (y - 25) / 55 > 0.5 then
				local vi = a:index(x, y, z)
				data[vi] = c_dirt
				elseif y < 1 then
					local vi = a:index(x, y, z)
					data[vi] = c_water
				end
				ni = ni + 1
			end
		end
	end

	vm:set_data(data)

	vm:calc_lighting(
		{x=minp.x-16, y=minp.y, z=minp.z-16},
		{x=maxp.x+16, y=maxp.y, z=maxp.z+16}
	)

	vm:write_to_map(data)
 
	--print(string.format("elapsed time: %.2fms", (os.clock() - t1) * 1000))
end)

minetest.register_on_joinplayer(function(player)
	player:set_sun({
		visible = true
	})

	player:set_moon({
		visible = false
	})

	player:set_stars({
		visible = false
	})

	player:override_day_night_ratio(1)
end)




minetest.register_decoration({
	decoration = "atl_mapgen:acer_tree_1",
	deco_type = "schematic",
	schematic = minetest.get_modpath("atl_mapgen").."schematics/acer_tree_1.mts",
	place_on = "atl_terrain:loam",
	flags = "place_center_x, place_center_z",
	rotation = "random",
	fill_ratio = 0.01,
	sidelen = 5,
	max_y = 25,
	min_y = 8
})

minetest.place_decorations()
