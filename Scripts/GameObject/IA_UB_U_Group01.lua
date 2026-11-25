--Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

unit_list1 = { "U_Solo_IA_Space" }
	
end


function State_Init(message)
	if message == OnEnter then
		spawn_zone1 = Find_First_Object("The_Peacebringer_MP")
				
		player = spawn_zone1.Get_Owner()
						
		if player.Is_Human() then
			ScriptExit()
		end
				
		if spawn_zone1 then
			ReinforceList(unit_list1, spawn_zone1, player, true, false, false)
			Sleep(30)
		end
					
	end
end





