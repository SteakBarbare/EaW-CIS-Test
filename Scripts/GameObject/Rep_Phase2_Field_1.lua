--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Republic_Field_Commander_Phase2_Team", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_Hovermoto_Phase2_Squad", "Rep_Hovermoto_Phase2_Squad", "Rep_Stun_Tank_Corp", "Rep_Stun_Tank_Corp", "ClonPhase2Plex_Squad", "ClonPhase2Plex_Squad", "ClonPhase2Plex_Squad", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_EWEB_troopers_Phase2_Squad", "Republic_EWEB_troopers_Phase2_Squad", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Clon_Sniper_Phase2_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_ARC_170_Squadron_Land", "Republic_ARC_170_Squadron_Land", "Republic_Vwing_Land_Company", "Republic_Vwing_Land_Company" }
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
	
	Object.Despawn() 
        Sleep( 1.0 )
	ScriptExit()
end





