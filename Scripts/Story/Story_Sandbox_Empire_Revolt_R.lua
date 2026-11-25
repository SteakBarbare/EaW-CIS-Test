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

unit_list01 = { "R_Fleet_Tech_4_AI", "IA_R_ISD", "IA_RSD", "IA_COLOSSUS", "IA_Mc90X_Cruiser", "IA_CC7700" }
unit_list02 = { "R_Fleet_Tech_5_AI", "IA_R_ISD", "IA_RSD", "IA_R_ISD_Up", "IA_Mc90X_Cruiser", "IA_Strike_Interdictor" }
unit_list03 = { "R_Fleet_Bakuran_AI", "IA_MC108", "IA_RSD", "IA_R_ISD_Up", "IA_Mc90X_Cruiser", "IA_Strike_Interdictor" }
unit_list04 = { "R_Fleet_Tech_5_up_AI", "IA_Vizconde", "IA_RSD", "IA_R_ISD_Up", "IA_Mc90X_Cruiser", "IA_Strike_Interdictor" }
unit_list05 = { "R_Fleet_Sullust_up_AI", "IA_R_ISD", "IA_Mc104", "IA_R_ISD_Up", "IA_Mc90X_Cruiser", "IA_Strike_Interdictor" }

end

function State_Revolt_Planet_01(message)
			if message == OnEnter then
				Sleep(2)
				
				planet01 = FindPlanet("Svivren")
				rebeldes = Find_Player("Rebel")
				
				poseedor_planeta = planet01.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list01, planet01, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_02(message)
			if message == OnEnter then
				Sleep(2)
				
				planet02 = FindPlanet("Talasea")
				rebeldes = Find_Player("Rebel")
				
				poseedor_planeta = planet02.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list02, planet02, rebeldes, true, false)
				end
			end
						
end
function State_Revolt_Planet_03(message)
			if message == OnEnter then
				Sleep(2)
				
				planet03 = FindPlanet("Mhaeli")
				rebeldes = Find_Player("Rebel")
				
				poseedor_planeta = planet03.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list03, planet03, rebeldes, true, false)
				end
			end
						
end		
function State_Revolt_Planet_04(message)
			if message == OnEnter then
				Sleep(2)
				
				planet04 = FindPlanet("Ord_Pardron")
				rebeldes = Find_Player("Rebel")
				
				poseedor_planeta = planet04.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list04, planet04, rebeldes, true, false)
				end
			end
						
end	
function State_Revolt_Planet_05(message)
			if message == OnEnter then
				Sleep(2)
				
				planet05 = FindPlanet("Mrisst")
				rebeldes = Find_Player("Rebel")
				
				poseedor_planeta = planet05.Get_Owner()
				if poseedor_planeta == rebeldes then
					SpawnList(unit_list05, planet05, rebeldes, true, false)
				end
			end
						
end	
