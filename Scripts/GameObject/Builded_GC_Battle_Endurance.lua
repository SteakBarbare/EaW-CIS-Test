--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = {"CR_Endurance"}
	
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("Rebel")
		spawn_zone1 = Find_First_Object("Attacker Entry Position")
		
		
		ReinforceList(unit_list1, spawn_zone1, player, true, true, false, Move_Order1)

		Sleep(5)
	end
end
function Move_Order1()
	Nave1 = Find_All_Objects_Of_Type("CR_Endurance")

	attack_ship_move_to_marker = Find_Nearest(Object, Find_Player("Empire"), true)
		
	for k, unit in pairs(Nave1) do
			unit.Attack_Move(attack_ship_move_to_marker)
	end
end






