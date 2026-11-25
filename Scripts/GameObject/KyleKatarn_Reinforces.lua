--/////////////////////////////////////////////////////////////////////////////////////////////////
--Dodonna Reinforcement Marker by Sidious Invader. Edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	unit_list = {
		"MoldyCrow_Fighter_Land_squadron"
		
	}
end


function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("KyleKatarn_Marker")
		player = landing_zone.Get_Owner()
		ReinforceList(unit_list, landing_zone, player, false, false, true, Move_Order1)
		Sleep(5)
	end
end
function Move_Order1()
	if Object.Get_Owner().Is_Human() then
				Object.Despawn()	
				ScriptExit()
	end
	Sleep(5)
	all_unit_list = Find_All_Objects_Of_Type("Infantry | Vehicle | Air")
	friendly_unit_list = Find_All_Objects_Of_Type(player)
	
	enemy_Infantry = Find_All_Objects_Of_Type("Infantry")
	enemy_Vehicle = Find_All_Objects_Of_Type("Vehicle")
	enemy_Air = Find_All_Objects_Of_Type("Air")
	
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) then
				enemy_unit_object = all_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
				enemy_infantry_object = enemy_Infantry[1]
				enemy_vehicle_object = enemy_Vehicle[1]
				enemy_air_object = enemy_Air[1]
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				local closest_Infantry = Find_Nearest(enemy_infantry_object, enemy_player, true)
				local closest_Vehicle = Find_Nearest(enemy_vehicle_object, enemy_player, true)
				local closest_Air = Find_Nearest(enemy_air_object, enemy_player, true)
				if TestValid(closest_enemy) then
					if unit.Is_Category("Infantry") then
						unit.Attack_Move(closest_Infantry)
					end
					if unit.Is_Category("Vehicle") then
						unit.Attack_Move(closest_Vehicle)
					end
					if unit.Is_Category("Air") then
						unit.Attack_Move(closest_Air)
					end
				end	
			end
		
		end
	
	
	Sleep(5)
	Object.Despawn()	
	ScriptExit()
end

