--3 Way GC Space Battles
--By Sidious Invader

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"SmallGolanIII_Underworld"}
assault_list2 = {"GolanIIIUnderworld"}
assault_list3 = {"HYPERGUNSPACE_Underworld"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end

		if message == OnEnter then

                spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
				spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
				spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Pirates"), true, true)
				SpawnList(assault_list2, spawn_marker2, Find_Player("Pirates"), true, true)
				SpawnList(assault_list3, spawn_marker3, Find_Player("Pirates"), true, true)
                Sleep(5)
        end
end
