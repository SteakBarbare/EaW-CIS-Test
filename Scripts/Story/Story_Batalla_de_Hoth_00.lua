--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Hoth_Land = State_Batalla_de_Hoth_Land
	}
		

assault_list1 = {"Rebel_Speeder_Wing", "Rebel_Speeder_Wing"}
assault_list2 = {"Rebel_Infantry_Squad", "REBEL_ANTI_VEHICLE_TURRET"}
assault_list3 = {"Rebel_Infantry_Squad", "REBEL_ANTI_VEHICLE_TURRET"}
assault_list4 = {"Rebel_Infantry_Squad", "REBEL_ANTI_VEHICLE_TURRET"}
assault_list5 = {"Rebel_Infantry_Squad", "REBEL_ANTI_VEHICLE_TURRET"}
assault_list6 = {"Rebel_Infantry_Squad", "REBEL_ANTI_VEHICLE_TURRET"}

assault_list7 = {"Rebel_Old_Assault_Squad_Hoth", "REBEL_ANTI_INFANTRY_TURRET"}
assault_list8 = {"Rebel_Old_Assault_Squad_Hoth", "REBEL_ANTI_INFANTRY_TURRET"}
assault_list9 = {"Rebel_Old_Assault_Squad_Hoth", "REBEL_ANTI_INFANTRY_TURRET"}
assault_list10 = {"Rebel_Old_Assault_Squad_Hoth", "REBEL_ANTI_INFANTRY_TURRET"}

