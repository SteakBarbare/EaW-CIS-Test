--// edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Ch_SSD", "Ch_Hvy_Carrier", "CH_SDIII", "CH_SDII", "CH_SDI", "Ch_Patrol_CR", "Ch_Patrol_CR", "Ch_Patrol_CR", "Ch_Algol", "Ch_Algol", "Ch_Algol", "Ch_Cardinal_FRG", "Ch_Cardinal_FRG", "Ch_Cardinal_FRG", "Ch_Picket_Carrier", "Ch_Picket_Carrier", "Ch_Picket_Carrier", "Ch_Ivalice", "Ch_Ivalice", "Ch_Ivalice" }

end

function State_Init( message )
      if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"Ch_Fleet"}
		
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