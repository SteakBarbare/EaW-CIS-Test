--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_NewAlderaanDE_Land = State_Inicio_mision
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	Reinforcement00List =
	{
		"Grupo_CaminantesX1_Normal", "Grupo_CaminantesX1_Normal", "Grupo_CaminantesX1_Normal", "Grupo_CaminantesX1_Normal", "Grupo_CaminantesX1_Normal"
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
								
				punto_inicio = Find_First_Object("ATTACKER ENTRY POSITION")
				
				Point_Camera_At(punto_inicio)
								
				reveal_00 = FogOfWar.Reveal(rebel,punto_inicio.Get_Position(),500,5000)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				Target_Luke = Find_First_Object("LUKE_SKYWALKER_JEDI")
						
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(Target_Luke)
				end
				Sleep(4)						
				punto_iniciob = Find_First_Object("INITIAL_CAMERA_POSITION")
				
				Point_Camera_At(punto_iniciob)
				
				Sleep(4)						
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_00 = Find_First_Object("Story_Trigger_Zone_00")
				
				grupo_01 = SpawnList(Reinforcement00List, reinforceSpot_00, empire, true, true)
				for i,unit in pairs(grupo_01) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Move(punto_inicio)
				end
			
		end	
end
function State_Objetivos_Completados(message)
				
		if message == OnEnter then
			empire_reveal = FogOfWar.Reveal_All(empire)
			Story_Event("Victoria_Rebel")
		end	
end
function State_Objetivos_InCompletados1(message)
				
		if message == OnEnter then
			empire_reveal = FogOfWar.Reveal_All(empire)
			Story_Event("Derrota_por_Victoria_Imperial")
		end	
end




