--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_DaSoocha_DE = State_Inicio_mision
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
				--punto_inicio1 = Find_First_Object("STORY_TRIGGER_ZONE_00")
				punto_inicio2 = Find_First_Object("STORY_TRIGGER_ZONE_01")
				empire_reveal = FogOfWar.Reveal_All(empire)
				Suspend_AI(1)
				Lock_Controls(1)
				Letter_Box_In(0)
				Start_Cinematic_Camera()
				Fade_Screen_In(2)	
				
				Start_Cinematic_Camera()
				
				Set_Cinematic_Camera_Key(punto_inicio2, 2000, 6, 20, 1, 0, 0, 0)

				
			
				--rebel_reveal = FogOfWar.Reveal_All(rebel)
				--black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
				--isd = Find_Hint("STORY_TRIGGER_ZONE", "isd")
				
								
				--Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
						
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
				end
				Sleep(5)	
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Take_Damage(10000000000)
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
			End_Cinematic_Camera()	
			Letter_Box_Out(.5)	
			Lock_Controls(0)
			Suspend_AI(0)
			Fade_Screen_In(1)
			empire_reveal = FogOfWar.Reveal_All(empire)
			Story_Event("Derrota_por_Victoria_Rebelde")
			
			
		end	
end




