--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_OnderonDE_Land = State_Inicio_mision
		,Marcar_E1 = State_Attack_R2
		,Marcar_E2 = State_Attack_R3
		,Marcar_E3 = State_Attack_R4
		,Marcar_E4 = State_Attack_R5
		,E_Reinforces1 = State_E_Reinforces1
		,E_Reinforces2 = State_E_Reinforces2
		,E_Reinforces3 = State_E_Reinforces3
		,E_Reinforces4 = State_E_Reinforces4
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	Reinforcement00List =
	{
		"Imperial_Guard_Company_E", "Imperial_Guard_Company_E"
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
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				--rebel_reveal = FogOfWar.Reveal_All(rebel)
				--black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
				--isd = Find_Hint("STORY_TRIGGER_ZONE", "isd")
				punto_inicio = Find_First_Object("ATTACKER ENTRY POSITION")
								
				Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				reb2_guard_table = Find_All_Objects_With_Hint("reb2")
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				reb3_guard_table = Find_All_Objects_With_Hint("reb3")
				for i,unit in pairs(reb3_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				reb4_guard_table = Find_All_Objects_With_Hint("reb4")
				for i,unit in pairs(reb4_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				reb5_guard_table = Find_All_Objects_With_Hint("reb5")
				for i,unit in pairs(reb5_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
										
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
				end
				Sleep(4)						
				punto_iniciob = Find_First_Object("INITIAL_CAMERA_POSITION")
				
				Point_Camera_At(punto_iniciob)
			
		end	
end
function State_E_Reinforces1(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_01 = Find_First_Object("STORY_TRIGGER_ZONE_01")
	
				grupo_01E = SpawnList(Reinforcement00List, reinforceSpot_01, empire, true, true)
				for i,unit in pairs(grupo_01E) do
					unit.Prevent_AI_Usage(true)
				end
		end	
end
function State_E_Reinforces2(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_02 = Find_First_Object("STORY_TRIGGER_ZONE_03")
	
				grupo_02E = SpawnList(Reinforcement00List, reinforceSpot_02, empire, true, true)
				for i,unit in pairs(grupo_02E) do
					unit.Prevent_AI_Usage(true)
				end
		end	
end
function State_E_Reinforces3(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_03 = Find_First_Object("STORY_TRIGGER_ZONE_05")
	
				grupo_03E = SpawnList(Reinforcement00List, reinforceSpot_03, empire, true, true)
				for i,unit in pairs(grupo_03E) do
					unit.Prevent_AI_Usage(true)
				end
		end	
end
function State_E_Reinforces4(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_04 = Find_First_Object("STORY_TRIGGER_ZONE_07")
	
				grupo_04E = SpawnList(Reinforcement00List, reinforceSpot_04, empire, true, true)
				for i,unit in pairs(grupo_04E) do
					unit.Prevent_AI_Usage(true)
				end
		end	
end
function State_Attack_R2(message)
				
		if message == OnEnter then
			emperor = Find_First_Object("Emperor_Palpatine2")
			R2_guard_table = Find_All_Objects_With_Hint("reb2")
				for i,unit in pairs(R2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(emperor)
				end
		end	
end
function State_Attack_R3(message)
				
		if message == OnEnter then
			emperor = Find_First_Object("Emperor_Palpatine2")
			R3_guard_table = Find_All_Objects_With_Hint("reb3")
				for i,unit in pairs(R3_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(emperor)
				end
		end	
end
function State_Attack_R4(message)
				
		if message == OnEnter then
			emperor = Find_First_Object("Emperor_Palpatine2")
			R4_guard_table = Find_All_Objects_With_Hint("reb4")
				for i,unit in pairs(R4_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(emperor)
				end
		end	
end
function State_Attack_R5(message)
				
		if message == OnEnter then
			emperor = Find_First_Object("Emperor_Palpatine2")
			R5_guard_table = Find_All_Objects_With_Hint("reb5")
				for i,unit in pairs(R5_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(emperor)
				end
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




