--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_DaSoocha_Space
	}
		

assault_list1 = {"EclipseI"}
assault_list2 = {"Corellian_Gunboat", "Corellian_Gunboat"}
assault_list3 = {"Allegiance", "Allegiance", "Allegiance"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_DaSoocha_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), false, false)) do
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
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Empire"), false, false)) do
					unit.Attack_Move(attack_ship_move_to_marker)
				end	
				Eclipse = Find_First_Object("EclipseI")
				if not Eclipse then
					for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), false, false)) do
						unit.Attack_Move(attack_ship_move_to_marker)
					end	
				end
				
			
		end	
end