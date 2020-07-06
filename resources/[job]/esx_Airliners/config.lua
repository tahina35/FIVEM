Config                            = {}
Config.DrawDistance               = 100.0
Config.NPCJobEarnings             = {min = 150, max = 350}
Config.MaxInService               = -1
Config.EnablePlayerManagement     = true
Config.EnableSocietyOwnedVehicles = false
Config.Locale                     = 'fr'

Config.AuthorizedVehicles = {

	{
		model = 'velum2',
		label = 'Velum'
	}

}

Config.Zones = {

	VehicleSpawner = {
		Pos     = {},
		Size  = { x = -1056.8, y = -2979.40, z = 13.94 },
		Color = {r = 1, g = 1, b = 1},
		Type  = 1
	},

	VehicleSpawnPoint = {
		Pos     = {},
		Size  = { x = -1062.28, y = -2997.3, z = 13.94 },
		Type    = -1,
		Heading = 270.23
	},

	VehicleDeleter = {
		Pos     = {},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = {r = 255, g = 1, b = 1},
		Type  = 1
	},

	TaxiActions = {
		Pos     = {},
		Size  = { x = -1062.28, y = -2997.3, z = 13.94  },
		Color = {r = 1, g = 1, b = 1},
		Type  = 1
	},

	Cloakroom = {
		Pos     = {},
		Size  = { x = 1.5, y = 1.5, z = 1.0 },
		Color = {r = 1, g = 1, b = 1},
		Type    = 1
	}

}