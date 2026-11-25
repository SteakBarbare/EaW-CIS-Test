--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "C_AAT_Group", "C_AAT_Group", "C_AAT_Group", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad", "C_BattleDroid_Squad", "C_BattleDroid_Squad", "C_BattleDroid_Squad", "CIS_FighterTank_Alliance", "CIS_FighterTank_Alliance", "C_OCTUPARRA_Group", "C_OCTUPARRA_Group", "C_CIS_walk_Advanced_Group", "C_CIS_walk_Advanced_Group", "C_Cis_MAF_team", "C_Cis_MAF_team", "C_Stap_Squad", "C_Stap_Squad", "C_OG_9_Group", "C_OG_9_Group", "C_PlexDroidB1_Squad", "C_PlexDroidB1_Squad", "C_PlexDroidB1_Squad", "B1Droid_Sniper_Squad", "B1Droid_Sniper_Squad", "C_Super_BattleDroidB3_Squad", "C_Super_BattleDroidB3_Squad" }
		

end

function State_Init( message )
     if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"RB_R_CIS_Ground_Commander_Squad"}
		
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





