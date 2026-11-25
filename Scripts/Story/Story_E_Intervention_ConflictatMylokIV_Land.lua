--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_ConflictatMylokIV_Land = State_Inicio_mision,
		Refuerzos_Imperiales_01 = State_Refuerzos_Imperiales_01,
		Refuerzos_Rebeldes_01 = State_Refuerzos_Rebeldes_01
	}

assault_list0 = {"Alliance_Fleet_Regiment"}

assault_list1 = {"Rebel_A_Wing_Land_squadron", "Rebel_Y_WingLand_squadron", "Rebel_Z95Land_squadron"}
	
assault_list2 = {"Stormtrooper_Regiment"}	

assault_list3 = {"Imperial_Fleet_Regiment"}	

assault_list3b = {"Imperial_Army_Regiment"}	

assault_list4 = {"Rebel_X_Wing_Land_squadron"}	

assault_list5 = {"Rebel_T5B_Brigade"}	

assault_list6 = {"Rebel_Fast_Tank_Brigade"}	


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
				
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
	
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, empire, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
				
				for k, unit in pairs(SpawnList(assault_list0, wave_marker2, rebel, false, false)) do
					unit.Guard_Target(wave_marker2)
				end
				Sleep(2)
				for k, unit in pairs(SpawnList(assault_list1, wave_marker2, rebel, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
							
		end	
end
function State_Refuerzos_Imperiales_01(message)
				
		if message == OnEnter then
								
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
									
				for k, unit in pairs(SpawnList(assault_list3b, wave_marker1, empire, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				
				
		end	
end
function State_Refuerzos_Rebeldes_01(message)
				
		if message == OnEnter then
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				wave_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4")
				wave_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "wave5")
																	
				for k, unit in pairs(SpawnList(assault_list4, wave_marker3, rebel, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
				Sleep(2)
				for k, unit in pairs(SpawnList(assault_list5, wave_marker4, rebel, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
				
				Sleep(2)
				for k, unit in pairs(SpawnList(assault_list6, wave_marker5, rebel, false, false)) do
					unit.Attack_Move(wave_marker1)
				end
				
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(15)
		
				
		end	
end
