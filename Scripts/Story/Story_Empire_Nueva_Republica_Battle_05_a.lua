--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Batalla_de_Bilbringi_Space = State_Inicio_mision
		,HIGHLIGHT_OBJECT_00 = State_Mostrar_Survivors_00
		,Empire_Survivors_00 = State_Empire_Survivors_00
		,HIGHLIGHT_OBJECT_01 = State_Mostrar_Survivors_01
		,Empire_Survivors_01 = State_Empire_Survivors_01
		,HIGHLIGHT_OBJECT_02 = State_Mostrar_Survivors_02
		,Empire_Survivors_02 = State_Empire_Survivors_02
		,Detectados_por_el_Enemigo = State_Detectados_por_el_Enemigo
		,Aparece_Interdictor = State_Aparece_Interdictor
		,Objetivos_Completados_Fin_Evento = State_Objetivos_Completados_Fin_Evento
	}
	
	assault_list0 = {"CC7700", "R_GuardianCV", "R_GuardianCV"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")

end
function State_Inicio_mision(message)
			if message == OnEnter then
			
				--empire_reveal = FogOfWar.Reveal_All(empire)
				--rebel_reveal = FogOfWar.Reveal_All(rebel)
				--black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
				punto_inicio = Find_First_Object("Quimera_MP")
				
				Point_Camera_At(punto_inicio)
								
				exit_point = Find_Hint("Story_Trigger_Zone_00","exit")
				reveal_00 = FogOfWar.Reveal(empire,exit_point.Get_Position(),1000,1000)
				Add_Radar_Blip(exit_point, "salida")
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				reb3_guard_table = Find_All_Objects_With_Hint("rpatrol2") --patrulla en el borde de los asteroides puesta en defender
				for i,unit in pairs(reb3_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
				
				patrol_position1 = Find_First_Object("Story_Trigger_Zone_01")
				reb2_guard_table = Find_All_Objects_With_Hint("rpatrol1")
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Move(patrol_position1)
				end
				Sleep(12)
				Story_Event("MENSAJE_00")  --informe de situación, rebeldes vigilan frontera, podemos escapar flankeandolos y encontraremos unidades amigas
				Sleep(2)
				Remove_Radar_Blip("salida")
				
				
			end	
end
function State_Mostrar_Survivors_00(message)
				
		if message == OnEnter then
				
				survivors_00 = Find_Hint("Lancer","emp1")
				
				reveal_00 = FogOfWar.Reveal(empire,survivors_00.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_00, "lancer")
		end	
end
function State_Empire_Survivors_00(message)
				
		if message == OnEnter then
								
				emp1_survivors_table = Find_All_Objects_With_Hint("emp1")
				for i,unit in pairs(emp1_survivors_table) do
					unit.Change_Owner(empire)
				end
				Remove_Radar_Blip("lancer")
				
				quimera = Find_First_Object("Quimera_MP")
				
				reb2_guard_table = Find_All_Objects_With_Hint("rpatrol1")
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(quimera)
				end
				Story_Event("MENSAJE_01") --hemos encontrado unidades amigas
		end	
end
function State_Mostrar_Survivors_01(message)
				
		if message == OnEnter then
				
				survivors_01 = Find_Hint("ISD2R","emp2")
				
				reveal_01 = FogOfWar.Reveal(empire,survivors_01.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_01, "isd2r")
		end	
end	
function State_Empire_Survivors_01(message)
				
		if message == OnEnter then
								
				emp2_survivors_table = Find_All_Objects_With_Hint("emp2")
				for i,unit in pairs(emp2_survivors_table) do
					unit.Change_Owner(empire)
				end
				Remove_Radar_Blip("isd2r")
				
				quimera = Find_First_Object("Quimera_MP")
				
				reb2_guard_table = Find_All_Objects_With_Hint("rpatrol1") --por si la patrulla se queda parada
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(quimera)
				end
				
				Story_Event("MENSAJE_01") --hemos encontrado unidades amigas
		end	
end
function State_Mostrar_Survivors_02(message)
				
		if message == OnEnter then
				
				survivors_02 = Find_Hint("EVSD2R","emp3")
				
				reveal_02 = FogOfWar.Reveal(empire,survivors_02.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_02, "evsd2r")
		end	
end
function State_Empire_Survivors_02(message)
				
		if message == OnEnter then
								
				emp3_survivors_table = Find_All_Objects_With_Hint("emp3")
				for i,unit in pairs(emp3_survivors_table) do
					unit.Change_Owner(empire)
				end
				Remove_Radar_Blip("evsd2r")
				
				quimera = Find_First_Object("Quimera_MP")
				
				reb2_guard_table = Find_All_Objects_With_Hint("rpatrol1") --por si la patrulla se queda parada
				for i,unit in pairs(reb2_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(quimera)
				end
				
				reb3_guard_table = Find_All_Objects_With_Hint("rpatrol2") --localizados por patrulla en el borde de los asteroides
				for i,unit in pairs(reb3_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Target(quimera)
				end
				
				Story_Event("MENSAJE_01") --hemos encontrado unidades amigas
								
		end	
end
function State_Detectados_por_el_Enemigo(message)
				
		if message == OnEnter then
						
				empire_reveal = FogOfWar.Reveal_All(empire)
								
				attack_position1 = Find_First_Object("Story_Trigger_Zone_00")
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Move(attack_position1)
				end
				
				Story_Event("MENSAJE_02") --atención!, hemos sido descubiertos, todas las naves rebeldes se dirigen hacia nosotros
		end			
end				
function State_Aparece_Interdictor(message)								
		if message == OnEnter then
				attack_position1 = Find_First_Object("Story_Trigger_Zone_00")
				grupo_01 = SpawnList(assault_list0, attack_position1, rebel, false, false)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Guard_Target(attack_position1)
				end
				Story_Event("MENSAJE_03") --atención!, un interdictor rebelde ha salido del hiperspacio
							
		end	
end
function State_Objetivos_Completados_Fin_Evento(message)
		if message == OnEnter then		
		
				test = Find_All_Objects_With_Hint("test")
				for i,unit in pairs(quimera) do
					unit.Change_Owner(empire)
				end
				Sleep(1)
				
				quimera = Find_All_Objects_With_Hint("quimera")
				for i,unit in pairs(quimera) do
					if TestValid(unit) then
						if unit.Are_Engines_Online() then
							unit.Hyperspace_Away()
						end	
					end	
				end
				
				emp1_survivors_table = Find_All_Objects_With_Hint("emp1")
				for i,unit in pairs(emp1_survivors_table) do
					if TestValid(unit) then
						if unit.Are_Engines_Online() then
							unit.Hyperspace_Away()
						end	
					end	
				end
				
				emp2_survivors_table = Find_All_Objects_With_Hint("emp2")
				for i,unit in pairs(emp2_survivors_table) do
					if TestValid(unit) then
						if unit.Are_Engines_Online() then
							unit.Hyperspace_Away()
						end	
					end	
				end
				
				emp3_survivors_table = Find_All_Objects_With_Hint("emp3")
				for i,unit in pairs(emp3_survivors_table) do
					if TestValid(unit) then
						if unit.Are_Engines_Online() then
							unit.Hyperspace_Away()
						end	
					end	
				end
				
				Story_Event("MENSAJE_04") --la mision ha sido un exito, hemos escapado
								
		end	
end