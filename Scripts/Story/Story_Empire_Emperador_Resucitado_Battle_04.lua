--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_NewAlderaanDE_Land = State_Inicio_mision
		,Attack_Halcon = State_Attack_Halcon
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	Reinforcement00List =
	{
		"Grupo_CaminantesX1_Normal", "Grupo_CaminantesX1_Normal"
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
				
				--empire_reveal = FogOfWar.Reveal_All(empire)
				--rebel_reveal = FogOfWar.Reveal_All(rebel)
				--black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
				--isd = Find_Hint("STORY_TRIGGER_ZONE", "isd")
				
				punto_inicio = Find_First_Object("INITIAL_CAMERA_POSITION")
				
				Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
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
				punto_iniciob = Find_First_Object("ATTACKER ENTRY POSITION")
				
				Point_Camera_At(punto_iniciob)
				
				Sleep(4)						
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_00 = Find_First_Object("Story_Trigger_Zone_00")
				
				ReinforceList(Reinforcement00List, reinforceSpot_00, empire, false, false, true, false)
			
		end	
end
function State_Attack_Halcon(message)
				
		if message == OnEnter then
			attack_position1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
			mil_guard_table = Find_All_Objects_With_Hint("mil")
				for i,unit in pairs(mil_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(attack_position1)
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




