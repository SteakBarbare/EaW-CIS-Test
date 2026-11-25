--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))
				
StoryModeEvents = 
	{
		Underworld_M02_Begin = State_Underworld_A01M02_Begin,
		Underworld_M02_01= State_Underworld_M02_01,
		Underworld_M02_02= State_Underworld_M02_02,
		Underworld_M02_Data_Pod_01_Pickup = State_Underworld_M02_Data_Pod_01_Pickup,
		Underworld_M02_Data_Pod_02_Pickup = State_Underworld_M02_Data_Pod_02_Pickup,
		Underworld_M02_Data_Pod_03_Pickup = State_Underworld_M02_Data_Pod_03_Pickup,
		Mission_2_Pirate_Encounter_01 = State_Mission_2_Pirate_Encounter_01,
		Destruir_Fragata_Pirata = State_Destruir_Fragata_Pirata,
		Close_to_box05 = State_Close_to_box05,
		Underworld_M02_Rebel_Encounter_03 = State_Underworld_M02_Rebel_Encounter_03,
		Activar_Captura_R_Shuttles = State_Activar_Captura_R_Shuttles,
		Activar_Captura_Wreckages = State_Activar_Captura_Wreckages,
		Approaching_Wreckage_01 = State_Captura_Wreckage_01,
		Approaching_Wreckage_02 = State_Captura_Wreckage_02,
		Approaching_Wreckage_03 = State_Captura_Wreckage_03,
		Approaching_Wreckage_04 = State_Captura_Wreckage_04,
		Final_Imp_Encounter = State_Final_Imp_Encounter
	}
				

   rebel_assault_01 = {"Nebulon_B_Frigate", "Y-Wing_SquadronB", "Z95_Headhunter_Rebel_SquadronB"}
   rebel_assault_02 = {"R_BulkCRU", "Rebel_X-Wing_SquadronB", "B-Wing_SquadronS1B"}
   rebel_assault_03 = {"Mc80a", "A_Wing_SquadronB", "B-Wing_SquadronS2B"}
   rebel_assault_04 = {"R_Corvette01", "R_Corvette02", "R_Corvette03"}
   shuttle_captured = {"R_Corvette04"}
   
   Pirate_fleet_01 = {"BS_CR_FRG", "BS_CR_LTO_FRG", "BS_CR_LTO_FRG", "BS_CR_FRG"}
      
   pirate_container = {"UM01_Death_Star_Black_Box05"}
   
   imperial_scouts_01 = {"E_Bajonett01", "E_Bajonett01", "E_Bajonett01", "E_Bajonett01", "E_Bajonett01"}
   imperial_fleet_01 = {"ISD2", "ISD2", "Victory_Destroyer", "Executor_Super_Star_Destroyer"}


rebel_player = Find_Player("Rebel")
empire_player = Find_Player("Empire")
underworld_player = Find_Player("Underworld")
pirate_player = Find_Player("Pirates")
neutral_player = Find_Player("Neutral")

end
function State_Underworld_A01M02_Begin(message)
				
		if message == OnEnter then
				GlobalValue.Set("Allow_AI_Controlled_Fog_Reveal", 0)
				Sleep(1)
				Story_Event("CHATTER_00")
				Sleep(6)
				Story_Event("CHATTER_01")
				Sleep(8)
				Story_Event("CHATTER_04")
				Sleep(2)
				Story_Event("CHATTER_05")
				rebels_spawn_01 = Find_Hint("STORY_TRIGGER_ZONE", "introattack1")
				Sleep(2)				
				for k, unit in pairs(SpawnList(rebel_assault_01, rebels_spawn_01, rebel_player, false, true)) do
					unit.Attack_Move(rebels_spawn_01.Get_Position())
				end
				Sleep(2)
				Add_Radar_Blip(rebels_spawn_01, "rebels_radar")
				Sleep(5)
				Story_Event("CHATTER_06")
				Sleep(10)
				Remove_Radar_Blip("rebels_radar")
				Sleep(2)				
				box_01 = Find_First_Object("UM01_Death_Star_Black_Box")
				Add_Radar_Blip(box_01, "box01_radar")
				Story_Event("CHATTER_07")
				Sleep(5)				
		end	
