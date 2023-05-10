atl = {}

atl.register_rock = function(nodename, nodedata)
	minetest.register_node(":atl_rock:"..nodename, {
		description = "Clean " .. nodedata.description,
		tiles = {"atl_rock."..nodename..".png"},
		groups = {rock = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_broken"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_broken", {
		description = "Chipped " .. nodedata.description,
		tiles = {"atl_rock."..nodename.."_1.png"},
		groups = {rock = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})
	minetest.register_node(":atl_rock:"..nodename.."_gravel", {
		description = "Gravel of " .. nodedata.description,
		tiles = {"atl_rock."..nodename.."_gravel.png"},
		groups = {gravel = 1},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_rock:"..nodename.."_gravel"})
		end,
	})

atl.register_wood = function(nodename, nodedata)
	minetest.register_node(":atl_flora:"..nodename, {
		description = nodedata.description.." Trunk",
		groups = {wood = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_flora:"..nodename.."_stripped"})
		end,

		tiles = {
			"atl_flora."..nodename.."_cap.png",
			"atl_flora."..nodename.."_cap.png",
			"atl_flora."..nodename..".png",
			"atl_flora."..nodename..".png",
			"atl_flora."..nodename..".png",
			"atl_flora."..nodename..".png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			}
		}
	})


	})
	minetest.register_node(":atl_flora:"..nodename.."_stripped", {
		description = "Stripped "..nodedata.description.." Trunk",
		groups = {wood = nodedata.hardness},
		tiles = {
			"atl_flora."..nodename.."_cap.png",
			"atl_flora."..nodename.."_cap.png",
			"atl_flora."..nodename.."_stripped.png",
			"atl_flora."..nodename.."_stripped.png",
			"atl_flora."..nodename.."_stripped.png",
			"atl_flora."..nodename.."_stripped.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
			}
		}
	})
	minetest.register_node(":atl_flora:"..nodename.."_cross", {
		description = nodedata.description.." Trunk",
		groups = {wood = nodedata.hardness},
		drop = "",
		after_dig_node = function(pos, oldnode, oldmetadata, digger)
			minetest.set_node(pos, {name = ":atl_flora:"..nodename.."_cross_stripped"})
		end,
		tiles = {
			"atl_flora."..nodename.."_cross_cap.png",
			"atl_flora."..nodename.."_cross_cap.png",
			"atl_flora."..nodename.."_cross.png",
			"atl_flora."..nodename.."_cross.png",
			"atl_flora."..nodename.."_cross.png",
			"atl_flora."..nodename.."_cross.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
				{-0.5, -0.25, -0.125, -0.25, 0, 0.125},
				{0.25, 0, -0.125, 0.5, 0.25, 0.125},
				{-0.125, -0.25, -0.5, 0.125, 0, -0.25},
				{-0.125, 0, 0.25, 0.125, 0.25, 0.5},
			}
		}
	})
	minetest.register_node(":atl_flora:"..nodename.."_cross_stripped", {
		description = "Stripped "..nodedata.description.." Trunk",
		tiles = {"atl_flora."..nodename.."_cross_stripped.png"},
		groups = {wood = nodedata.hardness},
		drop = "atl_flora:"..nodename.."_stripped",
		tiles = {
			"atl_flora."..nodename.."_cross_cap.png",
			"atl_flora."..nodename.."_cross_cap.png",
			"atl_flora."..nodename.."_cross_stripped.png",
			"atl_flora."..nodename.."_cross_stripped.png",
			"atl_flora."..nodename.."_cross_stripped.png",
			"atl_flora."..nodename.."_cross_stripped.png"
		},
		drawtype = "nodebox",
		paramtype = "light",
		node_box = {
			type = "fixed",
			fixed = {
				{-0.25, -0.5, -0.25, 0.25, 0.5, 0.25},
				{-0.5, -0.25, -0.125, -0.25, 0, 0.125},
				{0.25, 0, -0.125, 0.5, 0.25, 0.125},
				{-0.125, -0.25, -0.5, 0.125, 0, -0.25},
				{-0.125, 0, 0.25, 0.125, 0.25, 0.5},
			}
		}
	})