assault_list11 = {"Veers_AT_AT_Walker_Hoth", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker"}
assault_list12 = {"AT_AT_Walker", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker"}
assault_list13 = {"AT_AT_Walker", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker", "AT_ST_Walker"}

assault_list14 = {"Power_generator_R_Hoth"}
assault_list15 = {"GROUND_ION_CANNON_HOTH"}
assault_list16 = {"COMMUNICATIONS_ARRAY_R"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Hoth_Land(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
				Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, false)
				zona_de_ataque1 = Find_First_Object("POSICION_ATAQUE_01")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end
				
				spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_02")
				Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), true, false)
				zona_de_ataque2 = Find_First_Object("STORY_TRIGGER_ZONE_02")	
				for k, unit in pairs(Despliegue_de_unidades2) do
					unit.Guard_Target(zona_de_ataque2)
				end

				spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_03")
				Despliegue_de_unidades3 = SpawnList(assault_list3, spawn_marker3, Find_Player("Rebel"), true, false)
				zona_de_ataque3 = Find_First_Object("STORY_TRIGGER_ZONE_03")	
				for k, unit in pairs(Despliegue_de_unidades3) do
					unit.Guard_Target(zona_de_ataque3)
				end
				
				spawn_marker4 = Find_First_Object("STORY_TRIGGER_ZONE_04")
				Despliegue_de_unidades4 = SpawnList(assault_list4, spawn_marker4, Find_Player("Rebel"), true, false)
				zona_de_ataque4 = Find_First_Object("STORY_TRIGGER_ZONE_04")	
				for k, unit in pairs(Despliegue_de_unidades4) do
					unit.Guard_Target(zona_de_ataque4)
				end

				spawn_marker5 = Find_First_Object("STORY_TRIGGER_ZONE_05")
				Despliegue_de_unidades5 = SpawnList(assault_list5, spawn_marker5, Find_Player("Rebel"), true, false)
				zona_de_ataque5 = Find_First_Object("STORY_TRIGGER_ZONE_05")	
				for k, unit in pairs(Despliegue_de_unidades5) do
					unit.Guard_Target(zona_de_ataque5)
				end
				
				spawn_marker6 = Find_First_Object("STORY_TRIGGER_ZONE_06")
				Despliegue_de_unidades6 = SpawnList(assault_list6, spawn_marker6, Find_Player("Rebel"), true, false)
				zona_de_ataque6 = Find_First_Object("STORY_TRIGGER_ZONE_06")	
				for k, unit in pairs(Despliegue_de_unidades6) do
					unit.Guard_Target(zona_de_ataque6)
				end
				
				spawn_marker7 = Find_First_Object("STORY_TRIGGER_ZONE_07")
				Despliegue_de_unidades7 = SpawnList(assault_list7, spawn_marker7, Find_Player("Rebel"), true, false)
				zona_de_ataque7 = Find_First_Object("STORY_TRIGGER_ZONE_07")	
				for k, unit in pairs(Despliegue_de_unidades7) do
					unit.Guard_Target(zona_de_ataque7)
				end
				
				spawn_marker8 = Find_First_Object("STORY_TRIGGER_ZONE_08")
				Despliegue_de_unidades8 = SpawnList(assault_list8, spawn_marker8, Find_Player("Rebel"), true, false)
				zona_de_ataque8 = Find_First_Object("STORY_TRIGGER_ZONE_08")	
				for k, unit in pairs(Despliegue_de_unidades8) do
					unit.Guard_Target(zona_de_ataque8)
				end
				
				spawn_marker9 = Find_First_Object("STORY_TRIGGER_ZONE_09")
				Despliegue_de_unidades9 = SpawnList(assault_list9, spawn_marker9, Find_Player("Rebel"), true, false)
				zona_de_ataque9 = Find_First_Object("STORY_TRIGGER_ZONE_09")	
				for k, unit in pairs(Despliegue_de_unidades9) do
					unit.Guard_Target(zona_de_ataque9)
				end
				
				spawn_marker10 = Find_First_Object("STORY_TRIGGER_ZONE_10")
				Despliegue_de_unidades10 = SpawnList(assault_list10, spawn_marker10, Find_Player("Rebel"), true, false)
				zona_de_ataque10 = Find_First_Object("STORY_TRIGGER_ZONE_10")	
				for k, unit in pairs(Despliegue_de_unidades10) do
					unit.Guard_Target(zona_de_ataque10)
				end
								
				spawn_marker14 = Find_First_Object("STORY_TRIGGER_ZONE_14")
				SpawnList(assault_list14, spawn_marker14, Find_Player("Rebel"), true, false)
				
				spawn_marker15 = Find_First_Object("STORY_TRIGGER_ZONE_15")
				SpawnList(assault_list15, spawn_marker15, Find_Player("Rebel"), true, false)
				
				spawn_marker16 = Find_First_Object("STORY_TRIGGER_ZONE_16")
				SpawnList(assault_list16, spawn_marker16, Find_Player("Rebel"), true, false)
												
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
        end
	if message == OnEnter then
				
				if Find_First_Object("Veers_AT_AT_Walker") then
				
					empire_reveal = FogOfWar.Reveal_All(empire)
					rebel_reveal = FogOfWar.Reveal_All(rebel)	
					black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
					
					ScriptExit()
				end
	
				spawn_marker11 = Find_First_Object("STORY_TRIGGER_ZONE_11")
				Despliegue_de_unidades11 = SpawnList(assault_list11, spawn_marker11, Find_Player("Empire"), true, false)
				zona_de_ataque11 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades11) do
					unit.Attack_Move(zona_de_ataque11)
				end
				
				spawn_marker12 = Find_First_Object("STORY_TRIGGER_ZONE_12")
				Despliegue_de_unidades12 = SpawnList(assault_list12, spawn_marker12, Find_Player("Empire"), true, false)
				zona_de_ataque12 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades12) do
					unit.Attack_Move(zona_de_ataque12)
				end
				
				spawn_marker13 = Find_First_Object("STORY_TRIGGER_ZONE_13")
				Despliegue_de_unidades13 = SpawnList(assault_list13, spawn_marker13, Find_Player("Empire"), true, false)
				zona_de_ataque13 = Find_First_Object("POSICION_ATAQUE_03")	
				for k, unit in pairs(Despliegue_de_unidades13) do
					unit.Attack_Move(zona_de_ataque13)
				end
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)	
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
	end			
end