end
function State_Underworld_M02_01(message)
				
		if message == OnEnter then
				marker_empire_01 = Find_Hint("STORY_TRIGGER_ZONE", "empireretreat")
				
				for k, unit in pairs(SpawnList(imperial_scouts_01, marker_empire_01, empire_player, false, true)) do
					unit.Guard_Target(marker_empire_01)
				end		
				Sleep(2)
				Add_Radar_Blip(marker_empire_01, "E_scouts_radar")
				Sleep(5)
				Remove_Radar_Blip("E_scouts_radar")
		end	
end
function State_Underworld_M02_02(message)
				
		if message == OnEnter then
				NaveI01 = Find_All_Objects_Of_Type("E_Bajonett01")
				Sleep(2)
				for k, unit in pairs(NaveI01) do
					unit.Change_Owner(underworld_player)
				end
				Sleep(5)
				rebels_spawn_02 = Find_Hint("STORY_TRIGGER_ZONE", "rebelspawne")
				for k, unit in pairs(SpawnList(rebel_assault_02, rebels_spawn_02, rebel_player, false, true)) do
					unit.Attack_Move(rebels_spawn_02.Get_Position())
				end		
				Story_Event("REBEL_ENCOUNTER_01")
				Add_Radar_Blip(rebels_spawn_02, "rebels_radar2")
				Sleep(30)
				Remove_Radar_Blip("rebels_radar2")
		end	
end
function State_Underworld_M02_Data_Pod_01_Pickup(message)
				
		if message == OnEnter then
			box01 = Find_First_Object("UM01_Death_Star_Black_Box")
			Sleep(2)	
			box01.Take_Damage(10000)
			Remove_Radar_Blip("box01_radar")
			Story_Event("UM02_HINT_POD_01")
		end	
end
function State_Underworld_M02_Data_Pod_02_Pickup(message)
				
		if message == OnEnter then
			box02 = Find_First_Object("UM01_Death_Star_Black_Box02")
			Add_Radar_Blip(box02, "box_02_radar")
			Sleep(2)	
			box02.Take_Damage(10000)
			Remove_Radar_Blip("box_02_radar")	
			Story_Event("UM02_HINT_POD_02")
		end	
end
function State_Underworld_M02_Data_Pod_03_Pickup(message)
				
		if message == OnEnter then
			box03 = Find_First_Object("UM01_Death_Star_Black_Box03")
			Add_Radar_Blip(box03, "box_03_radar")
			Sleep(2)	
			box03.Take_Damage(10000)
			Remove_Radar_Blip("box_03_radar")	
			Story_Event("UM02_HINT_POD_03")
		end	
end
function State_Mission_2_Pirate_Encounter_01(message)
				
		if message == OnEnter then
			box04 = Find_First_Object("UM01_Death_Star_Black_Box04")
			Add_Radar_Blip(box04, "box_04_radar")
			Sleep(2)	
			pirate_spawn_01 = Find_Hint("STORY_TRIGGER_ZONE", "piratearrival")
			for k, unit in pairs(SpawnList(Pirate_fleet_01, pirate_spawn_01, pirate_player, false, true)) do
				unit.Attack_Move(pirate_spawn_01.Get_Position())
			end		
			Sleep(2)	
			box04.Take_Damage(10000)
			Remove_Radar_Blip("box_04_radar")	
			Sleep(2)	
			Story_Event("Final_Pirate_Encounter")
		end	
end
function State_Destruir_Fragata_Pirata(message)
				
		if message == OnEnter then
		
			pirate_spawn_01 = Find_Hint("STORY_TRIGGER_ZONE", "piratearrival")
			for k, unit in pairs(SpawnList(pirate_container, pirate_spawn_01, rebel_player, false, true)) do
				unit.Attack_Move(pirate_spawn_01.Get_Position())
			end		
			Sleep(5)	
			box05 = Find_First_Object("UM01_Death_Star_Black_Box05")
			Add_Radar_Blip(box05, "box05_radar")
		end	
end
function State_Close_to_box05(message)
				
		if message == OnEnter then
			box05 = Find_First_Object("UM01_Death_Star_Black_Box05")
			Sleep(2)	
			box05.Take_Damage(10000)
			Remove_Radar_Blip("box05_radar")	
			Story_Event("UM02_HINT_POD_04")
		end	
