--3 Way GC Space Battles
--By Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

unit_list1 = {"Factory_Plattform"}
unit_list4 = {"Cis_DroidBomber_SquadronB", "CIS_Hyena_SquadronB"}
unit_list5 = {"CIS_Vulture_SquadronB", "CIS_Tridroid_SquadronB", "CIS_Scarab_SquadronB"}
unit_list6 = {"CIS_Boarding", "Gtrans_Landing_Craft", "Sheathipede_Shuttle", "C9979_Landing_Craft"}

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
				SpawnList(unit_list1, spawn_marker2, player, true, true)		
				SpawnList(unit_list1, spawn_marker3, player, true, true)		
				ReinforceList(unit_list4, spawn_marker1, player, true, true, true, Move_Order1)
				ReinforceList(unit_list5, spawn_marker2, player, true, true, true, Move_Order1)
				ReinforceList(unit_list6, spawn_marker3, player, true, true, true, Move_Order1)	
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
