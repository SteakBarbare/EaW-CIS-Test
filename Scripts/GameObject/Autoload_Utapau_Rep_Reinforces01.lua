-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list1 = { "Republic_AT_TE_Company_MKII", "Republic_AT_TE_Company_MKII", "Rep_Hovermoto_Phase2_Squad", "Republic_ClonGun_Corp", "ClonPhase2Plex_Squad", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_ARC_170_Squadron_Land"}
	unit_list2 = { "Republic_AT_TE_Company_MKII", "Republic_AT_TE_Company_MKII", "Rep_Hovermoto_Phase2_Squad", "Republic_ClonGun_Corp", "ClonPhase2Plex_Squad", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_ARC_170_Squadron_Land"}
	unit_list3 = { "Republic_AT_TE_Company_MKII", "Republic_AT_TE_Company_MKII", "Rep_Hovermoto_Phase2_Squad", "Republic_Clon_Sniper_Phase2_Squad", "ClonPhase2Plex_Squad", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_ARC_170_Squadron_Land"} 
	
end


function State_Init(message)
	if message == OnEnter then
		cody = Find_First_Object("Cody_Mission_Utapau")
		player = cody.Get_Owner()
		
		landing_zone1 = Find_First_Object("STORY_TRIGGER_ZONE_06")
		landing_zone2 = Find_First_Object("STORY_TRIGGER_ZONE_07")
		landing_zone3 = Find_First_Object("STORY_TRIGGER_ZONE_08")
		Despliegue_de_unidades1 = SpawnList(unit_list1, landing_zone1, player, true, true)
		Despliegue_de_unidades2 = SpawnList(unit_list2, landing_zone2, player, true, true)
		Despliegue_de_unidades3 = SpawnList(unit_list3, landing_zone3, player, true, true)
		Sleep(15)
		zona_de_ataque1 = Find_First_Object("POSICION_ATAQUE_01")	
		for k, unit in pairs(Despliegue_de_unidades1) do
			unit.Attack_Move(zona_de_ataque1)
		end	
		zona_de_ataque2 = Find_First_Object("POSICION_ATAQUE_02")	
		for k, unit in pairs(Despliegue_de_unidades2) do
			unit.Attack_Move(zona_de_ataque2)
		end	
		zona_de_ataque3 = Find_First_Object("POSICION_ATAQUE_03")	
		for k, unit in pairs(Despliegue_de_unidades3) do
			unit.Attack_Move(zona_de_ataque3)
		end	
		Sleep(5)
		Object.Despawn()
	end
end





