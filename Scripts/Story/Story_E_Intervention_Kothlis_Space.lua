--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Kothlis_Space = State_Batalla_de_Kothlis_Space,
		Orden_de_Ataque_01 = State_Orden_de_Ataque_01,
		Orden_de_Ataque_02 = State_Orden_de_Ataque_01,
		Orden_de_Ataque_03 = State_Orden_de_Ataque_01
	}
		

assault_list1 = {"Z95_Headhunter_Underworld_SquadronB", "R41_SquadronB", "Y-Wing_SquadronB"}
assault_list1b = {"Z95_Headhunter_Underworld_SquadronB", "R41_SquadronB", "Y-Wing_SquadronB"}
assault_list2 = {"A_Wing_SquadronB", "A_Wing_SquadronB", "Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB"}
assault_list2b = {"A_Wing_SquadronB", "A_Wing_SquadronB", "Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB"}
assault_list3 = {"BS_Dreadnought", "B-Wing_SquadronB", "B-Wing_SquadronB", "Corellian_Corvette", "Shuttle_Tyderium"}
assault_list4 = {"Mc80b_EJ_II", "Nebulon_B_Frigate", "Corellian_Corvette", "Shuttle_Tyderium"}	
assault_list5 = {"MC40", "Nebulon_B2R", "R_Stormtransport", "R_Strike", "R_Carrack"}


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Kothlis_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
				spawn_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2")
				spawn_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3")
				spawn_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4")
				spawn_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "wave5")
				combat_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "combat1")
				combat_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "combat2")
				combat_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "combat3")
				Story_Event("MISSION_00_DIALOGUE_GO")
								
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(combat_marker1)
				end
				
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(combat_marker2)
				end	
								
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker3, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker2)
				end	
								
				Sleep(60)
				Story_Event("MISSION_01_DIALOGUE_GO")
				for k, unit in pairs(SpawnList(assault_list4, spawn_marker4, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(combat_marker3)
				end	
								
				for k, unit in pairs(SpawnList(assault_list5, spawn_marker5, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker2)
				end	
								
				for k, unit in pairs(SpawnList(assault_list1b, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(combat_marker3)
				end
				
				for k, unit in pairs(SpawnList(assault_list2b, spawn_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker2)
				end	
		end	
end
function State_Orden_de_Ataque_01(message)
				
		if message == OnEnter then
				spawn_marker = Find_First_Object("PLATTFORM5")
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