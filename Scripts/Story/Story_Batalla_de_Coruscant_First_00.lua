--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_Coruscant_First_Space
	}
		

assault_list1 = {"Victory_Destroyer", "Victory_Destroyer", "Star_Destroyer", "Star_Destroyer"}
assault_list2 = {"MC120", "MC80c", "CALAMARI_CRUISER", "NEBULON_B_FRIGATE"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Coruscant_First_Space(message)
				
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