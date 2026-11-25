--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_ConflictatMylokIV_Space = State_Inicio_mision,
		Refuerzos_Rebeldes_01 = State_Refuerzos_Rebeldes_01,
		Refuerzos_Rebeldes_02 = State_Refuerzos_Rebeldes_02
	}

assault_list0 = {"Y-Wing_SquadronB", "Rebel_X-Wing_SquadronB", "A_Wing_SquadronB"}

assault_list1 = {"B-Wing_SquadronB", "Rebel_X-Wing_SquadronB", "A_Wing_SquadronB"}
	
assault_list2 = {"Gunboat_SquadronB", "Gunboat_SquadronB", "Gunboat_SquadronB"}	


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")

end
function State_Inicio_mision(message)
				
		if message == OnEnter then
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
							
		end	
end
function State_Refuerzos_Rebeldes_01(message)
				
		if message == OnEnter then
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				wave_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4")
									
				for k, unit in pairs(SpawnList(assault_list0, wave_marker4, Find_Player("Rebel"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Guard_Target(wave_marker2)
				end
				
				Story_Event("MISSION_00_DIALOGUE_GO")
				
				
		end	
end
function State_Refuerzos_Rebeldes_02(message)
				
		if message == OnEnter then
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
									
				for k, unit in pairs(SpawnList(assault_list1, wave_marker4, Find_Player("Rebel"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Guard_Target(wave_marker2)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				Sleep(15)
				
				for k, unit in pairs(SpawnList(assault_list2, wave_marker3, Find_Player("Empire"), false, false)) do
					
					unit.Attack_Move(wave_marker2)
				end
				
				Story_Event("MISSION_02_DIALOGUE_GO")
				
		end	
end
