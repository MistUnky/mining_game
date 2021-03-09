--Miner Game
minetest.register_on_joinplayer(function(player)
	minetest.after(0, function()
		player:set_sky({r=0,g=0,b=0}, "skybox", {"skybox.png","skybox.png","skybox.png","skybox.png","skybox.png","skybox.png"})
		player:override_day_night_ratio(1.0)
	end)
end)

minetest.override_item("", {
	wield_scale = {x=1,y=1,z=2.5},
	tool_capabilities = {
		full_punch_interval = 0.9,
		max_drop_level = 0,
		groupcaps = {
			crumbly = {times={[2]=3.00, [3]=0.70}, uses=0, maxlevel=1},
		}
	}
})

minetest.register_node("base:stone", {
	description = "stone",
	tiles = {"base_stone.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:coal", {
	description = "coal",
	tiles = {"base_coal.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:copper", {
	description = "copper",
	tiles = {"base_copper.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:iron", {
	description = "iron",
	tiles = {"base_iron.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:gold", {
	description = "gold",
	tiles = {"base_gold.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:blue", {
	description = "blue",
	tiles = {"base_blue.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:death", {
	description = "death",
	tiles = {"base_death.png"},
	groups = {crumbly = 3}
})
minetest.register_node("base:mud", {
	description = "mud",
	tiles = {"base_mud.png"},
	groups = {crumbly = 3},
	drop = {
		max_items = 1,
		items = {
			{
				items = {"base:stone"},
				rarity = 5,
			},
			{
				items = {"base:coal"},
				rarity = 25,
			},
			{
				items = {"base:copper"},
				rarity = 125,
			},
			{
				items = {"base:iron"},
				rarity = 625,
			},
			{
				items = {"base:gold"},
				rarity = 3125,
			},
			{
				items = {"base:blue"},
				rarity = 15625,
			},
			{
				items = {"base:death"},
				rarity = 78125,
			},
			{
				items = {"base:mud"},
			}
		}
	},
})

minetest.register_alias("mapgen_stone", "base:mud")
minetest.register_alias("mapgen_water_source", "air")
minetest.register_alias("mapgen_river_water_source", "air")
minetest.register_alias("mapgen_lava_source", "air")
minetest.register_alias("mapgen_dirt", "air")
minetest.register_alias("mapgen_dirt_with_grass", "air")
minetest.register_alias("mapgen_sand", "air")
minetest.register_alias("mapgen_gravel", "air")
minetest.register_alias("mapgen_desert_stone", "air")
minetest.register_alias("mapgen_desert_sand", "air")
minetest.register_alias("mapgen_dirt_with_snow", "air")
minetest.register_alias("mapgen_snowblock", "air")
minetest.register_alias("mapgen_snow", "air")
minetest.register_alias("mapgen_ice", "air")
minetest.register_alias("mapgen_tree", "air")
minetest.register_alias("mapgen_leaves", "air")
minetest.register_alias("mapgen_apple", "air")
minetest.register_alias("mapgen_jungletree", "air")
minetest.register_alias("mapgen_jungleleaves", "air")
minetest.register_alias("mapgen_junglegrass", "air")
minetest.register_alias("mapgen_pine_tree", "air")
minetest.register_alias("mapgen_pine_needles", "air")
minetest.register_alias("mapgen_cobble", "air")
minetest.register_alias("mapgen_stair_cobble", "air")
minetest.register_alias("mapgen_mossycobble", "air")
minetest.register_alias("mapgen_stair_desert_stone", "air")
