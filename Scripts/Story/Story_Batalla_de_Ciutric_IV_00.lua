--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_Ciutric_IV_Space
	}
		

assault_list1 = {"Dominator", "ISD2"}
assault_list2 = {"Rogue_Squadron_Space"}
assault_list3 = {"Y-Wing_Squadron", "Y-Wing_Squadron"}
assault_list4 = {"RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Ciutric_IV_Space(message)
				
	empire_reveal = FogOfWar.Reveal_All(empire_player)
	rebel_reveal = FogOfWar.Reveal_All(rebel_player)
	
	if message == OnEnter then
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			empire_units_list = Find_All_Objects_Of_Type(empire)
			
			
			SpawnList(assault_list1, spawn_marker, empire, false, false)
			
			attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
			
			for k, unit in pairs(empire_units_list) do
				if TestValid(unit) then
					if TestValid(attack_ship_move_to_marker) then
						unit.Attack_Move(attack_ship_move_to_marker)
					end
				end
			end
			Sleep(10)
	end		
	if message == OnEnter then		
			rebel_units_list = Find_All_Objects_Of_Type(rebel)
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			
			SpawnList(assault_list2, spawn_marker, rebel, false, false)
			
			attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
			
			for k, unit in pairs(rebel_units_list) do
				if TestValid(unit) then
					if TestValid(attack_ship_move_to_marker) then
						unit.Attack_Move(attack_ship_move_to_marker)
					end
				end
			end
			Sleep(90)
	end
	if message == OnEnter then		
			rebel_units_list = Find_All_Objects_Of_Type(rebel)
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			
			SpawnList(assault_list3, spawn_marker, rebel, false, false)
			
			attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
			
			for k, unit in pairs(rebel_units_list) do
				if TestValid(unit) then
					if TestValid(attack_ship_move_to_marker) then
						unit.Attack_Move(attack_ship_move_to_marker)
					end
				end
			end
			Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER") --Este texto tiene que estar añadido en el dat
			Sleep(10)
	end
	if message == OnEnter then
	
			rebel_units_list = Find_All_Objects_Of_Type(rebel)
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			
			SpawnList(assault_list4, spawn_marker, rebel, false, false)
			
			attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
			
			for k, unit in pairs(rebel_units_list) do
				if TestValid(unit) then
					if TestValid(attack_ship_move_to_marker) then
						unit.Attack_Move(attack_ship_move_to_marker)
					end
				end
			end
			Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER") --Este texto tiene que estar añadido en el dat
			Sleep(1)
	end
end