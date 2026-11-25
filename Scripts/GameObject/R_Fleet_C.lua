--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Calamari_Cruiser_Up_80c", "Mc80a_Up", "Mc80_EJ_II", "Mc80b_EJ_II", "Mc80a_Up", "Mc80b_EJ_II", "Mc80_EJ_II", "Liberator", "Liberator", "R_Dreadnought_Up", "R_Dreadnought_Up", "R_Dreadnought_Up" }
		

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





