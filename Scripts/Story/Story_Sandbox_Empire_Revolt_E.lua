--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Special_Movement_01 = State_Revolt_Planet_01
		,Special_Movement_02 = State_Revolt_Planet_02
		,Special_Movement_03 = State_Revolt_Planet_03
		,Special_Movement_04 = State_Revolt_Planet_04
		,Special_Movement_05 = State_Revolt_Planet_05
		}

unit_list01 = { "E_Fleet_Tech_5_AI", "IA_ISD3", "IA_Allegiance_Destroyer", "IA_EyeofPalpatine", "IA_IMPLACABLESD", "IA_IMPLACABLEBR" }
unit_list02 = { "E_Fleet_Tech_4_AI", "IA_ISD3", "IA_Allegiance_Destroyer", "IA_Eclipse2_SSD", "IA_PraetorMKII", "IA_Relentless" }
unit_list03 = { "E_Fleet_Dominance_AI", "IA_ISD3", "IA_Allegiance_Destroyer", "IA_Imperium_SSD", "IA_SSD2", "IA_World_Devastator" }
unit_list04 = { "E_Fleet_Assertor_AI", "IA_ISD3", "IA_Allegiance_Destroyer", "IA_SSDLegacy", "IA_Venganza", "IA_SOVEREIGN_SSD" }
unit_list05 = { "IA_Supremacy", "IA_Resurgent", "IA_Resurgent", "IA_Resurgent", "IA_Resurgent", "IA_Resurgent" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Tangrene")
				rebeldes = Find_Player("Empire")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Dorlo")
				rebeldes = Find_Player("Empire")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Sulon")
				rebeldes = Find_Player("Empire")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("Qat_Chrystac")
				rebeldes = Find_Player("Empire")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Generis")
				rebeldes = Find_Player("Empire")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
