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

unit_list01 = { "IA_Hu_Hvy_Frigate", "IA_Hu_Hvy_Cruiser", "IA_Hu_Cruiser", "IA_Hu_Hvy_BattleCRUII", "IA_Hu_Hvy_BattleCRUI" }
unit_list02 = { "IA_Hu_Hvy_Frigate", "IA_Hu_Hvy_Cruiser", "IA_Hu_Cruiser", "IA_Hu_Hvy_BattleCRUII", "IA_Hu_Hvy_BattleCRUI" }
unit_list03 = { "IA_Hu_Hvy_Frigate", "IA_Hu_Hvy_Cruiser", "IA_Hu_Cruiser", "IA_Hu_Hvy_BattleCRUII", "IA_Hu_Hvy_BattleCRUI" }
unit_list04 = { "IA_Hu_Hvy_Frigate", "IA_Hu_Hvy_Cruiser", "IA_Hu_Cruiser", "IA_Hu_Hvy_BattleCRUII", "IA_Hu_Hvy_BattleCRUI" }
unit_list05 = { "IA_Hu_Hvy_Frigate", "IA_Hu_Hvy_Cruiser", "IA_Hu_Cruiser", "IA_Hu_Hvy_BattleCRUII", "IA_Hu_Hvy_BattleCRUI" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Xagobah")
				rebeldes = Find_Player("Hutts")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Nkllon")
				rebeldes = Find_Player("Hutts")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Woostri")
				rebeldes = Find_Player("Hutts")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("Hijarna")
				rebeldes = Find_Player("Hutts")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Genon")
				rebeldes = Find_Player("Hutts")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
