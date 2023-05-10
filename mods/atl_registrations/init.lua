atl = {}

atl.register_rock = function(nodename, type, nodedata)
	minetest.register_node(":atl_rock:"..nodename, {
		description = nodedata.description,
		tiles = {"atl_rock."..nodename.."_node.png"},
		groups = {chisel = nodedata.hardness, rock = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_broken"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_broken", {
		description = nodedata.description,
		tiles = {"atl_rock."..nodename.."_node_1.png"},
		groups = {chisel = nodedata.hardness, broken_rock = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_gravel", {
		description = nodedata.description,
		tiles = {"atl_rock."..nodename.."_node_gravel.png"},
		groups = {shovel = 2, gravel = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})
