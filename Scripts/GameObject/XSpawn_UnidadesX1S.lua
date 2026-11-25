-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
unit_list1 = { "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Tector", "Tector" }
	
	
end


function State_Init(message)
	if message == OnEnter then
		
		player = Find_Player("Underworld")
		
		spawn_marker = Find_First_Object("XSpawn_UnidadesX1S")

		if message == OnEnter then
                ReinforceList(unit_list1, spawn_marker, player, true, true, false, Move_Order1)
				Sleep(2)
		end
		if message == OnEnter then
				ReinforceList(unit_list1, spawn_marker, player, true, true, false, Move_Order1)
				Sleep(2)
		end
		if message == OnEnter then
				ReinforceList(unit_list1, spawn_marker, player, true, true, false, Move_Order1)
                Sleep(2)
        end
				
	end
end
function Move_Order1()
	allied_unit_list = Find_All_Objects_Of_Type(player)
		
	attack_ship_move_to_marker = Find_First_Object("POSICION_ATAQUE_02")
	
	if not Object.Get_Owner().Is_Human() then
		for k, unit in pairs(allied_unit_list) do
			if TestValid(unit) then
				if TestValid(attack_ship_move_to_marker) then
					unit.Attack_Move(attack_ship_move_to_marker)
				end
			end
		end
	end	
end




