--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Bilbringi_Space = State_Batalla_de_Bilbringi_Space
	}
		

assault_list0 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Deaths_Head"}
assault_list1 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Inexorable"}
assault_list2 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Stormhawk"}
assault_list3 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Nemesis"}
assault_list4 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Deaths_Head"}
assault_list5 = {"Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Katana_Dreadnought", "Command_Quimera"}
assault_list6 = {"R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought", "R_Dreadnought"}
assault_list7 = {"Mc80AJM_Up_90", "MC60_01", "Liberator_Up", "R_Dreadnought_Up", "MC30_Frigate", "CR_Hvy_Gunboat"}
assault_list8 = {"MC902_1", "Defiance", "R_Dreadnought_Up", "MC30_Frigate", "CR_Hvy_Gunboat"}
assault_list9 = {"MC902_2", "MC75", "Liberator_Up", "MC30_Frigate", "R_Dreadnought_Up", "CR_Hvy_Gunboat"}
assault_list10 = {"Dominator", "Victory_Destroyer", "Victory_Destroyer"}
assault_list11 = {"Dominator", "Victory_Destroyer", "Victory_Destroyer"}
assault_list12 = {"Eventos_Tacticos_Gallofree_Thyferra", "Eventos_Tacticos_Gallofree_Thyferra", "Eventos_Tacticos_Gallofree_Thyferra", "Eventos_Tacticos_ActionIV_Thyferra", "Eventos_Tacticos_ActionIV_Thyferra", "Eventos_Tacticos_ActionIV_Thyferra", "Salvaje_Escort", "Salvaje_Escort", "Salvaje_Escort"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Bilbringi_Space(message)
				
					if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
		if message == OnEnter then
                spawn_marker10 = Find_First_Object("STORY_TRIGGER_ZONE_10")
				SpawnList(assault_list10, spawn_marker10, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker11 = Find_First_Object("STORY_TRIGGER_ZONE_11")
				SpawnList(assault_list11, spawn_marker11, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker0 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                SpawnList(assault_list0, spawn_marker0, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, false)
        end		
		if message == OnEnter then
                spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_02")
                SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_03")
                SpawnList(assault_list3, spawn_marker3, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_04")
                SpawnList(assault_list4, spawn_marker4, Find_Player("Empire"), true, false)
        end
		if message == OnEnter then
                spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_05")
                SpawnList(assault_list5, spawn_marker5, Find_Player("Empire"), true, false)
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(15)
        end
		if message == OnEnter then
                spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_06")
                SpawnList(assault_list6, spawn_marker6, Find_Player("Rebel"), true, false)
        end
		if message == OnEnter then
                spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_07")
                SpawnList(assault_list7, spawn_marker7, Find_Player("Rebel"), true, false)
        end
		if message == OnEnter then
                spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_08")
                SpawnList(assault_list8, spawn_marker8, Find_Player("Rebel"), true, false)
        end
		if message == OnEnter then
                spawn_marker9 = Find_First_Object("STORY_TRIGGER_ZONE_09")
                SpawnList(assault_list9, spawn_marker9, Find_Player("Rebel"), true, false)
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				Sleep(1)
        end
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("Katana_Dreadnought")
				Nave2 = Find_All_Objects_Of_Type("E_Strike")
				Nave3 = Find_All_Objects_Of_Type("Inexorable")
				Nave4 = Find_All_Objects_Of_Type("Stormhawk")
				Nave5 = Find_All_Objects_Of_Type("Nemesis")
				Nave6 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave7 = Find_All_Objects_Of_Type("Command_Quimera")
				Nave8 = Find_All_Objects_Of_Type("Victory_Destroyer")
				Nave9 = Find_All_Objects_Of_Type("Katana_Dreadnought")
				
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
				Sleep(1)
				Story_Event("MISSION_01_DIALOGUE_GO")
				Sleep(5)
		end
		if message == OnEnter then
				Nave10 = Find_All_Objects_Of_Type("Mc80AJM_Up_90")
				Nave11 = Find_All_Objects_Of_Type("MC60_01")
				Nave12 = Find_All_Objects_Of_Type("Liberator_Up")
				Nave13 = Find_All_Objects_Of_Type("R_Dreadnought_Up")
				Nave14 = Find_All_Objects_Of_Type("MC30_Frigate")
				Nave15 = Find_All_Objects_Of_Type("CR_Hvy_Gunboat")
				Nave16 = Find_All_Objects_Of_Type("MC902_1")
				Nave17 = Find_All_Objects_Of_Type("MC75")
				Nave18 = Find_All_Objects_Of_Type("MC902_2")
				Nave19 = Find_All_Objects_Of_Type("Defiance")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Nave15) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave16) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave17) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave18) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave19) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(5)
				Story_Event("MISSION_02_DIALOGUE_GO")
				Sleep(5)
		end
		if message == OnEnter then
				Sleep(15)
                spawn_marker12 = Find_First_Object("POSICION_ATAQUE_03")
                SpawnList(assault_list12, spawn_marker12, Find_Player("Rebel"), true, false)
        end
		if message == OnEnter then
				Nave20 = Find_All_Objects_Of_Type("Eventos_Tacticos_Gallofree_Thyferra")
				Nave21 = Find_All_Objects_Of_Type("Eventos_Tacticos_ActionIV_Thyferra")
				Nave22 = Find_All_Objects_Of_Type("Salvaje_Escort")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Nave29) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave30) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave31) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(5)
		end
end