dofile(minetest.get_modpath("atl_items").."/tools.lua")

minetest.register_tool(":devtool", {
	description = "Developer Tool",
	inventory_image = "devtool.png",
	tool_capabilities = {
		full_punch_interval = 1.0,
		range = 666,
		max_drop_level=3,
		groupcaps={
			breakable={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			rock={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			gravel={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			wood={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255},
			soil={times={[1]=0.0, [2]=0.0, [3]=0.0}, maxlevel=255}
		},
		damage_groups = {fleshy=100},
	},
})