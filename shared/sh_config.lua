-- For support, join our Discord server: https://discord.gg/jAnEnyGBef
-- For icons, use Iconify: https://icon-sets.iconify.design

return {

	--[[ GENERAL CONFIGURATION ]]

	Framework = "rsgcore", -- Supported: "esx", "qbcore", "rsgcore", or "custom"
	DebugMode = false, -- Enable print statements for debugging
	WeaponAsItem = true, -- Treat weapons as inventory items (only supported inventorys)
	OxInventory = false, -- Uses ox_inventory exports if true

	ImagePath = "nui://rsg-inventory/html/images/",
	--[[
	Image Path Configuration Options:
	
	1. Local folder (relative to resource):
	   "img/items/"
	
	2. External resource (other resources' images):
	   "nui://RESOURCE_NAME/PATH_TO_IMAGES/"
	   Example: "nui://ox_inventory/web/images/" for ox_inventory images
	
	Note: Make sure the path ends with a forward slash "/"
	]]

	--[[ INTERACTION CONFIGURATION ]]

	-- Distance
	InteractionDistance = {
		TextUI = 3.0,
		Target = 3.5,
	},

	-- Target Settings (ox_target)
	Target = {
		Enabled = true,
		BoxZoneSize = vec3(4, 4, 4),
		DrawSprite = true,
		Icon = "fa-solid fa-cart-shopping", -- https://fontawesome.com

		DisablePeds = false, -- Disables all shop NPC Peds
		DisableMarkers = true, -- Disables all shop markers
	},

	--[[ SHOP CONFIGURATIONS ]]

	Shops = {
		["market"] = {
			Locations = {
				vector4(1330.11, -1293.64, 76.97, 67.13), -- Rhodes
				vector4(-324.23, 804.15, 117.83, 279.91), --Valentine
				vector4(-1789.26, -387.42, 160.28, 56.51), --Strawberry	
				vector4(2931.14, 1365.91, 45.15, 252.93), -- Annesberg
				vector4(2860.21, -1202.15, 49.54, 9.12), --Saint Denis
				vector4(-5486.36, -2937.57, -0.45, 133.29), --Tumbleweed
				vector4(-3687.33, -2622.88, -13.48, 271.79), --Armadillo
				vector4(-785.65, -1322.16, 43.83, 187.16), --Blackwater 
				vector4(3025.39, 561.20, 44.67, 262.99),--Van Horn
			},
			Categories = {
				{ name = "All Products", type = "all", icon = "ic:round-clear-all" }, --! Required for all shops
				{ name = "Food", type = "food", icon = "mdi:food-drumstick" },
				{ name = "Drinks", type = "drinks", icon = "ion:water-sharp" },
			},
			Items = {
				-- Food
				{ name = "bread",image= "consumable_bread_roll", label = "Bread", category = "food", price = 40 },

				-- Drinks
				{ name = "water",image= "consumable_water_filtered", label = "Water Bottle", category = "drinks", price = 25 },
			},
			Locales = {
				title = "General Store",
				tag = "24/7",
				description = "Welcome to your General Store, where we're always here for you, day or night!\nExplore a curated selection of premium goods, tailored to meet your every need.",
			},
			Blip = {
				Name = "General Store",
				Sprite = 'blip_shop_store',
				Color = 0,
				Scale = 0.2,
			},
			NpcPed = {
				Model = `mp_m_shopkeep_01`,
				Scenario = "WORLD_HUMAN_AA_SMOKE",
			},
			RenderDistance = 15.0, -- Distance at which the marker or NPCs are visible
			License = {
				Required = false, -- Whether a license is required to access the shop
				BuyDialog = true, -- Displays a dialog prompting the player to purchase the required license
				Type = "weapon", -- The type of the required license (e.g., "weapon")
				TypeLabel = "Weapon License", -- The display name of the required license
				Price = 1000, -- The cost of the license
			},
		},
		["weapon_shop"] = {
			Locations = {
				vector4(-280.36, 778.90, 119.45, 2.22), --Valentine
				vector4(-5506.23, -2964.65, -0.69, 116.37), --Tumbleweed
				vector4(2718.02, -1286.44, 49.59, 35.07), --Saint Denis
				vector4(1323.34, -1323.37, 77.84, 358.27), --Rhodes
				vector4(2948.11, 1318.60, 44.77, 69.14), --Annesberg
			},
			Categories = {
				{ name = "All Products", type = "all", icon = "ic:round-clear-all" },
				{ name = "Revolvers", type = "revolver", icon = "game-icons:revolver" },
				{ name = "Pistols", type = "pistol", icon = "game-icons:pistol-gun" },
				{ name = "Rifles", type = "rifle", icon = "game-icons:winchester-rifle" },
				{ name = "Ammo", type = "ammo", icon = "game-icons:ammo-box" },
				-- { name = "Misc", type = "misc", icon = "game-icons:skipping-rope" },
			},
			Items = {
				-- Revolvers
				{ name = "weapon_revolver_cattleman",image = "weapon_revolver_cattleman", label = "Cattleman Revolver", category = "revolver", price = 50 },
				{ name = "weapon_revolver_doubleaction",image = "weapon_revolver_doubleaction", label = "DoubleAction Revolver", category = "revolver", price = 127 },
				{ name = "weapon_revolver_doubleaction_gambler",image = "weapon_revolver_doubleaction_gambler", label = "DoubleAction Revolver", category = "revolver", price = 190 },
				{ name = "weapon_revolver_lemat",image = "weapon_revolver_lemat", label = "Lemat Revolver", category = "revolver", price = 317 },
				{ name = "weapon_revolver_navy",image = "weapon_revolver_navy", label = "Navy Revolver", category = "revolver", price = 275 },
				{ name = "weapon_revolver_schofield",image = "weapon_revolver_schofield", label = "Schofield Revolver", category = "revolver", price = 192 },

				-- Pistols
				{ name = "weapon_pistol_mauser",image = "weapon_pistol_mauser", label = "Mauser Pistol", category = "pistol", price = 600 },
				{ name = "weapon_pistol_semiauto",image = "weapon_pistol_semiauto", label = "SemiAuto Pistol", category = "pistol", price = 537 },
				{ name = "weapon_pistol_volcanic",image = "weapon_pistol_volcanic", label = "SemiAuto Pistol", category = "pistol", price = 270 },

				-- Rifles
				{ name = "weapon_rifle_boltaction",image = "weapon_rifle_boltaction", label = "BoltAction", category = "rifle", price = 216 },
				{ name = "weapon_rifle_elephant",image = "weapon_rifle_elephant", label = "Elephant Rifle", category = "rifle", price = 580 },
				{ name = "weapon_rifle_springfield",image = "weapon_rifle_springfield", label = "Springfield Rifle", category = "rifle", price = 156 },
				{ name = "weapon_rifle_varmint",image = "weapon_rifle_varmint", label = "Varmint Rifle", category = "rifle", price = 72 },
				
				-- Repeater
				{ name = "weapon_repeater_carbine",image = "weapon_repeater_carbine", label = "Carbine Repeater", category = "rifle", price = 90 },
				{ name = "weapon_repeater_evans",image = "weapon_repeater_evans", label = "Evans Repeater", category = "rifle", price = 300 },
				{ name = "weapon_repeater_winchester",image = "weapon_repeater_winchester", label = "Winchester Repeater", category = "rifle", price = 243 },
				{ name = "weapon_repeater_henry",image = "weapon_repeater_henry", label = "Hanry Repeater", category = "rifle", price = 348 },

				-- Sniper Rifles
				{ name = "weapon_sniperrifle_rollingblock",image = "weapon_sniperrifle_rollingblock", label = "Rollingblock Sniper Rifle", category = "rifle", price = 411 },
				{ name = "weapon_sniperrifle_carcano",image = "weapon_sniperrifle_carcano", label = "Carcano Sniper Rifle", category = "rifle", price = 456 },

				-- Ammos
				{ name = "ammo_box_revolver",image = "ammo_box_revolver", label = "Revolver Ammo box", category = "ammo", price = 10 },
				{ name = "ammo_box_pistol",image = "ammo_box_pistol", label = "Pistol Ammo box", category = "ammo", price = 10 },
				{ name = "ammo_box_rifle",image = "ammo_box_rifle", label = "Rifle Ammo box", category = "ammo", price = 10 },
				{ name = "ammo_box_repeater",image = "ammo_box_repeater", label = "Repeater Ammo box", category = "ammo", price = 10 },
				{ name = "ammo_box_shotgun",image = "ammo_box_shotgun", label = "Shotgun Ammo box", category = "ammo", price = 10 },
				{ name = "ammo_box_rifle_elephant",image = "ammo_box_rifle_elephant", label = "Elephant Ammo box", category = "ammo", price = 10 },
			},
			Locales = {
				title = "Weapon Shop",
				tag = "24/7",
				description = "Welcome to your local weapon shop, where we're always here for you, day or night!\nExplore a curated selection of premium goods, tailored to meet your every need.",
			},
			Blip = {
				Name = "Weapon Shop",
				Sprite = 'blip_shop_gunsmith',
				Color = 0,
				Scale = 0.2,
			},
			RenderDistance = 15.0,
			License = {
				Required = false,
				BuyDialog = true,
				Type = "weapon",
				TypeLabel = "Weapon License",
				Price = 1000,
			},
		},
	},
}
