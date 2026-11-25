--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Endor_Space = State_Batalla_de_Endor_Space
	}
		

assault_list0 = {"DS_II_Endor_R"}
assault_list1 = {"Executor_Endor"}
assault_list2 = {"Home_One_Endor", "ROGUE_SQUADRON_SPACE"}
assault_list3 = {"LandoMFalcon_Endor", "A_Wing_Dodonna_Squadron"}
assault_list4 = {"MC80A", "A_Wing_Dodonna_Squadron"}	
assault_list5 = {"CALAMARI_CRUISER", "A_Wing_Dodonna_Squadron"}


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Endor_Space(message)
				
		if message == OnEnter then
				spawn_marker0 = Find_Hint("STORY_TRIGGER_ZONE", "deathstar")
				spawn_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "empire0")
				spawn_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "rebels0")
				spawn_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "rebels1")
				spawn_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "rebels2")
				spawn_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "rebels3")
				
				for k, unit in pairs(SpawnList(assault_list0, spawn_marker0, Find_Player("Empire"), false, false)) do
					unit.Guard_Target(spawn_marker0)
				end
				
				zona_combate1 = Find_Hint("STORY_TRIGGER_ZONE", "combate1")
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), false, false)) do
					unit.Guard_Target(spawn_marker2)
				end		
				
				zona_combate2 = Find_Hint("STORY_TRIGGER_ZONE", "combate2")
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
				zona_combate3 = Find_Hint("STORY_TRIGGER_ZONE", "combate3")
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker3, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
				zona_combate4 = Find_Hint("STORY_TRIGGER_ZONE", "combate4")
				for k, unit in pairs(SpawnList(assault_list4, spawn_marker4, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
				zona_combate5 = Find_Hint("STORY_TRIGGER_ZONE", "combate5")
				for k, unit in pairs(SpawnList(assault_list5, spawn_marker5, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
		end	
end