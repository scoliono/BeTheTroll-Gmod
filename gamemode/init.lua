
AddCSLuaFile( "cl_init.lua" )
AddCSLuaFile( "shared.lua" )

include( 'shared.lua' )


// Serverside only stuff goes here

/*---------------------------------------------------------
   Name: gamemode:PlayerLoadout( )
   Desc: Give the player the default spawning weapons/ammo
---------------------------------------------------------*/
function GM:PlayerInitialSpawn( ply )
	ply:SetGravity(0.25)
	ply:SetRunSpeed(750)
end

function GM:PlayerSpawn (ply)
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