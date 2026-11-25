--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Factoria_Cazas_ICOM"}
assault_list2 = {"Factory_Plattform"}
assault_list3 = {"Factoria_Naves_Ligeras"}
assault_list4 = {"REP_ARC-170_Squadron_E", "REP_ARC-170_Squadron_E", "Z95_Headhunter_REP_Squadron", "Z95_Headhunter_REP_Squadron"}
assault_list5 = {"Republic_TIE_Squadron", "Republic_TIE_Squadron", "REP_VWing_Squadron_E", "REP_VWing_Squadron_E", "Republic_Y_Wing_Squadron", "Republic_Y_Wing_Squadron"}
assault_list6 = {"CR20", "CR20", "Republic_Nu_Shuttle", "Republic_Nu_Shuttle", "Delta_Shuttle", "Delta_Shuttle", "Proto_Shuttle", "Proto_Shuttle"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end
				
				player = object.Get_Owner()

		if message == OnEnter then

				spawn_marker1 = Find_First_Object("Factory_Fighter_Structure_Marker1")
				spawn_marker2 = Find_First_Object("Factory_Fighter_Structure_Marker2")
				spawn_marker3 = Find_First_Object("Factory_Fighter_Structure_Marker3")
                Sleep(1)
				SpawnList(assault_list1, spawn_marker1, player, true, true)
				SpawnList(assault_list2, spawn_marker2, player, true, true)
				SpawnList(assault_list3, spawn_marker3, player, true, true)
                Sleep(2)		
				SpawnList(assault_list4, spawn_marker1, player, true, true)
		Sleep(2)		
				SpawnList(assault_list5, spawn_marker2, player, true, true)
		Sleep(2)			
				SpawnList(assault_list6, spawn_marker3, player, true, true)
                Sleep(5)
ScriptExit()
        end
end
