--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_S2_Tank_Squad", "EVK_ATSTAP_AA_Walker_Squad", "EVK_AT_ST_Walker_Squad", "EVK_AT_ST_Walker_Squad", "EVK_ATSC_Squad", "EVK_ATSC_Squad", "EVK_Assault_Bomber_Land_Squad", "EVK_Assault_Bomber_Land_Squad", "EVK_TIEReaper_Squadron_Land", "EVK_TIEReaper_Squadron_Land", "EVK_LAV_Squad", "EVK_LAV_Squad", "EVK_Patrol_Speeder_Squad", "EVK_Patrol_Speeder_Squad" }
		

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





