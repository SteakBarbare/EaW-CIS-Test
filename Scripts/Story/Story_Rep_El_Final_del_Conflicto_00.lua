--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"CIS_LucrehulkB", "CIS_LucrehulkB02", "CIS_LucrehulkB02", "CIS_Missile_Frg", "CIS_Missile_Frg"}
assault_list1 = {"CIS_Missile_Frg", "CIS_LucrehulkD", "CIS_LucrehulkD", "CIS_Recusant", "CIS_MunificentClan"}
assault_list2 = {"CIS_Recusant", "CIS_MunificentClan", "CIS_Recusant", "CIS_LucrehulkB", "CIS_LucrehulkB02"}
assault_list3 = {"CIS_LucrehulkB02", "CIS_Hardcell", "CIS_Hardcell", "CIS_Hardcell", "CIS_Hardcell"}
assault_list4 = {"CIS_Hardcell", "CIS_Munificent", "CIS_Munificent", "CIS_Munificent", "CIS_MunificentClan"}
assault_list5 = {"CIS_MunificentClan", "Mano_Invisible", "CIS_Recusant", "CIS_Recusant", "CIS_Recusant"}
assault_list6 = {"REP_Dreadnought", "REP_Dreadnought", "REP_Dreadnought", "REP_AcclamatorII", "REP_AcclamatorII", "REP_AcclamatorII"}
assault_list7 = {"Rep_Med_CRU", "Rep_Med_CRU", "Rep_Med_CRU", "Rep_Med_CRU", "Rep_Med_CRU", "Rep_Med_CRU"}
assault_list8 = {"Rep_VenatorX", "REP_RandEcliptic", "REP_RandEcliptic", "Rep_VenatorX", "Rep_VenatorX"}
assault_list9 = {"Rep_VenatorX", "Rep_VenatorX", "Rep_Legacy", "Rep_VenatorX", "Rep_VenatorX", "Rep_Victoria"}
assault_list10 = {"Rep_Protector", "REP_Valiant", "REP_Carrack"}
assault_list11 = {"REP_Carrack", "REP_Carrack", "VenatorCody"}

empire = Find_Player("Republic")
rebel = Find_Player("CIS")

end

function State_Init(message)
				
				if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                SpawnList(assault_list6, spawn_marker4, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                SpawnList(assault_list7, spawn_marker5, Find_Player("Republic"), true, true)
				Story_Event("MISSION_00_DIALOGUE_GO")
        end
		if message == OnEnter then
                spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_02")
                SpawnList(assault_list8, spawn_marker6, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_03")
                SpawnList(assault_list9, spawn_marker7, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_04")
                SpawnList(assault_list10, spawn_marker8, Find_Player("Republic"), true, true)
        end
		if message == OnEnter then
                spawn_marker9 = Find_First_Object("STORY_TRIGGER_ZONE_05")
                SpawnList(assault_list11, spawn_marker9, Find_Player("Republic"), true, true)
				Sleep(15)
        end
		if message == OnEnter then
                spawn_marker10 = Find_First_Object("STORY_TRIGGER_ZONE_06")
				SpawnList(assault_list0, spawn_marker10, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker11 = Find_First_Object("STORY_TRIGGER_ZONE_07")
				SpawnList(assault_list1, spawn_marker11, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker0 = Find_First_Object("STORY_TRIGGER_ZONE_08")
                SpawnList(assault_list2, spawn_marker0, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_09")
                SpawnList(assault_list3, spawn_marker1, Find_Player("CIS"), true, true)
        end		
		if message == OnEnter then
                spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_10")
                SpawnList(assault_list4, spawn_marker2, Find_Player("CIS"), true, true)
        end
		if message == OnEnter then
                spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_11")
                SpawnList(assault_list5, spawn_marker3, Find_Player("CIS"), true, true)
				empire_reveal = FogOfWar.Reveal_All(Republic)
				rebel_reveal = FogOfWar.Reveal_All(CIS)
				Sleep(1)
        end
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("CIS_LucrehulkB")
				Nave2 = Find_All_Objects_Of_Type("CIS_LucrehulkB02")
				Nave3 = Find_All_Objects_Of_Type("CIS_Missile_Frg")
				Nave4 = Find_All_Objects_Of_Type("CIS_LucrehulkD")
				Nave5 = Find_All_Objects_Of_Type("CIS_Recusant")
				Nave6 = Find_All_Objects_Of_Type("CIS_MunificentClan")
				Nave7 = Find_All_Objects_Of_Type("CIS_Hardcell")
				Nave8 = Find_All_Objects_Of_Type("CIS_Munificent")
				Nave9 = Find_All_Objects_Of_Type("Mano_Invisible")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_01")	
				
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
				Nave10 = Find_All_Objects_Of_Type("REP_Dreadnought")
				Nave11 = Find_All_Objects_Of_Type("REP_AcclamatorII")
				Nave12 = Find_All_Objects_Of_Type("Rep_Med_CRU")
				Nave13 = Find_All_Objects_Of_Type("Rep_VenatorX")
				Nave14 = Find_All_Objects_Of_Type("REP_RandEcliptic")
				Nave15 = Find_All_Objects_Of_Type("Rep_Legacy")
				Nave16 = Find_All_Objects_Of_Type("Rep_Victoria")
				Nave17 = Find_All_Objects_Of_Type("Rep_Protector")
				Nave18 = Find_All_Objects_Of_Type("REP_Valiant")
				Nave19 = Find_All_Objects_Of_Type("REP_Carrack")
				Nave20 = Find_All_Objects_Of_Type("VenatorCody")
				
				zona_de_ataque = Find_First_Object("POSICION_ATAQUE_02")	
				
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
				for k, unit in pairs(Nave20) do
						unit.Attack_Move(zona_de_ataque)
				end
				Sleep(5)
				Story_Event("MISSION_02_DIALOGUE_GO")
				Sleep(5)
		end
		
end

	
