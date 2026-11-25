--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"EV_MediumGolanI"}
assault_list2 = {"EV_MediumGolanII"}
assault_list3 = {"EV_MediumGolanIII"}
assault_list4 = {"HYPERGUNSPACE"}
assault_list5 = {"IONGUNSPACE"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				end

		if message == OnEnter then
				player = Object.Get_Owner()
				spawn_marker1 = Find_First_Object("Defense_SSDShipyard_Marker1")
				spawn_marker2 = Find_First_Object("Defense_SSDShipyard_Marker2")
				spawn_marker3 = Find_First_Object("Defense_SSDShipyard_Marker3")
				spawn_marker4 = Find_First_Object("Defense_SSDShipyard_Marker5")
				spawn_marker5 = Find_First_Object("Defense_SSDShipyard_Marker6")

				DS1 = Find_First_Object("Defense_1CSPad")
				DS3 = Find_First_Object("Defense_3CSPad")
                Sleep(1)
				if not spawn_marker1 and not spawn_marker2 and not spawn_marker3 and not spawn_marker4 and not spawn_marker5 then
					SpawnList(assault_list4, DS3, player, true, true)
					SpawnList(assault_list5, DS1, player, true, true)
					Sleep(1)
				end
				if spawn_marker1 and spawn_marker2 and spawn_marker3 and spawn_marker4 and spawn_marker5 then
					SpawnList(assault_list1, spawn_marker1, player, true, true)
					SpawnList(assault_list2, spawn_marker2, player, true, true)
					SpawnList(assault_list3, spawn_marker3, player, true, true)
					SpawnList(assault_list4, spawn_marker4, player, true, true)
					SpawnList(assault_list5, spawn_marker5, player, true, true)
					Sleep(5)
				end
        end
end
