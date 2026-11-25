-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = {"REP_AcclamatorII", "Rep_Trireme", "REP_AcclamatorI", "REP_AcclamatorI"}
unit_list2 = {"Rep_Trireme", "REP_CR_CV", "Rep_Med_CRU", "REP_AcclamatorI", "REP_Valiant"}
unit_list3 = {"Rep_MandatorI", "REP_CR_CV", "Rep_Trireme", "REP_CR_CV", "REP_Valiant"}
unit_list4 = {"Rep_MandatorII", "Rep_Med_CRU", "Rep_Trireme", "Rep_Med_CRU", "Rep_Med_CRU"}
	
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("Republic")
		spawn_zone1 = Find_Hint("STORY_TRIGGER_ZONE", "separatist1")
		spawn_zone2 = Find_Hint("STORY_TRIGGER_ZONE", "separatist2")
		spawn_zone3 = Find_Hint("STORY_TRIGGER_ZONE", "separatist3")
		spawn_zone4 = Find_Hint("STORY_TRIGGER_ZONE", "separatist4")
		Despliegue_de_unidades1 = SpawnList(unit_list1, spawn_zone1, player, true, true)
		Despliegue_de_unidades2 = SpawnList(unit_list2, spawn_zone2, player, true, true)
		Despliegue_de_unidades3 = SpawnList(unit_list3, spawn_zone3, player, true, true)
		Despliegue_de_unidades4 = SpawnList(unit_list4, spawn_zone4, player, true, true)
		Sleep(15)
		zona_de_ataque1 = Find_Hint("STORY_TRIGGER_ZONE", "republic1")
		for k, unit in pairs(Despliegue_de_unidades1) do
			unit.Attack_Move(zona_de_ataque1)
		end	
		zona_de_ataque2 = Find_Hint("STORY_TRIGGER_ZONE", "republic2")
		for k, unit in pairs(Despliegue_de_unidades2) do
			unit.Attack_Move(zona_de_ataque2)
		end	
		zona_de_ataque3 = Find_Hint("STORY_TRIGGER_ZONE", "republic3")
		for k, unit in pairs(Despliegue_de_unidades3) do
			unit.Attack_Move(zona_de_ataque3)
		end	
		zona_de_ataque4 = Find_Hint("STORY_TRIGGER_ZONE", "republic4")
		for k, unit in pairs(Despliegue_de_unidades4) do
			unit.Attack_Move(zona_de_ataque4)
		end	
		Sleep(5)
		ScriptExit()
	end
end





