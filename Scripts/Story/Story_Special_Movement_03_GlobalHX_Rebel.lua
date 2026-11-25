--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Special_Movement_03 = State_Hacer_Imperial_Bastion
		,Special_Movement_03b = State_Hacer_Imperial_ByssDestroyed
		,Special_Movement_03c = State_Hacer_Imperial_Delvardus
		,Special_Movement_03d = State_Hacer_Imperial_TossBeacon
		,Special_Movement_03e = State_Hacer_Imperial_Harrsk
		,Special_Movement_03f = State_Hacer_Imperial_Tedaroc
		}

unit_list18 = {"Bastion_Empire_Fleet"}
unit_list19 = {"ByssDestroyed_Empire_Fleet"}
unit_list20 = {"Delvardus_Empire_Fleet", "KnightHammer"}
unit_list21 = {"TossBeacon_Empire_Fleet"}
unit_list22 = {"Harrsk_Empire_Fleet", "Firestorm"}
unit_list24 = {"Tedaroc_Empire_Fleet", "VSD13X"}


Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Hutts")

end

function State_Hacer_Imperial_Bastion(message)
			if message == OnEnter then
				Sleep(2)								
				Bastion_Empire_Planet = FindPlanet("Bastion")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Bastion_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list18, Bastion_Empire_Planet, Empire_Bando, true, false)
				end
			end
end	
function State_Hacer_Imperial_ByssDestroyed(message)
			if message == OnEnter then
				Sleep(2)								
				Byss_Empire_Planet = FindPlanet("Byss")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Byss_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list19, Byss_Empire_Planet, Empire_Bando, true, false)
				end
			end
end	
function State_Hacer_Imperial_Delvardus(message)
			if message == OnEnter then
				Sleep(2)								
				Delvardus_Empire_Planet = FindPlanet("Delvardus")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Delvardus_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list20, Delvardus_Empire_Planet, Empire_Bando, true, false)
				end
			end
end	
function State_Hacer_Imperial_TossBeacon(message)
			if message == OnEnter then
				Sleep(2)								
				TossBeacon_Empire_Planet = FindPlanet("TossBeacon")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = TossBeacon_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list21, TossBeacon_Empire_Planet, Empire_Bando, true, false)
				end
			end
end	
function State_Hacer_Imperial_Harrsk(message)
			if message == OnEnter then
				Sleep(2)								
				Harrsk_Empire_Planet = FindPlanet("Harrsk")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Harrsk_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list22, Harrsk_Empire_Planet, Empire_Bando, true, false)
				end
			end
end	
function State_Hacer_Imperial_Tedaroc(message)
			if message == OnEnter then
				Sleep(2)								
				Tedaroc_Empire_Planet = FindPlanet("Tedaroc")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Tedaroc_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list24, Tedaroc_Empire_Planet, Empire_Bando, true, false)
				end
			end
end
	
		
