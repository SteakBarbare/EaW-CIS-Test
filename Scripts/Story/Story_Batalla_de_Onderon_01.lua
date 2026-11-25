--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_NewAlderaan_Land = State_Batalla_de_NewAlderaan_Land
	}
		
assault_list1 = {"Emperor_Palpatine2_Team"}
assault_list2 = {"Han_Solo_Team"}
assault_list3 = {"Luke_Skywalker_Jedi_Team"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_NewAlderaan_Land(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("ACTIVAR_NEUTRALES_MARKER")
				Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, false)
				zona_de_ataque1 = Find_First_Object("Land Defender Retreat Marker")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end
				
				spawn_marker2 = Find_First_Object("Land Defender Retreat Marker")
				
				unitsr01 = Find_First_Object("Han_Solo_Team")
				unitsr02 = Find_First_Object("Luke_Skywalker_Jedi_Team")
				if not unitsr01 then
					Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), true, false)
					for k, unit in pairs(Despliegue_de_unidades2) do
						unit.Guard_Target(spawn_marker2)
					end
				end
				if not unitsr02 then
					Despliegue_de_unidades3 = SpawnList(assault_list3, spawn_marker2, Find_Player("Rebel"), true, false)
					for k, unit in pairs(Despliegue_de_unidades3) do
						unit.Guard_Target(spawn_marker2)
					end
				end								
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
		end
		
end