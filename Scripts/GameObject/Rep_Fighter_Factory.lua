--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = {"Factory_Plattform"}
unit_list2 = {"Factoria_Naves_Ligeras"}
unit_list3 = {"Rep_TIE_SquadronB", "Rep_Clockshape_SquadronB"}
unit_list4 = {"REP_VWing_SquadronB", "Rep_ARC-170_SquadronB"}
unit_list5 = {"Rep_Freefall_SquadronB", "Rep_Havoc_SquadronB"}

end
function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 

		spawn_marker1 = Find_First_Object("Factory_Fighter_Structure_Marker1")
		spawn_marker2 = Find_First_Object("Factory_Fighter_Structure_Marker2")
		spawn_marker3 = Find_First_Object("Factory_Fighter_Structure_Marker3")

		player = Object.Get_Owner()				
		
		Sleep(2)				

		if message == OnEnter then	
				SpawnList(unit_list1, spawn_marker1, player, true, true)
				SpawnList(unit_list2, spawn_marker2, player, true, true)		
				SpawnList(unit_list1, spawn_marker3, player, true, true)		
				ReinforceList(unit_list3, spawn_marker1, player, true, true, true, Move_Order1)
				ReinforceList(unit_list4, spawn_marker2, player, true, true, true, Move_Order1)
				ReinforceList(unit_list5, spawn_marker3, player, true, true, true, Move_Order1)	
		end
		
end
function Move_Order1()
	allied_unit_list = Find_All_Objects_Of_Type(player)
		
	attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
	
	if not Object.Get_Owner().Is_Human() then
		for k, unit in pairs(allied_unit_list) do
			if TestValid(unit) then
				if TestValid(attack_ship_move_to_marker) then
					unit.Attack_Move(attack_ship_move_to_marker)
				end
			end
		end
	end	
	Sleep(5)
ScriptExit()
end



