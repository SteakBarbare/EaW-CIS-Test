--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "C_BattleDroid_Squad", "C_BattleDroid_Squad", "C_BattleDroid_Squad", "C_NR_N99_Tank_Droid_Brigade", "C_NR_N99_Tank_Droid_Brigade", "C_NR_N99_Tank_Droid_Brigade", "C_CIS_Crabdroid_Group", "C_CIS_Crabdroid_Group", "C_CIS_Chamaleon_Group", "C_CIS_Chamaleon_Group", "C_CIS_walk_DW_Group", "C_CIS_walk_DW_Group", "C_Cis_Gunship_team", "C_Cis_Gunship_team", "C_Cis_Gunship_team", "C_Cis_Gunship_team", "C_HeavyOG_9_Group", "C_HeavyOG_9_Group", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad", "C_PlexDroidB1_Squad", "C_PlexDroidB1_Squad", "B1Droid_Sniper_Squad", "B1Droid_Sniper_Squad" }
		

end

function State_Init( message )
      if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"RB_R_CIS_Tactical_Droid_Squad"}
		
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





