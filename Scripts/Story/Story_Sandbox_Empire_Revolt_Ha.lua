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

unit_list01 = { "IA_Ha_Battledragon", "IA_Ha_BattleCarrier", "IA_Ha_BetaCruiser", "IA_Ha_BetaCruiser", "IA_Ha_BetaCruiser", "IA_Ha_BetaCruiser" }
unit_list02 = { "IA_Ha_Battledragon", "IA_Ha_BattleCarrier", "IA_Ha_Heavy_Cruiser", "IA_Ha_Heavy_Cruiser", "IA_Ha_Heavy_Cruiser", "IA_Ha_Heavy_Cruiser" }
unit_list03 = { "IA_Ha_Battledragon", "IA_Ha_BattleCarrier", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser", "IA_Ha_NovaCruiser" }
unit_list04 = { "IA_Ha_Battledragon", "IA_Ha_BattleCarrier", "IA_Ha_Stella_Frigate", "IA_Ha_Stella_Frigate", "IA_Ha_Stella_Frigate", "IA_Ha_Stella_Frigate" }
unit_list05 = { "IA_Ha_Battledragon", "IA_Ha_BattleCarrier", "IA_Ha_Patrolship", "IA_Ha_Patrolship", "IA_Ha_Patrolship", "IA_Ha_Patrolship" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Sarka")
				rebeldes = Find_Player("Hapan")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Belsmuth")
				rebeldes = Find_Player("Hapan")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Poderis")
				rebeldes = Find_Player("Hapan")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("Mindor")
				rebeldes = Find_Player("Hapan")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Corvis_Minor")
				rebeldes = Find_Player("Hapan")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
