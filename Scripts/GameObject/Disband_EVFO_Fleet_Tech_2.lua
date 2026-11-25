--// edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "EVFO_ISD1", "EVFO_ISD1", "EVFO_Enforcer", "EVFO_Enforcer", "EVFO_Attack_Carrier", "EVFO_Attack_Carrier", "EV_Med_CRU", "EV_Med_CRU", "EVFO_AcclamatorII", "EVFO_AcclamatorII", "EVFO_Nebulon_B2", "EVFO_Nebulon_B2", "EVFO_VSD2", "EVFO_VSD2", "EV_Med_CRU", "E_Raider", "E_Raider", "E_Raider", "EVFO_Gozanti", "EVFO_Gozanti", "EVFO_Gozanti" } 

end

function State_Init( message )
     if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"EVFO_Fleet_Tech_2"}
		
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
