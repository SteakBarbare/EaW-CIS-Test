-- O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	reinforcement_list = {
		"Imperial_Stormtrooper_Squad"
		
	}
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("Empire")
		landing_zone = Find_First_Object("Juggernaut_troopers_Marker")
		SpawnList(reinforcement_list, landing_zone, player, false, true)
		Sleep(5)
		attack_ship = Find_All_Objects_Of_Type("Squad_Stormtrooper")
		
		if not attack_ship then
			return
		end
		closest_enemy = Find_Nearest(Object, Find_Player("Rebel"), true)	
		if TestValid(closest_enemy) then
			attack_ship.Attack_Move(closest_enemy)
		end
		Sleep(5)
		Object.Despawn()
	end
end





