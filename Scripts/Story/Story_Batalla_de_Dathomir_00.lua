--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Dathomir_Space = State_Batalla_de_Dathomir_Space
	}
		

assault_list1 = { "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Victory_Destroyer", "Victory_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer" }
assault_list2 = {"Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser"}
assault_list3 = {"Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser", "Hapan_Battledragon", "Hapan_NovaCruiser"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Dathomir_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				
				spawn_marker2 = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				if not spawn_marker2 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker2, Find_Player("Empire"), false, false)) do
					unit.Attack_Move(spawn_marker1)
				end	
				
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(spawn_marker2)
				end	
				Sleep(15)
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(spawn_marker2)
				end	
				
				
			
		end	
end