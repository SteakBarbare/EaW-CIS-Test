--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Rep_Plataforma_Mando_MKI_Team", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Rep_Hovermoto_Phase1_Squad", "Rep_Hovermoto_Phase1_Squad", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_Clon_Sniper_Phase1_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad" }
		

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





