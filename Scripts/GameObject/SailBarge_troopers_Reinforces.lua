--Edit by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	reinforcement_list = {
		"Underworld_Merc_Squad"
		
	}
end


function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("SailBarge_troopers_Marker")
		player = landing_zone.Get_Owner()
		new_units = SpawnList(reinforcement_list, landing_zone, player, true, true)
		attack_ship = new_units[1]
		
		attack_ship_move_to_marker_A = Find_First_Object("Base Shield Structure Position")
		attack_ship_move_to_marker_B = Find_First_Object("Team_01_Base_Position_Marker")
		
		if TestValid(attack_ship_move_to_marker_A) then
			for k, unit in pairs(attack_ship) do
					unit.Attack_Move(attack_ship_move_to_marker_A)
			end
		end
		if TestValid(attack_ship_move_to_marker_B) then
			for k, unit in pairs(attack_ship) do
					unit.Attack_Move(attack_ship_move_to_marker_B)
			end
		end
		Object.Despawn()
	end
end





