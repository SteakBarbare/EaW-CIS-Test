--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = {  "BS_Mix01_Sq", "U_Hailfire_Squad", "C_HAG_Group", "BS_AAT_Group", "U_HeavyOG_9_Group", "U_OG_9_Group", "C_OG_9_MDU_Group", "CIS_FighterTank_Alliance", "C_NR_N99_Tank_Droid_Brigade", "C_CIS_Crabdroid_Group", "C_CIS_walk_Advanced_Group", "BS_MAF_Squad", "BS_MAF_Squad", "U_Cis_Gunship_team", "U_Cis_Gunship_team", "BS_Munificent", "BS_Munificent", "BS_Recusant", "BS_Recusant", "BS_LucrehulkB" }
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"U_Tech0b_Field_Com_BlackSun_Team"}
		
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





