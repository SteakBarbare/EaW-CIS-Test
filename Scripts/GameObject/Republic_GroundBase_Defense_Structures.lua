--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Republic_Ground_Base_Shield"}
assault_list2 = {"Power_Generator_Republic"}
assault_list3 = {"Republic_Ground_Turbolaser_Tower" }
assault_list4 = {"Republic_Ground_Turbolaser_Tower" }
assault_list5 = {"Republic_Ground_Turbolaser_Tower" }
assault_list6 = {"Republic_Ground_Turbolaser_Tower" }

end

function State_Init(message)


		if message == OnEnter then

                spawn_marker1 = Find_First_Object("BASE SHIELD STRUCTURE POSITION")
				spawn_marker2 = Find_First_Object("POWER GENERATOR STRUCTURE POSITION")
				spawn_marker3 = Find_First_Object("TURBOLASER STRUCTURE POSITION")
				spawn_marker4 = Find_First_Object("Defending Forces Position")
				spawn_marker5 = Find_First_Object("Garrison Position")
				spawn_marker6 = Find_First_Object("Out Base Special Structure Position")
				player = spawn_marker1.Get_Owner()
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, player, true, true)
				SpawnList(assault_list2, spawn_marker2, player, true, true)
				SpawnList(assault_list3, spawn_marker3, player, true, true)
				SpawnList(assault_list4, spawn_marker4, player, true, true)
				SpawnList(assault_list5, spawn_marker5, player, true, true)
				SpawnList(assault_list6, spawn_marker6, player, true, true)
                Sleep(5)
        end
end
