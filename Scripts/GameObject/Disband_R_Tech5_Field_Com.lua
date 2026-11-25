--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "LHTC9_SquadRebel_New_Assault_Company", "Grupo_CadenasRX1", "Rebel_AAC-1_Tank_Brigade", "Rebel_Hovernaut", "Rebel_Artillery_Brigade", "Gallofree_Assault_Company", "Rebel_K_WingLand_squadron", "Rebel_K_WingLand_squadron", "Rebel_V_Wing_airspeeder_squadron", "Rebel_V_Wing_airspeeder_squadron", "Mc80_EJ", "Mc80_EJ", "Mc80_EJ", "RV_Nebulon_C", "RV_Nebulon_C" } 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"R_Tech5_Field_Com_Rebel_Team"}
		
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





