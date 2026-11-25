--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_NL1_Space = State_Inicio_de_batalla_Space,
		Orden_de_Ataque_01 = State_Orden_de_Ataque_01,
		Orden_de_Ataque_02 = State_Orden_de_Ataque_01,
		Orden_de_Ataque_03 = State_Orden_de_Ataque_01,
		Orden_de_Ataque_04 = State_Change_Faction
	}

assault_list0 = {"PLATTFORM3"}			

assault_list1 = {"NEUTRAL-BULK_FREIGHTER", "NEUTRAL-BULK_FREIGHTER", "Neutral-CargoFerry", "Neutral-CargoFerry", "Neutral-Modularconveyor", "Neutral-Modularconveyor"}		

assault_list2 = {"R_CR_CVM", "R_CR_CVM", "Shuttle_Tyderium", "Rebel_X-Wing_SquadronB", "Y-Wing_SquadronB", "A_Wing_SquadronB"}	

assault_list3 = {"R_Assaulttransport", "R_Assaulttransport", "Shuttle_Tyderium", "Rebel_X-Wing_SquadronB", "B-Wing_SquadronB", "A_Wing_SquadronB"}

assault_list4 = {"Nebulon_B_Frigate", "Y-Wing_SquadronB", "Y-Wing_SquadronB", "Corellian_Corvette", "Corellian_Corvette", "Corellian_Corvette"}	


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
				
				for k, unit in pairs(SpawnList(assault_list0, combat_marker1, Find_Player("Empire"), false, false)) do
					unit.Guard_Target(combat_marker1)
				end
				
				for k, unit in pairs(SpawnList(assault_list1, E_enter_transports, Find_Player("Faction_A"), false, false)) do
					unit.Move_To(exit_marker)
				end
				Sleep(10)				
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(170)				
				Story_Event("MISSION_02_DIALOGUE_GO")
				for k, unit in pairs(SpawnList(assault_list2, wave_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(combat_marker1)
				end
				Sleep(30)				
				Story_Event("MISSION_02_DIALOGUE_GO")
				for k, unit in pairs(SpawnList(assault_list3, wave_marker3, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(combat_marker1)
				end
				Sleep(30)				
				Story_Event("MISSION_02_DIALOGUE_GO")
				for k, unit in pairs(SpawnList(assault_list4, wave_marker2, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(combat_marker1)
				end
				
		end	
end
function State_Orden_de_Ataque_01(message)
				
		if message == OnEnter then
				spawn_marker = Find_First_Object("Plattform3")
				friendly_player = spawn_marker.Get_Owner()
				enemy_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Transport | Spacehero | Antifrigate | Anticapital")
				enemy_bombers = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Spacehero")
				enemy_starships = Find_All_Objects_Of_Type("Capital | Frigate | Structure | Corvette | Antifrigate | Anticorvette | Anticapital")
										
				for k, unit in pairs(enemy_unit_list) do
					if TestValid(unit) then
							enemy_unit_object = enemy_unit_list[1]
							enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
							enemy_bombers_object = enemy_bombers[1]
							enemy_starships_object = enemy_starships[1]
							local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
							local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
							local closest_starships = Find_Nearest(enemy_starships_object, enemy_player, true)
							if TestValid(closest_enemy) then
								if unit.Is_Category("Corvette") then
									unit.Attack_Move(closest_bombers)
								end
								if unit.Is_Category("Frigate") then
									unit.Attack_Move(closest_starships)
								end
								if unit.Is_Category("Spacehero") then
									unit.Attack_Move(closest_enemy)
								end
								if unit.Is_Category("AntiFrigate") then
									unit.Attack_Move(closest_enemy)
								end
								if unit.Is_Category("AntiCapital") then
									unit.Attack_Move(closest_starships)
								end
							end	
					end
				end		
		end	
end
function State_Change_Faction(message)
		
        if message == OnEnter then
			station_marker = Find_First_Object("STORY_TRIGGER_ZONE_15")
			friendly_player = Find_Player("Neutral")

			friendly_unit_list = Find_All_Objects_Of_Type("Vehicle")
						
		
			for i, unit in pairs(friendly_unit_list) do

				if unit.Is_Category("Vehicle") then
					Story_Event("MISSION_01_DIALOGUE_GO")
					unit.Change_Owner(friendly_player)
				end

			end
		end
end