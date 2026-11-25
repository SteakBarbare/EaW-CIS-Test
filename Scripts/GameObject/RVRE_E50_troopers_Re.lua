-- O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	reinforcement_list = {
		"RVRE_Assault_Squad"
		
	}
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("RVRE")
		landing_zone = Find_First_Object("RVRE_E50_troopers_Marker")
		SpawnList(reinforcement_list, landing_zone, player, false, true)
		Sleep(5)
		attack_ship = Find_All_Objects_Of_Type("Squad_RVRE_Assault_Trooper")
		
		if not attack_ship then
			return
		end
		closest_enemy = Find_Nearest(Object, Find_Player("EVFO"), true)	
		if TestValid(closest_enemy) then
			attack_ship.Attack_Move(closest_enemy)
		end
		Sleep(5)
		Object.Despawn()
	end
end





