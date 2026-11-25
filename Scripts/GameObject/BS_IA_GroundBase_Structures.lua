-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"U_Ground_Vehicle_Factory"}
assault_list2 = {"U_Ground_Droid_Works"}

end

function State_Init(message)


		if message == OnEnter then
			if Object.Get_Owner().Is_Human() then
				ScriptExit()
			end

			spawn_marker1 = Find_First_Object("BASE SHIELD STRUCTURE POSITION")
			spawn_marker2 = Find_First_Object("POWER GENERATOR STRUCTURE POSITION")

			Sleep(1)
			SpawnList(assault_list1, spawn_marker1, Find_Player("Underworld"), true, true)
			SpawnList(assault_list2, spawn_marker2, Find_Player("Underworld"), true, true)
				
                Sleep(5)
		ScriptExit()
		end
end
