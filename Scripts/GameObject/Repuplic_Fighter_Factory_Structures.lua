--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Factoria_Cazas_KOEN"}
assault_list2 = {"Factoria_Cazas_ICOMCLON"}
assault_list3 = {"Factoria_Cazas_KOEN"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end

		if message == OnEnter then

                spawn_marker1 = Find_First_Object("Factory_Fighter_Structure_Marker1")
				spawn_marker2 = Find_First_Object("Factory_Fighter_Structure_Marker2")
				spawn_marker3 = Find_First_Object("Factory_Fighter_Structure_Marker3")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Republic"), true, true)
				SpawnList(assault_list2, spawn_marker2, Find_Player("Republic"), true, true)
				SpawnList(assault_list3, spawn_marker3, Find_Player("Republic"), true, true)
               Sleep(5)
				ScriptExit()
        end
end
