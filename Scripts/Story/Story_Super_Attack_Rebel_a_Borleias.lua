--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Inicio_Spawn_Units = State_Inicio_Spawn_Units
		}
		
unit_list1 = {"R_Fleet_Tech_3"}

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Hutts")

end
function State_Inicio_Spawn_Units(message)
			if message == OnEnter then
				Sleep(2)
				Planet00 = FindPlanet("Kalaan")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet00.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list1, Planet00, Rebel_Bando, false, false)
				end
			end
end		
