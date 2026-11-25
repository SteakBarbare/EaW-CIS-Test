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

unit_list01 = { "IA_Rep_Venator", "IA_Rep_VSD", "IA_Rep_ISD1", "IA_Rep_LongHorn", "IA_Rep_Legacy", "IA_Rep_MandatorII", "IA_Rep_PraetorMKI" }
unit_list02 = { "IA_Rep_Venator", "IA_Rep_VSD", "IA_Rep_ISD1", "IA_Rep_LongHorn", "IA_Rep_Legacy", "IA_Rep_MandatorII", "IA_Rep_PraetorMKI" }
unit_list03 = { "IA_Rep_Venator", "IA_Rep_VSD", "IA_Rep_ISD1", "IA_Rep_LongHorn", "IA_Rep_Legacy", "IA_Rep_MandatorII", "IA_Rep_PraetorMKI" }
unit_list04 = { "IA_Rep_Venator", "IA_Rep_VSD", "IA_Rep_ISD1", "IA_Rep_LongHorn", "IA_Rep_Legacy", "IA_Rep_MandatorII", "IA_Rep_PraetorMKI" }
unit_list05 = { "IA_Rep_Venator", "IA_Rep_VSD", "IA_Rep_ISD1", "IA_Rep_LongHorn", "IA_Rep_Legacy", "IA_Rep_MandatorII", "IA_Rep_PraetorMKI" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Solem")
				rebeldes = Find_Player("Republic")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Belderone")
				rebeldes = Find_Player("Republic")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Khomm")
				rebeldes = Find_Player("Republic")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("ObroaSkai")
				rebeldes = Find_Player("Republic")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Chardaan")
				rebeldes = Find_Player("Republic")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
