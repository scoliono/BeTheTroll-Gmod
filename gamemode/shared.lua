GM.Name 	= "Be The Troll"
GM.Author 	= "MinecraftForest"
GM.Email 	= "N/A"
GM.Website 	= "N/A"

function GM:Initialize()

	self.BaseClass.Initialize( self )
	
end

//setting up teams
team.SetUp(1, "The Trolls", Color(255,0,0))
team.SetUp(2, "The Innocents", Color(0,0,255))
team.SetUp(3, "Spectators", Color(192,192,192))

//player models for different teams
// innocents: alyx
// trolls: breen
// spectators: kleiner
util.PrecacheModel("models/player/alyx.mdl")
util.PrecacheModel("models/player/breen.mdl")
util.PrecacheModel("models/player/kleiner.mdl")