end
function State_Underworld_M02_Rebel_Encounter_03(message)
				
		if message == OnEnter then
			rebels_spawn_03 = Find_Hint("STORY_TRIGGER_ZONE", "convoy03")
			attack_move_03 = Find_Hint("STORY_TRIGGER_ZONE", "introattack1")
			Add_Radar_Blip(rebels_spawn_03, "R_Shuttle_radar")	
			for k, unit in pairs(SpawnList(rebel_assault_03, rebels_spawn_03, rebel_player, false, true)) do
				unit.Attack_Move(attack_move_03.Get_Position())
			end		
			Sleep(5)	
			for k, unit in pairs(SpawnList(rebel_assault_04, rebels_spawn_03, rebel_player, false, true)) do
				unit.Attack_Move(attack_move_03.Get_Position())
			end		
			Sleep(2)
			for k, unit in pairs(SpawnList(shuttle_captured, rebels_spawn_03, underworld_player, false, true)) do
				unit.Attack_Move(rebels_spawn_03.Get_Position())
			end				
			Sleep(2)	
			Story_Event("REBEL_CONVOY")
		end	
end
function State_Activar_Captura_R_Shuttles(message)
				
		if message == OnEnter then
			Remove_Radar_Blip("R_Shuttle_radar")				
			Story_Event("SHUTTLE_04")
		end	
end
function State_Activar_Captura_Wreckages(message)
				
		if message == OnEnter then
			Wreckage01 = Find_First_Object("Wreckage01")
			Wreckage02 = Find_First_Object("Wreckage02")
			Wreckage03 = Find_First_Object("Wreckage03")
			Wreckage04 = Find_First_Object("Wreckage04")
			Sleep(5)			
			
			Add_Radar_Blip(Wreckage01, "Wreckage01_Radar")
			Add_Radar_Blip(Wreckage02, "Wreckage02_Radar")
			Add_Radar_Blip(Wreckage03, "Wreckage03_Radar")
			Add_Radar_Blip(Wreckage04, "Wreckage04_Radar")
		end	
end
function State_Captura_Wreckage_01(message)
				
		if message == OnEnter then
			Wreckage01 = Find_First_Object("Wreckage01")
			Sleep(2)	
			Wreckage01.Take_Damage(10000)
			Remove_Radar_Blip("Wreckage01_Radar")	
			Story_Event("WRECKAGE_01")
		end	
end
function State_Captura_Wreckage_02(message)
				
		if message == OnEnter then
			Wreckage02 = Find_First_Object("Wreckage02")
			Sleep(2)	
			Wreckage02.Take_Damage(10000)
			Remove_Radar_Blip("Wreckage02_Radar")	
			Story_Event("WRECKAGE_02")
		end	
end
function State_Captura_Wreckage_03(message)
				
		if message == OnEnter then
			Wreckage03 = Find_First_Object("Wreckage03")
			Sleep(2)	
			Wreckage03.Take_Damage(10000)
			Remove_Radar_Blip("Wreckage03_Radar")	
			Story_Event("WRECKAGE_03")
		end	
end
function State_Captura_Wreckage_04(message)
				
		if message == OnEnter then
			Wreckage04 = Find_First_Object("Wreckage04")
			Sleep(2)	
			Wreckage04.Take_Damage(10000)
			Remove_Radar_Blip("Wreckage04_Radar")	
			Story_Event("WRECKAGE_04")
		end	
end
function State_Final_Imp_Encounter(message)
				
		if message == OnEnter then
			
			rebels_spawn_04 = Find_Hint("STORY_TRIGGER_ZONE", "convoy03")			
			E_Fleet_spawn_01 = Find_Hint("ATTACKER ENTRY POSITION", "camtarget")
			Sleep(2)				
			for k, unit in pairs(SpawnList(imperial_fleet_01, E_Fleet_spawn_01, empire_player, false, true)) do
				unit.Attack_Move(rebels_spawn_04.Get_Position())
			end		
			Sleep(5)	
			NaveI01 = Find_All_Objects_Of_Type("E_Bajonett01")

			Sleep(5)			
				for k, unit in pairs(NaveI01) do
					unit.Change_Owner(empire_player)
				end
		end	
end