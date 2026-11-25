--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_Onderon_Space
	}
		

assault_list1 = {"EclipseII"}
assault_list2 = {"Rogue_Squadron_Space", "Gaunlet_Squadron_Space", "Millennium_Falcon", "Kam_Howlrunner"}
assault_list3 = {"E-Wing_Squadron", "E-Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_DaSoocha_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Defending Forces Position")
				enemy = Find_First_Object("EclipseII")
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(enemy)
				end	
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(enemy)
				end	
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(enemy)
				end	
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(enemy)
				end	
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(enemy)
				end	
				
			
		end	
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("ATTACKER ENTRY POSITION")
				attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
	
				Eclipse = Find_First_Object("EclipseII")
				if not Eclipse then
					for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), false, false)) do
						unit.Attack_Move(attack_ship_move_to_marker)
					end	
				end
				
			
		end	
end