--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Sepan_Space = State_Inicio_de_batalla_Space,
		Orden_de_Ataque_01 = State_Change_Faction
	}

assault_list0 = {"R_CR_CVM", "R_CR_CVM", "Nebulon_B2R", "R_Escortshuttle", "R_Escortshuttle", "R_Escortshuttle", "Nebulon_B_Frigate", "Y-Wing_SquadronB", "R_Assaulttransport", "R_Assaulttransport", "R_Assaulttransport", "R_Assaulttransport", "R_Assaulttransport", "R_Assaulttransport"}

assault_list1 = {"Plattform3"}		
	
assault_list2 = {"MC40v02", "Nebulon_B2R", "Z95_Headhunter_Rebel_SquadronB", "Y-Wing_SquadronB", "R_CR_CVM"}	


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")

end

function State_Inicio_de_batalla_Space(message)
				
		if message == OnEnter then
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
				wave_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4")
				wave_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "wave5")
				wave_marker6 = Find_Hint("STORY_TRIGGER_ZONE", "wave6")
				combat_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "combat1")
				combat_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "combat2")
				combat_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "combat3")
				E_enter_marker = Find_First_Object("Attacker Entry Position")
				exit_marker = Find_First_Object("Story_Trigger_Zone_15")
				E_enter_transports = Find_Hint("STORY_TRIGGER_ZONE", "entertransports")
								
				Story_Event("MISSION_00_DIALOGUE_GO")
								
				for k, unit in pairs(SpawnList(assault_list0, wave_marker3, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(combat_marker1)
				end
				
				for k, unit in pairs(SpawnList(assault_list1, wave_marker1, Find_Player("Hostile"), false, false)) do
					unit.Guard_Target(wave_marker1)
				end
				
				for k, unit in pairs(SpawnList(assault_list2, wave_marker2, Find_Player("Hostile"), false, false)) do
					unit.Guard_Target(combat_marker1)
				end
				
		end	
end
function State_Change_Faction(message)
		
        if message == OnEnter then
			friendly_player1 = Find_Player("Hostile")
			Rebel_player = Find_Player("Rebel")

			friendly_unit_list1 = Find_All_Objects_Of_Type(friendly_player1)
						
			
			for i, unit in pairs(friendly_unit_list1) do

				if unit.Get_Owner()== friendly_player1 then
					Story_Event("MISSION_01_DIALOGUE_GO")
					unit.Change_Owner(Rebel_player)
				end

			end
		end
	
end