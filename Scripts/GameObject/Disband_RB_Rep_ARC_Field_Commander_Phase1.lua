--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_Heavy_Assault_Phase1_Company", "Republic_Heavy_Assault_Phase1_Company", "Republic_Heavy_Assault_Phase1_Company", "Republic_Heavy_Assault_Phase1_Company", "Republic_Heavy_Assault_Phase1_Company", "Rep_Hovermoto_Phase1_Squad", "Rep_Hovermoto_Phase1_Squad", "Republic_ATXT_Scout_Squad", "Republic_ATXT_Scout_Squad", "Republic_ATXT_Scout_Squad", "Republic_ATXT_Scout_Squad", "ClonPhase1Plex_Squad", "ClonPhase1Plex_Squad", "ClonPhase1Plex_Squad", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_C", "Republic_LAAT_C", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Rep_Venator", "Rep_Venator", "Rep_Venator", "Rep_Med_CRU", "Rep_Med_CRU" }
		

end

function State_Init( message )
       if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"RB_E_Rep_ARC_Commander_P1_Squad"}
		
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




