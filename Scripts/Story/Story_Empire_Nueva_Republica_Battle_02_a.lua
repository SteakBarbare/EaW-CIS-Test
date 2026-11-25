--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"Star_Galleon"}
assault_list1 = {"E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "Deaths_Head", "E_Strike", "E_Strike"}
assault_list2 = {"E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "Inexorable", "E_Strike", "E_Strike"}
assault_list3 = {"E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "Stormhawk", "E_Strike", "E_Strike"}
assault_list4 = {"E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "Nemesis", "E_Strike", "E_Strike"}
assault_list5 = {"E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "Deaths_Head", "E_Strike", "E_Strike"}
assault_list6 = {"E_Carrack", "E_Carrack", "QuimeraTM", "E_Strike", "E_Strike"}
assault_list7 = {"Mc80aNF", "Mc80bNF", "MC80AJMNF", "RV_Nebulon_BNF", "RV_Nebulon_BNF"}
assault_list8 = {"Mc80aNF", "Mc80bNF", "MC80AJMNF", "RV_Nebulon_BNF", "RV_Nebulon_BNF"}
assault_list9 = {"Mc80aNF", "Mc80bNF", "MC80AJMNF", "RV_Nebulon_BNF", "RV_Nebulon_BNF"}
assault_list10 = {"Millennium_Falcon" }
assault_list11 = {"Rogue_Squadron_Space" }
assault_list12 = {"E_Stormtransport", "E_Stormtransport", "E_Stormtransport", "E_Stormtransport", "E_Stormtransport"}
assault_list13 = {"TIE_Bomber_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron", "TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Fighter_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end

function State_Init(message)
				
				if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
		if message == OnEnter then
                spawn_marker12 = Find_First_Object("Story_Trigger_Zone_02")
                SpawnList(assault_list0, spawn_marker12, Find_Player("Rebel"), true, true)
				Sleep(3)
        end
		if message == OnEnter then
                spawn_marker7 = Find_First_Object("Story_Trigger_Zone_00")
                SpawnList(assault_list7, spawn_marker7, Find_Player("Rebel"), true, true)
        end		
		if message == OnEnter then
                spawn_marker8 = Find_First_Object("Story_Trigger_Zone_05")
                SpawnList(assault_list8, spawn_marker8, Find_Player("Rebel"), true, true)
        end
		if message == OnEnter then
                spawn_marker9 = Find_First_Object("Story_Trigger_Zone_03")
                SpawnList(assault_list9, spawn_marker9, Find_Player("Rebel"), true, true)
				Sleep(30)
        end
		if message == OnEnter then
                Nave30 = Find_All_Objects_Of_Type("Star_Galleon")
                for k, unit in pairs(Nave30) do
						unit.Take_Damage(1000000)
				end
				Sleep(1)
        end
		if message == OnEnter then
                spawn_marker13 = Find_First_Object("Story_Trigger_Zone_02")
                SpawnList(assault_list12, spawn_marker13, Find_Player("Empire"), true, true)
				SpawnList(assault_list13, spawn_marker13, Find_Player("Empire"), true, true)
				Sleep(1)
        end
		if message == OnEnter then
                Nave31 = Find_All_Objects_Of_Type("E_Stormtransport")
				Nave40 = Find_All_Objects_Of_Type("TIE_Bomber_Squadron")
				Nave41 = Find_All_Objects_Of_Type("TIE_Fighter_Squadron")
				zona_de_ataque = Find_First_Object("PUNTO_DE_ATAQUE")	
				for k, unit in pairs(Nave31) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave40) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Nave41) do
						unit.Attack_Move(zona_de_ataque)
				end
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(5)
        end
		if message == OnEnter then
				Nave8 = Find_All_Objects_Of_Type("Mc80aNF")
				Nave9 = Find_All_Objects_Of_Type("Mc80bNF")
				Nave10 = Find_All_Objects_Of_Type("MC80AJMNF")
				Nave11 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				Nave12 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				zona_de_ataque = Find_First_Object("PUNTO_DE_ATAQUE")	
				
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
				Sleep(5)
		end
		if message == OnEnter then
                spawn_marker10 = Find_First_Object("Story_Trigger_Zone_07")
                SpawnList(assault_list10, spawn_marker10, Find_Player("Rebel"), true, true)
                spawn_marker11 = Find_First_Object("Story_Trigger_Zone_06")
                SpawnList(assault_list11, spawn_marker11, Find_Player("Rebel"), true, true)
				Sleep(1)
				Nave28 = Find_All_Objects_Of_Type("Millennium_Falcon")
				Nave29 = Find_All_Objects_Of_Type("Rogue_Squadron_Space")

				enemigos = Find_First_Object("E_Stormtransport")	
				
				for k, unit in pairs(Nave28) do
						unit.Move_To(enemigos)
				end
				for k, unit in pairs(Nave29) do
						unit.Attack_Move(enemigos)
				end
				Sleep(5)
        end		
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("POSICION_ATAQUE_01")
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker2 = Find_First_Object("POSICION_ATAQUE_01")
                SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker3 = Find_First_Object("POSICION_ATAQUE_02")
                SpawnList(assault_list3, spawn_marker3, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("POSICION_ATAQUE_03")
                SpawnList(assault_list4, spawn_marker4, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker5 = Find_First_Object("POSICION_ATAQUE_03")
                SpawnList(assault_list5, spawn_marker5, Find_Player("Empire"), true, true)
        end
		if message == OnEnter then
                spawn_marker6 = Find_First_Object("POSICION_ATAQUE_02")
                SpawnList(assault_list6, spawn_marker6, Find_Player("Empire"), true, true)
				Sleep(3)
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				Story_Event("MISSION_01_DIALOGUE_GO")
        end
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("E_Carrack")
				Nave2 = Find_All_Objects_Of_Type("E_Strike")
				Nave3 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave4 = Find_All_Objects_Of_Type("Inexorable")
				Nave5 = Find_All_Objects_Of_Type("Stormhawk")
				Nave6 = Find_All_Objects_Of_Type("Nemesis")
				Nave7 = Find_All_Objects_Of_Type("Deaths_Head")
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
				Sleep(30)
		end
		if message == OnEnter then
				Nave13 = Find_All_Objects_Of_Type("Mc80aNF")
				Nave14 = Find_All_Objects_Of_Type("Mc80bNF")
				Nave15 = Find_All_Objects_Of_Type("MC80AJMNF")
				Nave16 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				Nave17 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				
				for k, unit in pairs(Nave13) do
						unit.Change_Owner(empire)
				end
				for k, unit in pairs(Nave14) do
						unit.Change_Owner(empire)
				end
				for k, unit in pairs(Nave15) do
						unit.Change_Owner(empire)
				end
				for k, unit in pairs(Nave16) do
						unit.Change_Owner(empire)
				end
				for k, unit in pairs(Nave17) do
						unit.Change_Owner(empire)
				end
				Sleep(3)
				Story_Event("MISSION_02_DIALOGUE_GO")
		end
		if message == OnEnter then
				Nave18 = Find_All_Objects_Of_Type("Mc80aNF")
				Nave19 = Find_All_Objects_Of_Type("Mc80bNF")
				Nave20 = Find_All_Objects_Of_Type("MC80AJMNF")
				Nave21 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				Nave22 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				zona_de_ataque = Find_First_Object("PUNTO_DE_ATAQUE")	
				
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
				Sleep(30)
				Story_Event("MISSION_03_DIALOGUE_GO")
		end
		if message == OnEnter then
				Sleep(60)
				Nave23 = Find_All_Objects_Of_Type("Mc80aNF")
				Nave24 = Find_All_Objects_Of_Type("Mc80bNF")
				Nave25 = Find_All_Objects_Of_Type("MC80AJMNF")
				Nave26 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				Nave27 = Find_All_Objects_Of_Type("RV_Nebulon_BNF")
				
				for k, unit in pairs(Nave23) do
						unit.Take_Damage(1000000000)
				end
				for k, unit in pairs(Nave24) do
						unit.Take_Damage(1000000000)
				end
				for k, unit in pairs(Nave25) do
						unit.Take_Damage(1000000000)
				end
				for k, unit in pairs(Nave26) do
						unit.Take_Damage(1000000000)
				end
				for k, unit in pairs(Nave27) do
						unit.Take_Damage(1000000000)
				end
				Sleep(3)
				Story_Event("MISSION_04_DIALOGUE_GO")
		end
		if message == OnEnter then
				Sleep(10)
				Nave32 = Find_All_Objects_Of_Type("E_Carrack")
				Nave33 = Find_All_Objects_Of_Type("E_Strike")
				Nave34 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave35 = Find_All_Objects_Of_Type("Inexorable")
				Nave36 = Find_All_Objects_Of_Type("Stormhawk")
				Nave37 = Find_All_Objects_Of_Type("Nemesis")
				Nave38 = Find_All_Objects_Of_Type("Deaths_Head")
				Nave39 = Find_All_Objects_Of_Type("QuimeraTM")

				
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
				for k, unit in pairs(Nave39) do
						unit.Hyperspace_Away()
				end
		end
end

	
