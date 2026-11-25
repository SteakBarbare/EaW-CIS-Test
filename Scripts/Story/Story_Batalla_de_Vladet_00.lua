--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_Vladet_Space
	}
		

assault_list1 = {"Lancer", "Lancer", "Lancer", "Lancer", "Lancer", "Lancer", "E_Strike", "E_Strike", "E_Strike", "E_Strike", "E_Strike", "E_Strike"}
assault_list2 = {"Rogue_Squadron_Space", "Corellian_Corvette", "Corellian_Corvette", "Corellian_Corvette", "Corellian_Gunboat", "Corellian_Gunboat", "Corellian_Gunboat", "Y-Wing_Squadron", "Y-Wing_Squadron", "Y-Wing_Squadron", "Y-Wing_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Vladet_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("empire"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
				
			
		end	
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("ATTACKER ENTRY POSITION")
				attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("rebel"), false, false)) do
					unit.Attack_Move(attack_ship_move_to_marker)
				end	
				
				
			
		end	
end