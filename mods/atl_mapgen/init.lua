minetest.set_mapgen_setting("mg_name", "singlenode", true)

minetest.register_on_newplayer(function(player)
	player:set_pos({x = 0, y = 2, z = 0})
end)

minetest.register_on_generated(function(minp, maxp, seed)
	minetest.set_node({x = 0, y = 0, z = 0}, {name = "atl_rock:granite"})
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
