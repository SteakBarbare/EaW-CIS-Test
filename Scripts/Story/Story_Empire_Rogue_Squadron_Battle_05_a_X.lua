--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

	StoryModeEvents = 
	{
		Batalla_de_Yagdul_Space = State_Inicio_mision,
		Rebel_Enemy_Retreat = State_Rebel_Enemy_Retreat,
		SSDLusankya_Retreat = State_SSDLusankya_Retreat,
		Rebel_Reinforces_2 = State_Refuerzos_Rebeldes_02,
		Imperial_Reinforces_2 = State_Imperial_Reinforces_2
	}

assault_list1 = {"EVENTOS_TACTICOS_LIBERTAD_ISD2_B", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "ASSAULTFIGHTER", "ASSAULTFIGHTER", "ASSAULTFIGHTER", "BS_THRANTA"}
assault_list2 = {"EV_SSDLusankya"}
assault_list3 = {"A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron"}
assault_list4 = {"Zsinj_Quasar", "E_Strike_Up2", "E_Strike_Up2", "E_Strike_Up"}

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
		
		wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
		wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
		
		grupo_01 = SpawnList(assault_list2, wave_marker2, empire, false, false)
		for i,unit in pairs(grupo_01) do
			unit.Cinematic_Hyperspace_In(1)
			unit.Attack_Move(wave_marker1)
		end
		
		Sleep(2)
		
		grupo_02 = SpawnList(assault_list1, wave_marker1, rebel, false, false)
		for i,unit in pairs(grupo_02) do
			unit.Cinematic_Hyperspace_In(1)
			unit.Guard_Target(wave_marker1)
		end

		Story_Event("MISSION_00_DIALOGUE_GO")
	end
	
end
function State_Rebel_Enemy_Retreat(message)
	if message == OnEnter then
		Nave1 = Find_All_Objects_Of_Type("EVENTOS_TACTICOS_LIBERTAD_ISD2_B")
		Nave2 = Find_All_Objects_Of_Type("EVENTOS_TACTICOS_GALLOFREE_THYFERRA")
		Nave3 = Find_All_Objects_Of_Type("EVENTOS_TACTICOS_ACTIONIV_THYFERRA")
		Nave4 = Find_All_Objects_Of_Type("ASSAULTFIGHTER")
		Nave5 = Find_All_Objects_Of_Type("BS_THRANTA")
		
		for k, unit in pairs(Nave1) do
				unit.Hyperspace_Away()
		end
		for k, unit in pairs(Nave2) do
				unit.Hyperspace_Away()
		end
		for k, unit in pairs(Nave3) do
				unit.Hyperspace_Away()
		end
		for k, unit in pairs(Nave4) do
				unit.Hyperspace_Away()
		end
		for k, unit in pairs(Nave5) do
				unit.Hyperspace_Away()
		end
		Story_Event("MISSION_01_DIALOGUE_GO")
	end
end
function State_SSDLusankya_Retreat(message)
	if message == OnEnter then
		Nave6 = Find_All_Objects_Of_Type("EV_SSDLusankya")
		Sleep(5)
		for k, unit in pairs(Nave6) do
				unit.Hyperspace_Away()
		end
		Sleep(3)
		Story_Event("MISSION_02_DIALOGUE_GO")
	end
end
function State_Refuerzos_Rebeldes_02(message)
	if message == OnEnter then
		wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
		wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
		wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
		
		Nave8 = Find_Hint("ISD2R", "isd")
		
		grupo_03 = SpawnList(assault_list3, wave_marker1, rebel, false, false)
		for i,unit in pairs(grupo_03) do
			unit.Cinematic_Hyperspace_In(1)
			unit.Attack_Move(Nave8)
		end
		Story_Event("MISSION_03_DIALOGUE_GO")
	end
end
function State_Imperial_Reinforces_2(message)
	if message == OnEnter then
		Nave8 = Find_Hint("ISD2R", "isd")
		Nave8.Take_Damage(100000, "HP_Shield_GeneratorH_00")
		Nave8.Take_Damage(100000, "HP_Shield_GeneratorH_01")
		Nave8.Take_Damage(100000, "HP_Tractor_Beam_Rebelde")
		Nave8.Take_Damage(100000, "HP_Fighter_BayH_00")
		Nave8.Take_Damage(100000, "HP_Fighter_BayH_01")
		Nave8.Take_Damage(100000, "HP_Misil_01")
		Nave8.Take_Damage(100000, "HP_TurboMG_01")
		Nave8.Take_Damage(100000, "HP_TurboMG_02")
		Nave8.Take_Damage(100000, "HP_T_ISDII_03")
		Nave8.Take_Damage(100000, "HP_T_ISDII_07")
		Nave8.Take_Damage(100000, "HP_T_ISDII_01")
		
		Story_Event("MISSION_04_DIALOGUE_GO")
		
		wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
		wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				
		grupo_04 = SpawnList(assault_list4, wave_marker2, empire, false, false)
		for i,unit in pairs(grupo_04) do
			unit.Cinematic_Hyperspace_In(1)
			unit.Attack_Move(wave_marker3)
		end
		Story_Event("MISSION_05_DIALOGUE_GO")
		
		Sleep(2)
		
		if TestValid(Nave8) then
			Nave8.Change_Owner(rebel)
		end
		Sleep(2)
		if TestValid(Nave8) then
			Nave8.Hyperspace_Away()
		end
		
		

	end
end



	
