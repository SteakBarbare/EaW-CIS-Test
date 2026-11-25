--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Deaths_Head", "E_Strike", "E_Strike"}
assault_list1 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Inexorable", "E_Strike", "E_Strike"}
assault_list2 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Stormhawk", "E_Strike", "E_Strike"}
assault_list3 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Nemesis", "E_Strike", "E_Strike"}
assault_list4 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Deaths_Head", "E_Strike", "E_Strike"}
assault_list5 = {"Katana_Dreadnought", "Katana_Dreadnought", "QuimeraTM", "E_Strike", "E_Strike"}
assault_list6 = {"R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought"}
assault_list7 = {"MC90", "MC60_01", "Liberator", "Nebulon_B_Frigate", "R_Dreadnought_Up", "MC30_Frigate", "RV_Sacheen_CV", "CR_Hvy_Gunboat"}
assault_list8 = {"MC902_2", "MC75", "Nebulon_B_Frigate", "R_Dreadnought_Up", "MC30_Frigate", "CR_Hvy_Gunboat", "RV_Sacheen_CV"}
assault_list9 = {"MC902_1", "MC75", "Nebulon_B_Frigate", "Liberator", "MC30_Frigate", "R_Dreadnought_Up", "RV_Sacheen_CV", "CR_Hvy_Gunboat"}
assault_list10 = {"Interdictor_Cruiser" }
assault_list11 = {"Interdictor_Cruiser" }
assault_list12 = {"Victory_Destroyer", "Victory_Destroyer"}
assault_list13 = {"Victory_Destroyer", "Victory_Destroyer"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end

function State_Init(message)
				
				if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
		if message == OnEnter then
                spawn_marker0 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                SpawnList(assault_list0, spawn_marker0, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)
        end		
		if message == OnEnter then
                spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_02")
                SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_03")
                SpawnList(assault_list3, spawn_marker3, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_04")
                SpawnList(assault_list4, spawn_marker4, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_05")
                SpawnList(assault_list5, spawn_marker5, Find_Player("Empire"), true, true)
				
				punto_inicio = Find_First_Object("QuimeraTM")
				
				Point_Camera_At(punto_inicio)
				
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(15)
        end
		if message == OnEnter then
                spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_06")
                SpawnList(assault_list6, spawn_marker6, Find_Player("Rebel"), true, true)
        end
		if message == OnEnter then
                spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_07")
                SpawnList(assault_list7, spawn_marker7, Find_Player("Rebel"), true, true)
        end
		if message == OnEnter then
                spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_08")
                SpawnList(assault_list8, spawn_marker8, Find_Player("Rebel"), true, true)
        end
		if message == OnEnter then
                spawn_marker9 = Find_First_Object("STORY_TRIGGER_ZONE_09")
                SpawnList(assault_list9, spawn_marker9, Find_Player("Rebel"), true, true)
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				Sleep(1)
        end
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("R_Dreadnought")
				Nave2 = Find_All_Objects_Of_Type("MC90")
				Nave3 = Find_All_Objects_Of_Type("MC60_01")
				Nave4 = Find_All_Objects_Of_Type("Liberator")
				Nave5 = Find_All_Objects_Of_Type("Nebulon_B_Frigate")
				Nave6 = Find_All_Objects_Of_Type("Nebulon_B_Frigate")
				Nave7 = Find_All_Objects_Of_Type("R_Dreadnought_Up")
				Nave8 = Find_All_Objects_Of_Type("MC30_Frigate")
				Nave9 = Find_All_Objects_Of_Type("RV_Sacheen_CV")
				Nave10 = Find_All_Objects_Of_Type("CR_Hvy_Gunboat")
				Nave11 = Find_All_Objects_Of_Type("MC902_2")
				Nave12 = Find_All_Objects_Of_Type("MC75")
				Nave13 = Find_All_Objects_Of_Type("MC902_1")
				
				zona_de_ataque = Find_First_Object("PUNTO_DE_ATAQUE")	
				
				for k, unit in pairs(Nave1) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave2) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave3) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave4) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave5) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave6) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave7) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave8) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave9) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave10) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave11) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave12) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave13) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(5)
				Story_Event("MISSION_01_DIALOGUE_GO")
				Sleep(15)
		end
		if message == OnEnter then
				Nave15 = Find_All_Objects_Of_Type("R_Dreadnought")
				Nave16 = Find_All_Objects_Of_Type("MC90")
				Nave17 = Find_All_Objects_Of_Type("MC60_01")
				Nave18 = Find_All_Objects_Of_Type("Liberator")
				Nave19 = Find_All_Objects_Of_Type("Nebulon_B_Frigate")
				Nave20 = Find_All_Objects_Of_Type("Nebulon_B_Frigate")
				Nave21 = Find_All_Objects_Of_Type("R_Dreadnought_Up")
				Nave22 = Find_All_Objects_Of_Type("MC30_Frigate")
				Nave23 = Find_All_Objects_Of_Type("RV_Sacheen_CV")
				Nave24 = Find_All_Objects_Of_Type("CR_Hvy_Gunboat")
				Nave25 = Find_All_Objects_Of_Type("MC902_2")
				Nave26 = Find_All_Objects_Of_Type("MC75")
				Nave27 = Find_All_Objects_Of_Type("MC902_1")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Nave15) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave16) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave17) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave18) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave19) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave20) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave21) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave22) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave23) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave24) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave25) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave26) do
						unit.Move_To(zona_de_ataque)
				end
				for k, unit in pairs(Nave27) do
						unit.Move_To(zona_de_ataque)
				end
				Sleep(5)
				Story_Event("MISSION_02_DIALOGUE_GO")
				Sleep(15)
		end
		if message == OnEnter then
                spawn_marker10 = Find_First_Object("STORY_TRIGGER_ZONE_10")
				ReinforceList(assault_list10, spawn_marker10, Find_Player("Empire"), true, true, false)
				Sleep(1)
        end
		if message == OnEnter then
                spawn_marker11 = Find_First_Object("STORY_TRIGGER_ZONE_11")
                ReinforceList(assault_list11, spawn_marker11, Find_Player("Empire"), true, true, false)
				Sleep(15)
        end
		if message == OnEnter then
                spawn_marker12 = Find_First_Object("STORY_TRIGGER_ZONE_12")
                ReinforceList(assault_list12, spawn_marker12, Find_Player("Empire"), true, true, false, Move_Order1)
				Sleep(1)
        end
		if message == OnEnter then
                spawn_marker13 = Find_First_Object("STORY_TRIGGER_ZONE_13")
                ReinforceList(assault_list13, spawn_marker13, Find_Player("Empire"), true, true, false, Move_Order2)
				Sleep(120)
				Story_Event("MISSION_03_DIALOGUE_GO")
				Sleep(10)
				Story_Event("MISSION_04_DIALOGUE_GO")
				Sleep(10)
        end
		if message == OnEnter then
				Nave29 = Find_All_Objects_Of_Type("Interdictor_Cruiser")
				Nave30 = Find_All_Objects_Of_Type("Victory_Destroyer")
				Nave31 = Find_All_Objects_Of_Type("Katana_Dreadnought")
				Nave32 = Find_All_Objects_Of_Type("E_Strike")
				Nave33 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave34 = Find_All_Objects_Of_Type("Inexorable")
				Nave35 = Find_All_Objects_Of_Type("Stormhawk")
				Nave36 = Find_All_Objects_Of_Type("Nemesis")
				Nave37 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave38 = Find_All_Objects_Of_Type("QuimeraTM")

				
				for k, unit in pairs(Nave29) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave30) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave31) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave32) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave33) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave34) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave35) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave36) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave37) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave38) do
						unit.Hyperspace_Away()
				end
		end
end
function Move_Order1()
	Nave39 = Find_All_Objects_Of_Type("Victory_Destroyer")
	
	attack_ship_move_to_marker = Find_First_Object("STORY_TRIGGER_ZONE_12")
		
	for k, unit in pairs(Nave39) do
			unit.Attack_Move(attack_ship_move_to_marker)
	end
end
function Move_Order2()
	Nave40 = Find_All_Objects_Of_Type("Victory_Destroyer")
	
	attack_ship_move_to_marker = Find_First_Object("STORY_TRIGGER_ZONE_13")
		
	for k, unit in pairs(Nave40) do
			unit.Attack_Move(attack_ship_move_to_marker)
	end
end
	
