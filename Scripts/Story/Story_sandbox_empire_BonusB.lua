--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Special_Movement_02 = State_Hacer_Pirata_Coruscant
		,Special_Movement_02b = State_Hacer_Byss_Imperial
		,Special_Movement_02c = State_Hacer_DaSoocha_Rebelde
		}

unit_list11 = { "ISD2", "ISD2", "ISD2", "ISD2", "ISD2", "VSD2", "VSD2", "VSD2", "VSD2", "E_Strike", "E_Strike", "E_Strike", "E_Strike", "Titan", "Allegiance", "Allegiance", "Allegiance", "E_Carrack", "E_Carrack", "E_Carrack", "E_Carrack", "E_Nebulon_B", "E_Nebulon_B" }
unit_list16 = { "Titan", "Allegiance", "Allegiance", "Allegiance", "VSD3", "VSD3", "VSD3", "VSD3" }
unit_list17 = {"R_Fleet_Tech_4", "R_Tech4_Field_Com_Rebel_Team"}
unit_list18 = {"Grupo_CaminantesX2", "Grupo_CaminantesX2", "Grupo_CaminantesX2", "Imperial_Tie_Tank_Brigade", "Imperial_Tie_Tank_Brigade", "Imperial_Tie_Tank_Brigade", "Rocket_Trooper_Company", "Rocket_Trooper_Company"}

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
freeside = Find_Player("Hutts")

end

function State_Hacer_Pirata_Coruscant(message)
			if message == OnEnter then
				Sleep(2)
				
				coruscantguerracivil = FindPlanet("Coruscant")
				freeside = Find_Player("Republic")
				
				poseedor_planeta = coruscantguerracivil.Get_Owner()
				if poseedor_planeta == freeside then
					SpawnList(unit_list11, coruscantguerracivil, freeside, true, false)
					SpawnList(unit_list18, coruscantguerracivil, freeside, true, false)
				end
			end
						
end
function State_Hacer_Byss_Imperial(message)
			if message == OnEnter then
				Sleep(2)								
				Byss_Empire_Planet = FindPlanet("Alderaan")
				Empire_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Byss_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list16, Byss_Empire_Planet, Empire_Bando, true, false)
				end
			end
end		
function State_Hacer_DaSoocha_Rebelde(message)
			if message == OnEnter then
				Sleep(2)								
				DaSoocha_Rebel_Planet = FindPlanet("Fresia")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = DaSoocha_Rebel_Planet.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list17, DaSoocha_Rebel_Planet, Rebel_Bando, true, false)
				end
			end
end
		
