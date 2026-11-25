--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")

function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = {"IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser" }
unit_list2 = {"IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_Battledragon", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser" }
		

end
function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()					

		
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
				any_active = false
				for i,interdictor in pairs(interdictor_table) do
					if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") and interdictor.Get_Owner().Is_Enemy(player) then
						any_active = true
						if any_active then
						Game_Message("TEXT_MESSAGE_IMP_INTERDICTOR_ACTIVE")
							ScriptExit()
						end
					end
				end
		
		spawn_marker = Find_First_Object("Ha_Isolder_Marker")
		if message == OnEnter then
                ReinforceList(unit_list1, spawn_marker, player, true, true, false, Move_Order1)
				Sleep(5)
		end
		if message == OnEnter then
				ReinforceList(unit_list2, spawn_marker, player, true, true, false, Move_Order1)
				Sleep(5)
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



