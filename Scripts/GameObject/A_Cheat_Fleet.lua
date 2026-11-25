--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

Enemey_re1 = {"IA_CH_SDI2", "IA_CH_SDI2", "IA_CH_SDI2", "IA_CH_SDI2", "IA_CH_SDI2"}
Enemey_re2 = {"IA_Ch_Cardinal_FRG", "IA_Ch_Cardinal_FRG", "IA_Ch_Cardinal_FRG", "IA_Ch_Cardinal_FRG", "IA_Ch_Cardinal_FRG"}
Enemey_re3 = {"IA_Ch_Picket_Carrier", "IA_Ch_Picket_Carrier", "IA_Ch_Picket_Carrier", "IA_Ch_Picket_Carrier", "IA_Ch_Picket_Carrier"}
Enemey_re4 = {"IA_Ch_Patrol_CR", "IA_Ch_Patrol_CR", "IA_Ch_Patrol_CR", "IA_Ch_Patrol_CR", "IA_Ch_Patrol_CR"}
Enemey_re5 = {"IA_Ch_Algol", "IA_Ch_Algol", "IA_Ch_Algol", "IA_Ch_Algol", "IA_Ch_Algol"}
Enemey_re6 = {"IA_Ch_ISC", "IA_Ch_ISC", "IA_Ch_ISC", "IA_Ch_ISC", "IA_Ch_ISC"}

end



function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()			

		Sleep(5)
		starbaseRe_marker1 = Find_First_Object("Attacker Entry Position")

		Sleep(5)
		
				ReinforceList(Enemey_re1, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(Enemey_re2, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(Enemey_re3, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(Enemey_re4, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(Enemey_re5, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(Enemey_re6, starbaseRe_marker1, player, true, true, false, Move_Order1)
			
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
end



