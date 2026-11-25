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

unit_list01 = { "BS_Fleet_Man_AI", "IA_BS_ISD", "IA_Kedalbe", "IA_SSDUnderworld", "IA_UV_New_BattlecruiserX", "IA_Inmovilizer_U" }
unit_list02 = { "BS_Fleet_Tech_All_AI", "IA_BS_ISDMKII", "IA_Kedalbe_up2", "IA_BS_ISD_Up", "IA_UV_New_BattlecruiserX", "IA_Dominator_U" }
unit_list03 = { "BS_Fleet_CIS_AI", "IA_BSGeoDread", "IA_BSLucre", "IA_BS_ISD_Up", "IA_UV_New_BattlecruiserX", "IA_Inmovilizer_U" }
unit_list04 = { "BS_Fleet_Corellian_Up_AI", "IA_Megator_SSD", "IA_Kedalbe_up2", "IA_BS_ISD_Up", "IA_New_CR_Destroyer", "IA_Inmovilizer_U" }
unit_list05 = { "BS_Fleet_Tech_All_Up_AI", "IA_BS_ISDMKII", "IA_EspadaOscura", "IA_BS_ISD_Up", "IA_UV_New_BattlecruiserX", "IA_Dominator_U" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Nam_Chorios")
				rebeldes = Find_Player("Underworld")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Tythe")
				rebeldes = Find_Player("Underworld")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Vaathkree")
				rebeldes = Find_Player("Underworld")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("Berchest")
				rebeldes = Find_Player("Underworld")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Trogan")
				rebeldes = Find_Player("Underworld")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
