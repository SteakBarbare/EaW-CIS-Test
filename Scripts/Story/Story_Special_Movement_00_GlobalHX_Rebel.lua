--Nomada_Firefox lanzador de unidades en mapa galactico

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Special_Movement_00 = State_Hacer_Coruscant_Imperial01
		}

unit_list0 = {"Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Victory_Destroyer", "Victory_Destroyer", "Victory_Destroyer" }	

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Hutts")

end

function State_Hacer_Coruscant_Imperial01(message)
			if message == OnEnter then
				Sleep(10)								
				Coruscant_Empire_Planet = FindPlanet("Coruscant")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Coruscant_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list0, Coruscant_Empire_Planet, Empire_Bando, true, false)
				end
			end
end
		
