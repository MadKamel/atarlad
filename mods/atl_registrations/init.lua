atl = {}

atl.register_rock = function(nodename, nodedata)
	minetest.register_node(":atl_rock:"..nodename, {
		description = "Clean " .. nodedata.description,
		tiles = {"atl_rock."..nodename.."_node.png"},
		groups = {rock = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_broken"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_broken", {
		description = "Chipped " .. nodedata.description,
		tiles = {"atl_rock."..nodename.."_node_1.png"},
		groups = {rock = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_gravel", {
		description = "Gravel of " .. nodedata.description,
		tiles = {"atl_rock."..nodename.."_node_gravel.png"},
		groups = {gravel = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})

atl.register_wood = function(nodename, nodedata)
	minetest.register_node(":atl_flora:"..nodename.."_plank", {
		description = nodedata.description.." Planks",
		tiles = {"atl_flora."..nodename.."_plank.png", "atl_flora."..nodename.."_plank.png", "atl_flora."..nodename.."_plank_cap.png", "atl_flora."..nodename.."_plank_cap.png", "atl_flora."..nodename.."_plank.png", "atl_flora."..nodename.."_plank.png"},
		groups = {wood = nodedata.hardness},
		paramtype2 = "facedir"
	})
	minetest.register_node(":atl_flora:"..nodename, {
		description = nodedata.description.." Trunk",
		tiles = {"atl_flora."..nodename..".png"},
		groups = {wood = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_flora:"..nodename.."_stripped"})
		end,
	})
	minetest.register_node(":atl_flora:"..nodename.."_stripped", {
		description = "Stripped "..nodedata.description.." Trunk",
		tiles = {"atl_flora."..nodename.."_stripped.png"},
		groups = {wood = nodedata.hardness},
	})
	minetest.register_node(":atl_flora:"..nodename.."_cross", {
		description = nodedata.description.." Trunk",
		tiles = {"atl_flora."..nodename.."_cross.png"},
		groups = {wood = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_flora:"..nodename.."_cross_stripped"})
		end,
	})
	minetest.register_node(":atl_flora:"..nodename.."_cross_stripped", {
		description = "Stripped "..nodedata.description.." Trunk",
		tiles = {"atl_flora."..nodename.."_cross_stripped.png"},
		groups = {wood = nodedata.hardness},
		drop = "atl_flora:"..nodename.."_stripped",
	})
