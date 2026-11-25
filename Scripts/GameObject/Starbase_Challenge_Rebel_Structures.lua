--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"R_GolanIII"}
assault_list2 = {"R_GolanIII"}
assault_list3 = {"R_GolanIII"}
assault_list4 = {"RV_MediumGolanIII"}
assault_list5 = {"RV_MediumGolanIII"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end

		if message == OnEnter then

				spawn_marker1 = Find_First_Object("Defense_SSDShipyard_Marker2")
				spawn_marker2 = Find_First_Object("Defense_SSDShipyard_Marker3")
				spawn_marker3 = Find_First_Object("Defense_SSDShipyard_Marker4")
				spawn_marker4 = Find_First_Object("Defense_SSDShipyard_Marker5")
				spawn_marker5 = Find_First_Object("Defense_SSDShipyard_Marker6")
                Sleep(1)
				SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)
				SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), true, true)
				SpawnList(assault_list3, spawn_marker3, Find_Player("Rebel"), true, true)
				SpawnList(assault_list4, spawn_marker4, Find_Player("Rebel"), true, true)
				SpawnList(assault_list5, spawn_marker5, Find_Player("Rebel"), true, true)
                Sleep(5)
        end
end
