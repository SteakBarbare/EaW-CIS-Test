--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"U_Ground_Barracks"}

end

function State_Init(message)
			if Object.Get_Owner().Is_Human() then
				ScriptExit()		
			end		
			
				if Get_Game_Mode() ~= "Land" then
				ScriptExit()
				end
		Sleep(2)		
		player = Object.Get_Owner()
		if message == OnEnter then	
			Golanposition1 = Find_First_Object("In Base Special Structure Position")
			
			if Golanposition1 then
				SpawnList(assault_list1, Golanposition1, player, true, true)
			end
			
		end
			Sleep(2)
			ScriptExit()
end
