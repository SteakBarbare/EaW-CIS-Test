--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"EVF_GolanVI"}
assault_list2 = {"EVF_GolanVI"}
assault_list3 = {"EVF_GolanVI"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				end
	
		if message == OnEnter then
				player = Object.Get_Owner()
		                spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
				spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
				spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
                Sleep(1)
				SpawnList(assault_list1, spawn_marker1, player, true, true)
				SpawnList(assault_list2, spawn_marker2, player, true, true)
				SpawnList(assault_list3, spawn_marker3, player, true, true)
                Sleep(5)
        end
end
