--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Sarapin_Land = State_Batalla_de_Sarapin_Land
	}
		

assault_list1 = {"Rebel_Speeder_Wing", "Rebel_Speeder_Wing", "Rebel_Speeder_Wing", "Rebel_Speeder_Wing", "Rebel_Speeder_Wing", "Rebel_Speeder_Wing"}
assault_list2 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad", "Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
assault_list3 = {"Rebel_Light_Tank_Brigade", "Rebel_Light_Tank_Brigade", "Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad", "Rebel_Artillery_Brigade", "Rebel_Infantry_Squad", "Rebel_Fast_Tank_Brigade", "Rebel_Fast_Tank_Brigade"}
assault_list4 = {"Imperial_Anti_Aircraft_Company", "AT_AT_Walker", "AT_AT_Walker", "Veers_AT_AT_Missions", "Imperial_MOVILEART_Corp"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Sarapin_Land(message)
				
		if message == OnEnter then
								
				spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_02")
				Despliegue_de_unidades6 = SpawnList(assault_list1, spawn_marker6, Find_Player("Rebel"), true, false)
				zona_de_ataque6 = Find_First_Object("POSICION_ATAQUE_01")	
				for k, unit in pairs(Despliegue_de_unidades6) do
					unit.Attack_Move(zona_de_ataque6)
				end

				spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_03")
				Despliegue_de_unidades7 = SpawnList(assault_list2, spawn_marker7, Find_Player("Rebel"), true, false)
				zona_de_ataque7 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades7) do
					unit.Attack_Move(zona_de_ataque7)
				end
				
				spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_00")
				Despliegue_de_unidades8 = SpawnList(assault_list3, spawn_marker8, Find_Player("Rebel"), true, false)
				zona_de_ataque8 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades8) do
					unit.Attack_Move(zona_de_ataque8)
				end	
				
				spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_08")
				Despliegue_de_unidades1 = SpawnList(assault_list4, spawn_marker1, Find_Player("Empire"), true, false)
				zona_de_ataque1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
			
		end	
end