--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Batalla_de_Utapau = State_Batalla_de_Utapau
		,Dialogo_Inicio_01 = State_Dialogo_Inicio_01
		,Dialog_Comienzo_orden_66 = State_Dialog_Comienzo_orden_66
	}

assault_list1 = {"MAGNAGUARD_Company", "C_BattleDroid_Squad", "C_Super_BattleDroidB2_Squad"}
assault_list2 = {"C_CIS_walk_DW_Group", "C_CIS_Crabdroid_Group", "C_BattleDroid_Squad", "B1Droid_Sniper_Squad", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroid_Squad"}
assault_list3 = {"C_CIS_Crabdroid_Group", "C_CIS_walk_DW_Group", "C_BattleDroid_Squad", "C_PlexDroidB1_Squad", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroid_Squad"}
assault_list4 = {"C_Stap_Squad", "C_CIS_Crabdroid_Group", "C_CIS_walk_DW_Group", "C_BattleDroid_Squad", "C_PlexDroidB1_Squad", "C_Stap_Squad", "C_Stap_Squad", "C_Droideka_Mk1_Company", "C_Droideka_Mk1_Company", "C_Droideka_Mk1_Company", "C_Vulture_squadron", "C_Vulture_squadron", "C_Vulture_squadron"}
assault_list5 = {"Republic_Cody_Mission_Utapau_Team",}
assault_list6 = {"General_Grievous"}

empire = Find_Player("Republic")
rebel = Find_Player("CIS")

end

function State_Batalla_de_Utapau(message)
		if message == OnEnter then
		
                spawn_marker1 = Find_First_Object("POSICION_ATAQUE_01")
                Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("CIS"), true, true)
				zona_de_ataque1 = Find_Hint("CLONOBIWAN_Misiones", "jedi")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Target(zona_de_ataque1)
				end
				empire_reveal = FogOfWar.Reveal_All(Republic)
				rebel_reveal = FogOfWar.Reveal_All(CIS)
				
			   spawn_marker6 = Find_First_Object("POSICION_ATAQUE_01") 
 			   Despliegue_de_unidades6 = SpawnList(assault_list6, spawn_marker6, Find_Player("CIS"), true, true)
			   zona_de_ataque6 = Find_First_Object("PUNTO_DE_ATAQUE")	
			   for k, unit in pairs(Despliegue_de_unidades6) do
					unit.Move_To(zona_de_ataque6)
			   end
			   
        end
end
function State_Dialogo_Inicio_01(message)
		if message == OnEnter then
                spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_03")
				Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker2, Find_Player("CIS"), true, true)
				zona_de_ataque2 = Find_First_Object("POSICION_ATAQUE_02")	
				for k, unit in pairs(Despliegue_de_unidades2) do
					unit.Attack_Move(zona_de_ataque2)
				end

                spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_04")
				Despliegue_de_unidades3 = SpawnList(assault_list3, spawn_marker3, Find_Player("CIS"), true, true)
				zona_de_ataque3 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades3) do
					unit.Attack_Move(zona_de_ataque3)
				end

                spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_05")
				Despliegue_de_unidades4 = SpawnList(assault_list4, spawn_marker4, Find_Player("CIS"), true, true)
				zona_de_ataque4 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades4) do
					unit.Attack_Move(zona_de_ataque4)
				end

                spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_06")
				Despliegue_de_unidades5 = SpawnList(assault_list5, spawn_marker5, Find_Player("Republic"), true, true)
				zona_de_ataque5 = Find_First_Object("POSICION_ATAQUE_01")	
				for k, unit in pairs(Despliegue_de_unidades5) do
					unit.Attack_Move(zona_de_ataque5)
				end
				
				
        end
end
function State_Dialog_Comienzo_orden_66(message)
		if message == OnEnter then
			enemigo_player = Find_Player("CIS")
			republic_player = Find_Player("Republic")
			obiwan = Find_Hint("CLONOBIWAN_Misiones", "jedi")
			obiwan.Change_Owner(enemigo_player)
			zona_de_ataque7 = Find_First_Object("PUNTO_DE_ATAQUE")	
			for k, unit in pairs(obiwan) do
				unit.Move_To(zona_de_ataque7)
			end
		end
		
end
	
