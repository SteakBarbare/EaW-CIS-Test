--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_TIEF_E_DestroytheLulsla_Space = State_Inicio_mision,
		Contenedores_Destruidos = State_Refuerzos_Rebeldes_01,
		Stormtransport_Destruidos1 = State_Refuerzos_Imperiales_01,
		Stormtransport_Destruidos2 = State_Refuerzos_Imperiales_02,
		Stormtransport_Destruidos3 = State_Refuerzos_Imperiales_03,
		Stormtransport_Destruidos4 = State_Refuerzos_Imperiales_04
	}

assault_list0 = {"Shuttle_TyderiumM", "Shuttle_TyderiumM", "Stormtransport", "Stormtransport", "Stormtransport", "Stormtransport"}

assault_list1 = {"Y-Wing_Squadron", "Rebel_X-Wing_Squadron", "A_Wing_Squadron"}

assault_list2 = {"GunboatM_Squadron", "Stormtransport", "Stormtransport", "Stormtransport", "Stormtransport"}	


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
				
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
													
				for k, unit in pairs(SpawnList(assault_list1, wave_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(wave_marker2)
				end
				
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(5)
													
				for k, unit in pairs(SpawnList(assault_list0, wave_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(wave_marker2)
				end
				
				
		end	
end
function State_Refuerzos_Imperiales_01(message)
				
		if message == OnEnter then
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
													
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, Find_Player("Empire"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Attack_Move(wave_marker2)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				
				
		end	
end
function State_Refuerzos_Imperiales_02(message)
				
		if message == OnEnter then
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
													
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, Find_Player("Empire"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Attack_Move(wave_marker2)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				
				
		end	
end
function State_Refuerzos_Imperiales_03(message)
				
		if message == OnEnter then
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
													
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, Find_Player("Empire"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Attack_Move(wave_marker2)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				
				
		end	
end
function State_Refuerzos_Imperiales_04(message)
				
		if message == OnEnter then
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
													
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, Find_Player("Empire"), false, false)) do
					unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
					unit.Attack_Move(wave_marker2)
				end
				
				Story_Event("MISSION_01_DIALOGUE_GO")
				
				
		end	
end
