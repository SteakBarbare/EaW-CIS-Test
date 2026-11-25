--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_MonCalamariDE_Land = State_Inicio_mision
		,Reinforces = State_Reinforces
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	Reinforcement00List =
	{
		"TIE_Droide_Land_Group_WD", "TIE_Droide_Land_Group_WD", "TIE_Droide_Land_Group_WD"
	}
	
		Reinforcement01List =
	{
		"Imperial_ATAT_Hover"
	}
	
		Reinforcement02List =
	{
		"Ei_Engineer_Squad", "WD_AQ5_Squad", "WD_AQ5_Squad"
	}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")
end
function State_Inicio_mision(message)
				
		if message == OnEnter then
				
				GlobalValue.Set("Allow_AI_Controlled_Fog_Reveal", 0)
				GlobalValue.Set("empire", 0)
				Suspend_AI(1)
				Lock_Controls(1)
								
				punto_inicio1 = Find_First_Object("STORY_TRIGGER_ZONE_06")
								
				Point_Camera_At(punto_inicio1)
				punto_inicio1_reveal = FogOfWar.Reveal(empire,punto_inicio1.Get_Position(),300,300)
				Sleep(1)						
				punto_inicio2 = Find_First_Object("STORY_TRIGGER_ZONE_07")
				
				Point_Camera_At(punto_inicio2)
				punto_inicio2_reveal = FogOfWar.Reveal(empire,punto_inicio2.Get_Position(),300,300)
				Sleep(1)						
				punto_inicio3 = Find_First_Object("STORY_TRIGGER_ZONE_08")
				
				Point_Camera_At(punto_inicio3)
				punto_inicio3_reveal = FogOfWar.Reveal(empire,punto_inicio3.Get_Position(),300,300)
				Sleep(1)						
				punto_inicio4 = Find_First_Object("STORY_TRIGGER_ZONE_09")
				
				Point_Camera_At(punto_inicio4)
				punto_inicio4_reveal = FogOfWar.Reveal(empire,punto_inicio4.Get_Position(),300,300)
				Sleep(1)						
				
				punto_09 = Find_First_Object("STORY_TRIGGER_ZONE_09")
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(punto_09)
				end
				
				punto_08 = Find_First_Object("STORY_TRIGGER_ZONE_08")
				
				reb2_guard_table = Find_All_Objects_With_Hint("reb2")
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(punto_08)
				end
							
				punto_06 = Find_First_Object("STORY_TRIGGER_ZONE_06")
				
				reb3_guard_table = Find_All_Objects_With_Hint("reb3")
				for i,unit in pairs(reb3_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(punto_06)
				end
				
				punto_07 = Find_First_Object("STORY_TRIGGER_ZONE_07")
				
				reb4_guard_table = Find_All_Objects_With_Hint("reb4")
				for i,unit in pairs(reb4_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(punto_07)
				end
				
				--all_units = Find_All_Objects_Of_Type("Landhero | Infantry | Vehicle | Air | Structure")
				--for i,unit in pairs(all_units) do
					--unit.Prevent_AI_Usage(true)
					--unit.Guard_Target(unit.Get_Position())
				--end
						
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				Sleep(4)						
				punto_iniciob = Find_First_Object("INITIAL_CAMERA_POSITION")
				
				Point_Camera_At(punto_iniciob)
				
				Sleep(4)						
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_00 = Find_First_Object("Story_Trigger_Zone_00")
				
				ReinforceList(Reinforcement00List, reinforceSpot_00, empire, false, false, true, false)
				
				reinforceSpot_01 = Find_First_Object("Story_Trigger_Zone_01")
				
				ReinforceList(Reinforcement00List, reinforceSpot_01, empire, false, false, true, false)
				
				reinforceSpot_02 = Find_First_Object("Story_Trigger_Zone_02")
				
				ReinforceList(Reinforcement00List, reinforceSpot_02, empire, false, false, true, false)
				
				reinforceSpot_03 = Find_First_Object("Story_Trigger_Zone_03")
				
				ReinforceList(Reinforcement01List, reinforceSpot_03, empire, false, false, true, false)
				
				---reinforceSpot_04 = Find_First_Object("Story_Trigger_Zone_04")
				
				--ReinforceList(Reinforcement01List, reinforceSpot_04, empire, false, false, true, false)
				
				Lock_Controls(0)
			
		end	
end
function State_Reinforces(message)
				
		if message == OnEnter then
			Story_Event("REINFORCE_DIALOG_GO_01")
			
			reinforceSpot_02 = Find_First_Object("Story_Trigger_Zone_02")
			
			ReinforceList(Reinforcement02List, reinforceSpot_02, empire, false, false, true, false)
				
		end	
end
function State_Objetivos_Completados(message)
				
		if message == OnEnter then
			empire_reveal = FogOfWar.Reveal_All(empire)
			Story_Event("Victoria_Imperial")
		end	
end
function State_Objetivos_InCompletados1(message)
				
		if message == OnEnter then
			empire_reveal = FogOfWar.Reveal_All(empire)
			Story_Event("Derrota_por_Victoria_Rebelde")
		end	
end




