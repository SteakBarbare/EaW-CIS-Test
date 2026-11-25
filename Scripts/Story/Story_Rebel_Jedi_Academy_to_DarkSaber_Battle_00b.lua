--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Dantooine_Space = State_Inicio_mision
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
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
				
				punto_inicio = Find_First_Object("DEFENDING FORCES POSITION")
				
				Point_Camera_At(punto_inicio)
				
				reb_guard_table = Find_All_Objects_With_Hint("reb")
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
					unit.Attack_Move(punto_inicio)
				end
				Sleep(4)						
				punto_iniciob = Find_First_Object("ATTACKER ENTRY POSITION")
				
				Point_Camera_At(punto_iniciob)
			
		end	
end
function State_Objetivos_Completados(message)
				
		if message == OnEnter then
			rebel_reveal = FogOfWar.Reveal_All(rebel)
			Story_Event("Victoria_Rebelde")
		end	
end
function State_Objetivos_InCompletados1(message)
				
		if message == OnEnter then
			rebel_reveal = FogOfWar.Reveal_All(rebel)
			Story_Event("Derrota_por_Victoria_Imperial")
		end	
end




