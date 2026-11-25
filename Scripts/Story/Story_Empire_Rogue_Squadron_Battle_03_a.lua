--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Batalla_de_Borleias_land = State_Batalla_de_Borleias_land
		,Destruido_primer_Generador = State_Destruido_primer_Generador
	}

assault_list1 = {"X_WING_FIGHTER_WEDGE_ROGUE_10_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_11_LAND"}
assault_list2 = {"TIE_FIGHTER_LAND", "TIE_FIGHTER_LAND", "TIE_FIGHTER_LAND", "TIE_FIGHTER_LAND", "TIE_FIGHTER_LAND", "TIE_FIGHTER_LAND"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end

function State_Batalla_de_Borleias_land(message)
		if message == OnEnter then
		
                spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)
								
				spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_01")
				Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), true, true)
				
				Sleep(5)
				zona_de_ataque1 = Find_First_Object("STORY_TRIGGER_ZONE_02")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end
				
				zona_de_ataque2 = Find_First_Object("STORY_TRIGGER_ZONE_02")
				for k, unit in pairs(Despliegue_de_unidades2) do
					unit.Attack_Move(zona_de_ataque2)
				end
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
		   
        end
end
function State_Destruido_primer_Generador(message)
		if message == OnEnter then
				Xwing1 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_10_LAND")
				zona_de_ataque3 = Find_First_Object("STORY_TRIGGER_ZONE_03")
				for k, unit in pairs(Xwing1) do
					unit.Attack_Move(zona_de_ataque3)
				end
				
				Xwing2 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_11_LAND")
				zona_de_ataque4 = Find_First_Object("STORY_TRIGGER_ZONE_03")
				for k, unit in pairs(Xwing4) do
					unit.Attack_Move(zona_de_ataque4)
				end
        end
end

	
