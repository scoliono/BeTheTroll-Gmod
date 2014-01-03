
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( 'shared.lua' )


// Serverside only stuff goes here

/*---------------------------------------------------------
   Name: gamemode:PlayerLoadout( )
   Desc: Give the player the default spawning weapons/ammo
---------------------------------------------------------*/
function GM:PlayerInitialSpawn( ply )
	while table.Count(player.GetAll()) < 6 do
		ply:SetTeam(3)
	end
	ply:SetTeam(3)
	local rdmGen = math.random(1,2)
		ply:SetTeam(rdmGen)
	end

	if trollPlayers > purePlayers then
		ply:SetTeam(2)
	elseif purePlayers > trollPlayers then
		ply:SetTeam(1)
	end
end

function GM:PlayerSpawn (ply)
	if ply:Team() == 1 then
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
		ply:Give("weapon_357")
		ply:Give("weapon_shotgun")
	end
	
end
