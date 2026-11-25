--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Rep_Hovermoto_Phase1_Squad", "Rep_Hovermoto_Phase1_Squad", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_Clon_Sniper_Phase1_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "REP_AcclamatorI", "REP_AcclamatorI", "REP_AcclamatorI", "Rep_Lt_CRU", "Rep_Lt_CRU" }
		

end

function State_Init( message )
      if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"RB_E_Rep_P_Mando_P1_Squad"}
		
		for i = 1, table.getn( GRTeam_1 ), 1 do 
          local small_transport_list = Find_All_Objects_Of_Type(GRTeam_1[i]) 
             if TestValid(small_transport_list[1]) then 
               for k,unit in pairs( small_transport_list ) do  
                  if unit.Get_Planet_Location() == Object.Get_Planet_Location() then 
                    unit.Despawn() 
                     break   
                 end 
               end 
           end 
        end
		
		
	Object.Despawn() 
    Sleep( 1.0 )
	ScriptExit()
end





