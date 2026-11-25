--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"CIS_GUNSHIP", "CIS_GUNSHIP"}
assault_list1 = {"CIS_GUNSHIP", "CIS_GUNSHIP"}
assault_list2 = {"CIS_GUNSHIP", "CIS_GUNSHIP"}
assault_list3 = {"C_CIS_walk_DW_Group", "CIS_walk_DW", "CIS_walk_DW", "CIS_walk_DW", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list4 = {"C_CIS_walk_DW_Group", "CIS_walk_DW", "CIS_walk_DW", "CIS_walk_DW", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list5 = {"C_CIS_walk_DW_Group", "CIS_walk_DW", "CIS_walk_DW", "CIS_walk_DW", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list6 = {"NR_N99_Tank_Droid_Group_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list7 = {"NR_N99_Tank_Droid_Group_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list8 = {"NR_N99_Tank_Droid_Group_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "NR_N99_Tank_Droid_Special", "CIS_GUNSHIP", "C_BattleDroid_Squad"}
assault_list9 = {"HAV_Juggernaut_A5", "HAV_Juggernaut_A5", "Republic_Light_Recon_Squad", "Rep_Hovermoto_Phase2_Squad"}
assault_list10 = {"HAV_Juggernaut_A5", "HAV_Juggernaut_A5", "Republic_Light_Recon_Squad", "Rep_Hovermoto_Phase2_Squad"}
assault_list11 = {"HAV_Juggernaut_A5", "HAV_Juggernaut_A5", "Republic_AT_AP_Company", "Republic_Light_Recon_Squad", "Rep_Hovermoto_Phase2_Squad"}
assault_list12 = {"HAV_Juggernaut_A5", "HAV_Juggernaut_A5", "Republic_AT_AP_Company", "Republic_Light_Recon_Squad", "Rep_Hovermoto_Phase2_Squad"}
assault_list13 = {"Republic_AT_AP_Company", "Republic_Light_Recon_Squad", "Rep_Hovermoto_Phase2_Squad"}
assault_list14 = {"Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Wookie_Squad", "Republic_Wookie_Squad"}
assault_list15 = {"Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Wookie_Squad", "Republic_Wookie_Squad"}
assault_list16 = {"Republic_Stormtrooper_Squad", "Republic_Wookie_Squad", "Republic_Wookie_Squad", "Republic_Wookie_Squad", "Republic_Wookie_Squad"}
assault_list17 = {"Republic_Stormtrooper_Special", "Republic_Stormtrooper_Special", "Republic_Stormtrooper_Special", "YodaRepublic", "REP_Wookie_Soldier_Special", "REP_Wookie_Soldier_Special", "REP_Wookie_Soldier_Special"}

empire = Find_Player("Republic")
rebel = Find_Player("CIS")

end

function State_Init(message)
				
				
		
	if message == OnEnter then
                spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_14")
                SpawnList(assault_list3, spawn_marker3, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_15")
                SpawnList(assault_list4, spawn_marker4, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_16")
                SpawnList(assault_list5, spawn_marker5, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_12")
				SpawnList(assault_list6, spawn_marker6, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_11")
				SpawnList(assault_list7, spawn_marker7, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_15")
                SpawnList(assault_list8, spawn_marker8, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker9 = Find_First_Object("STORY_TRIGGER_ZONE_03")
                SpawnList(assault_list9, spawn_marker9, Find_Player("Republic"), true, true)
        end		
		if message == OnEnter then
                spawn_marker10 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                SpawnList(assault_list10, spawn_marker10, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker11 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                SpawnList(assault_list11, spawn_marker11, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker12 = Find_First_Object("STORY_TRIGGER_ZONE_05")
                SpawnList(assault_list12, spawn_marker12, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker13 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                SpawnList(assault_list13, spawn_marker13, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker14 = Find_First_Object("STORY_TRIGGER_ZONE_06")
                SpawnList(assault_list14, spawn_marker14, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker15 = Find_First_Object("POSICION_ATAQUE_01")
                SpawnList(assault_list15, spawn_marker15, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker16 = Find_First_Object("STORY_TRIGGER_ZONE_04")
                SpawnList(assault_list16, spawn_marker16, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker17 = Find_First_Object("STORY_TRIGGER_ZONE_13")
                SpawnList(assault_list17, spawn_marker17, Find_Player("Republic"), true, true)
				empire_reveal = FogOfWar.Reveal_All(Republic)
				rebel_reveal = FogOfWar.Reveal_All(CIS)
        end
		if message == OnEnter then
				Navea1 = Find_All_Objects_Of_Type("NR_N99_Tank_Droid_Special")
				Navea2 = Find_All_Objects_Of_Type("CIS_walk_DW")
				Navea3 = Find_All_Objects_Of_Type("Battledroids_Special")
				Navea4 = Find_All_Objects_Of_Type("Battledroid_Team")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Navea1) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Navea2) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Navea3) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Navea4) do
						unit.Attack_Move(zona_de_ataque)
				end
		end
		if message == OnEnter then
				Naveb1 = Find_All_Objects_Of_Type("HAV_Juggernaut_A5")
				Naveb2 = Find_All_Objects_Of_Type("Pod_Walker")
				Naveb3 = Find_All_Objects_Of_Type("AT_RT_Walker")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Naveb1) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Naveb2) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Naveb3) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(20)
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(5)
				Story_Event("MISSION_01_DIALOGUE_GO")
				Sleep(20)
		end
		if message == OnEnter then
				Navec1 = Find_All_Objects_Of_Type("CIS_GUNSHIP")
				Navec2 = Find_All_Objects_Of_Type("Rep_Hovermoto_Phase2")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
				for k, unit in pairs(Navec1) do
						unit.Attack_Move(zona_de_ataque)
				end
				for k, unit in pairs(Navec2) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(5)
		end
end

	
