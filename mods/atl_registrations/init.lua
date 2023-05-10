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
		groups = {rock = nodedata.hardness},
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
