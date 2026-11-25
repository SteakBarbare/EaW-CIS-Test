--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Dathomir_Space = State_Inicio_mision,
		Refuerzos_Imperiales = State_Refuerzos_Imperiales_01
	}

assault_list1 = {"Zsinj_Quasar", "E_Strike_Up2", "E_Strike_Up"}

assault_list2 = {"ISD2_F3", "Lancer", "Lancer"}

assault_list3 = {"TIE_Avenger_SquadronB", "TIE_Avenger_SquadronB", "TIE_Defender_SquadronB", "TIE_Defender_SquadronB", "Missile_Gunboat_SquadronB", "Missile_Gunboat_SquadronB"}	

assault_list4 = {"EV_SSDLusankya", "Skipray_SquadronB", "Skipray_SquadronB"}	


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
function State_Refuerzos_Imperiales_01(message)
				
		if message == OnEnter then
				
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
				wave_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4")
				wave_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "wave5")
								
				grupo_01 = SpawnList(assault_list1, wave_marker1, empire, false, false)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Move(wave_marker5)
				end
				Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER")
				Sleep(15)
				grupo_02 = SpawnList(assault_list2, wave_marker2, empire, false, false)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Move(wave_marker5)
				end
				Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER")
				Sleep(15)
				grupo_03 = SpawnList(assault_list3, wave_marker3, empire, false, false)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Move(wave_marker5)
				end
				Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER")
				Sleep(15)
				grupo_04 = SpawnList(assault_list4, wave_marker4, empire, false, false)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Move(wave_marker5)
				end
				
				Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER")
				
		end	
end