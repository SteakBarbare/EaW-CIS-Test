-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
--Generic_Star_Destroyer para que haya menos cazas imperiales	
unit_list1 = {"ISD2", "TECTOR", "STAR_DESTROYER", "Generic_Star_Destroyer", "ISD2"}
unit_list2 = {"ISD2", "TECTOR", "ISD2_NoFighters", "STAR_DESTROYER", "Generic_Star_Destroyer"}
unit_list3 = {"ISD2", "TECTOR", "STAR_DESTROYER", "ISD2_NoFighters", "TECTOR"}
unit_list4 = {"ISD2", "TECTOR", "ISD2_NoFighters"}
unit_list5 = {"ISD2", "STAR_DESTROYER", "Generic_Star_Destroyer", "ISD2_NoFighters"}
unit_list6 = {"ISD2", "STAR_DESTROYER", "Generic_Star_Destroyer", "ISD2_NoFighters"}
	
end


function State_Init(message)
	if message == OnEnter then
		Sleep(5)
		player = Find_Player("Empire")
		spawn_zone1 = Find_Hint("STORY_TRIGGER_ZONE", "empire1")
		spawn_zone2 = Find_Hint("STORY_TRIGGER_ZONE", "empire2")
		spawn_zone3 = Find_Hint("STORY_TRIGGER_ZONE", "empire3")
		spawn_zone4 = Find_Hint("STORY_TRIGGER_ZONE", "empire4")
		spawn_zone5 = Find_Hint("STORY_TRIGGER_ZONE", "empire5")
		spawn_zone6 = Find_Hint("STORY_TRIGGER_ZONE", "empire6")
		Despliegue_de_unidades1 = SpawnList(unit_list1, spawn_zone1, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades1) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(2)
		Despliegue_de_unidades2 = SpawnList(unit_list2, spawn_zone2, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades2) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(2)
		Despliegue_de_unidades3 = SpawnList(unit_list3, spawn_zone3, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades3) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(2)
		Despliegue_de_unidades4 = SpawnList(unit_list4, spawn_zone4, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades4) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(2)
		Despliegue_de_unidades5 = SpawnList(unit_list5, spawn_zone5, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades5) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(2)
		Despliegue_de_unidades6 = SpawnList(unit_list6, spawn_zone6, player, true, true)
				for i,unit in pairs(Despliegue_de_unidades6) do
					unit.Cinematic_Hyperspace_In(1)
				end
		Sleep(15)
		zona_de_ataque1 = Find_Hint("STORY_TRIGGER_ZONE", "combate1")
		for k, unit in pairs(Despliegue_de_unidades1) do
			unit.Guard_Target(zona_de_ataque1)
		end	
		zona_de_ataque2 = Find_Hint("STORY_TRIGGER_ZONE", "combate2")
		for k, unit in pairs(Despliegue_de_unidades2) do
			unit.Guard_Target(zona_de_ataque2)
		end	
		zona_de_ataque3 = Find_Hint("STORY_TRIGGER_ZONE", "combate3")
		for k, unit in pairs(Despliegue_de_unidades3) do
			unit.Guard_Target(zona_de_ataque3)
		end	
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





