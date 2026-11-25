--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "Ga_T9B_Brigade", "EVF_AT_AA_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVF_Hvy_Artillery_Squad", "EVF_Hvy_Artillery_Squad", "GA_B22_Land_squadron", "GA_B22_Land_squadron", "EVF_TIE_Predator_Squadron_Land", "EVF_TIE_Predator_Squadron_Land", "EVF_Sigma_Shuttle_Land_Squad", "EVF_Sigma_Shuttle_Land_Squad", "GA_T2B_Tank_Squad", "GA_T2B_Tank_Squad" }
		

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





