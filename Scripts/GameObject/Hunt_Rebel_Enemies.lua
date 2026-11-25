-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	move_command = true
	
	empire_player = Find_Player("Empire")
	rebel_player = Find_Player("Rebel")
	underworld_player = Find_Player("Underworld")
	
end

function State_Init(message)
	
	if (move_command == true) then
		if TestValid(Find_First_Object("Defending Forces Position")) then
			defender = empire_player
		else
			defender = rebel_player
		else
			defender = underworld_player	
		end
	
		Create_Thread("hunt", defender)
		--MessageBox("Thread created")
		
		move_command = false
	end

end

function hunt(faction)
	if faction == Find_Player("Rebel") then
		rand_num = GameRandom(1,2)
		if rand_num == 1 then
			faction = underworld_player
		end
		if rand_num == 2 then
			faction = Empire_player
		end
	end
	while TestValid(Object) do
		closest_enemy = Find_Nearest(Object, faction, true)	
		if TestValid(closest_enemy) then
			Object.Attack_Move(closest_enemy)
		end
	Sleep(1)
	end
end