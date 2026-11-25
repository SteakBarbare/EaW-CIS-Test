--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

starbase_re1 = {"IA_EVK_Ardent", "IA_EVK_Shipping_Vessel", "IA_EVK_Assassin_Corvette", "IA_EVK_Assassin_Corvette", "IA_EVK_Vigil", "IA_EVK_Vigil"}
starbase_re2 = {"IA_EVK_Ardent", "IA_EVK_Shipping_Vessel", "IA_EVK_Custom_CV", "IA_EVK_Custom_CV", "IA_EVK_Vigil", "IA_EVK_Vigil"}
starbase_re3 = {"IA_EVK_Ardent", "IA_EVK_Ardent", "IA_EVK_Custom_CV", "IA_EVK_Custom_CV", "IA_EVK_Custom_CV", "IA_EVK_Custom_CV"}

end



function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()			

		Sleep(60)	
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
		
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
		Sleep(5)
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER") 
		starbaseRe_marker1 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER1")
		starbaseRe_marker2 = Find_First_Object("DEFENSE_4CSPAD")
		starbaseRe_marker3 = Find_First_Object("ORBITAL SPECIAL STRUCTURE POSITION")
		starbaseRe_marker4 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER2")
		starbaseRe_marker5 = Find_First_Object("DEFENDING FORCES POSITION")
		Sleep(1)
		chances = nil
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				ReinforceList(starbase_re1, starbaseRe_marker1, player, true, true, false, Move_Order1)
			end	
			if chances == 2 then
				ReinforceList(starbase_re2, starbaseRe_marker1, player, true, true, false, Move_Order1)
			end	
			if chances == 3 then
				ReinforceList(starbase_re3, starbaseRe_marker1, player, true, true, false, Move_Order1)
			end	
			
		end
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



