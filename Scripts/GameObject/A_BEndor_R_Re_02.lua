-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list4 = {"MC80A_Up", "NEBULON_B_FRIGATE", "R_DREADNOUGHT", "CORELLIAN_CORVETTE", "Eventos_Tacticos_Gallofree", "Eventos_Tacticos_Gallofree", "R_CR_CVM", "Eventos_Tacticos_Gallofree"}
unit_list5 = {"MC80AJM_Up", "R_BulkCRU", "NEBULON_B2_FRIGATE", "Quasar", "Eventos_Tacticos_Gallofree", "Eventos_Tacticos_Gallofree", "R_CR_CVM"}
unit_list6 = {"MC120", "NEBULON_B_FRIGATE", "R_DREADNOUGHT", "CALAMARI_CRUISER_Up", "CORELLIAN_GUNBOAT", "CORELLIAN_GUNBOAT", "CORELLIAN_GUNBOAT", "Eventos_Tacticos_Gallofree"}
	
end


function State_Init(message)
	if message == OnEnter then
		Sleep(5)
		player = Find_Player("Rebel")
		spawn_zone1 = Find_Hint("STORY_TRIGGER_ZONE", "rebels1")
		spawn_zone2 = Find_Hint("STORY_TRIGGER_ZONE", "rebels2")
		spawn_zone3 = Find_Hint("STORY_TRIGGER_ZONE", "rebels3")
		spawn_zone4 = Find_Hint("STORY_TRIGGER_ZONE", "rebels4")
		spawn_zone5 = Find_Hint("STORY_TRIGGER_ZONE", "rebels5")
		spawn_zone6 = Find_Hint("STORY_TRIGGER_ZONE", "rebels6")

		Despliegue_de_unidades4 = SpawnList(unit_list4, spawn_zone4, player, true, true)
		Sleep(2)
		Despliegue_de_unidades5 = SpawnList(unit_list5, spawn_zone5, player, true, true)
		Sleep(2)
		Despliegue_de_unidades6 = SpawnList(unit_list6, spawn_zone6, player, true, true)
		Sleep(15)

		zona_de_ataque4 = Find_Hint("STORY_TRIGGER_ZONE", "combate4")
		for k, unit in pairs(Despliegue_de_unidades4) do
			unit.Guard_Target(zona_de_ataque4)
		end	
		zona_de_ataque5 = Find_Hint("STORY_TRIGGER_ZONE", "combate5")
		for k, unit in pairs(Despliegue_de_unidades5) do
			unit.Guard_Target(zona_de_ataque5)
		end	
		zona_de_ataque6 = Find_Hint("STORY_TRIGGER_ZONE", "combate6")
		for k, unit in pairs(Despliegue_de_unidades6) do
			unit.Guard_Target(zona_de_ataque6)
		end	
		Sleep(5)
		--ScriptExit()
	end
end





