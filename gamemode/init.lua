AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( 'shared.lua' )

// Serverside only stuff goes here

function CheckMinPlayers(pl)
	if table.Count(player.GetAll()) < 3 then
		PrintMessage(HUD_PRINTTALK, "Not enough players to start a game. Checking again in 15 seconds...")
	else
		timer.Stop("CheckMinPlayersTimer")
		rdmGen = math.random(1,2)
		pl:SetTeam(rdmGen)
		
		trollPlayers = team.NumPlayers(1)
		purePlayers = team.NumPlayers(2)
		
		if math.floor(trollPlayers/3) > purePlayers then
			// not enough innocents
			pl:SetTeam(2)
		elseif purePlayers > math.floor(trollPlayers/3) then
			// there are too many innocents
			pl:SetTeam(1)
		end
	end
end

function GM:PlayerInitialSpawn( ply )
	
	timer.Create("CheckMinPlayersTimer", 15, 0, function() CheckMinPlayers() end)
	
end

function GM:PlayerSpawn (ply)
	if ply:Team() == 1 then
		ply:SetModel("models/player/breen.mdl")
	
		ply:SetGravity(0.25)
		ply:SetRunSpeed(750)
		
		ply:GiveAmmo(9999, "Pistol", false)
		ply:GiveAmmo(9999, "357", false)
		ply:GiveAmmo(9999, "SMG1", false)
		ply:GiveAmmo(9999, "SMG1_Grenade", false)
		ply:GiveAmmo(9999, "Buckshot", false)
		ply:GiveAmmo(9999, "AR2", false)
		ply:GiveAmmo(9999, "AR2AltFire", false)
		ply:GiveAmmo(9999, "RPG_Round", false)
		ply:GiveAmmo(9999, "XBowBolt", false)
		ply:GiveAmmo(9999, "grenade", false)
		
		ply:Give("weapon_crowbar")
		ply:Give("weapon_pistol")
		ply:Give("weapon_357")
		ply:Give("weapon_smg")
		ply:Give("weapon_shotgun")
		ply:Give("weapon_ar2")
		ply:Give("weapon_rpg")
		ply:Give("weapon_crossbow")
		ply:Give("weapon_frag")
		ply:Give("weapon_stunstick")
	end
	if ply:Team() == 2 then
		ply:SetModel("models/player/alyx.mdl")
	
		ply:Give("weapon_357")
		ply:Give("weapon_shotgun")
	end
	if ply:Team() == 3 then
		ply:SetModel("models/player/kleiner.mdl")
	end
end
