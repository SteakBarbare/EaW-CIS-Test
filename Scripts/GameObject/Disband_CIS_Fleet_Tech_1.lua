--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "CIS_LucrehulkC", "CIS_LucrehulkB", "CIS_LucrehulkB02", "CIS_LucrehulkB02", "CIS_Missile_Frg", "CIS_Missile_Frg", "CIS_Missile_Frg", "CIS_LucrehulkD", "CIS_LucrehulkD", "CIS_Recusant", "CIS_MunificentClan", "CIS_Recusant", "CIS_MunificentClan", "CIS_Recusant" }
		

end

function State_Init( message )
     if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"CIS_Fleet_Tech_1"}
		
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





