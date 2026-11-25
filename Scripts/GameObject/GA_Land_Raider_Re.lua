-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O
--Reinforcement Marker by Sidious Invader.

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	reinforcement_list = {
		"GA_LightSpeeder_Squad"
		
	}
end


function State_Init(message)
	if message == OnEnter then
		
		landing_zone = Find_First_Object("Land_Raider_Marker")
		player = landing_zone.Get_Owner()
		new_units = SpawnList(reinforcement_list, landing_zone, player, true, true)
		
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Vehicle | Infantry | Structure")
		Sleep(2)		
		for k, unit in pairs(new_units) do
			if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				if TestValid(closest_enemy) then
					unit.Attack_Move(closest_enemy)
				end	
			end
		end		
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
end





