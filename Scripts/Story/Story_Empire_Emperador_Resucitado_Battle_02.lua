--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Batalla_de_MonCalamariDE_Space = State_Inicio_mision
		,Destruido_EISDR = State_Escolta_Destruida_00
		,Destruido_Titan = State_Escolta_Destruida_01
		,Refuerzos_Rebeldes = State_Refuerzos_Rebeldes
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	assault_list0 = {"E-Wing_SquadronB", "E-Wing_SquadronB", "RNebulonBR", "RNebulonBR", "BS_CR_Lt_Frg", "BS_CR_Lt_Gunship", "BS_CR_Med_Frg"}
	
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
				
				punto_inicio = Find_First_Object("World_Devastator")
				
				Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Guard_Target(unit.Get_Position())
				end
				
				exit_point = Find_Hint("Story_Trigger_Zone_00","exit")
				reveal_00 = FogOfWar.Reveal(empire,exit_point.Get_Position(),1000,1000)
				Add_Radar_Blip(exit_point, "salida")
				
				
				Story_Event("MENSAJE_00") --atención! naves rebeldes han salido del hiperspacio y han pillado por sorpresa nuestra escolta
				
				Sleep(2)
				Remove_Radar_Blip("salida")
				
				
				imp1_guard_table = Find_Hint("EISDR", "emp1")
				imp1_guard_table.Take_Damage(1000000)
				
				imp2_guard_table = Find_Hint("Titan_CruiserR", "emp2")
				imp2_guard_table.Take_Damage(30000)
	
															
			end	
end
function State_Destruir_Escolta(message)
				
		if message == OnEnter then
				
				survivors_00 = Find_Hint("Story_Trigger_Zone_01","emp0")
				
				reveal_00 = FogOfWar.Reveal(empire,survivors_00.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_00, "escolta")
				
				Story_Event("MENSAJE_01") --atencion! una nave de escolta ha sido destruida y la otra ha sufrido muchos daños
				
				Sleep(2)
				Remove_Radar_Blip("escolta")
								
		end	
end
function State_Escolta_Destruida_00(message)
				
		if message == OnEnter then
				
				survivors_00 = Find_Hint("Story_Trigger_Zone_01","emp0")
				
				reveal_00 = FogOfWar.Reveal(empire,survivors_00.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_00, "escolta")
				
				Story_Event("MENSAJE_01") --atencion! una nave de escolta ha sido destruida y la otra ha sufrido muchos daños
				
				Sleep(2)
				Remove_Radar_Blip("escolta")
								
		end	
end
function State_Escolta_Destruida_01(message)
				
		if message == OnEnter then
				
				survivors_00 = Find_Hint("Story_Trigger_Zone_01","emp0")
				
				reveal_00 = FogOfWar.Reveal(empire,survivors_00.Get_Position(),1000,1000)
				Add_Radar_Blip(survivors_00, "escolta")
				
				Story_Event("MENSAJE_02") --atencion! todas las naves de escolta han sido destruidas
				
				Sleep(2)
				Remove_Radar_Blip("escolta")
				
				attack_wd = Find_First_Object("WORLD_DEVASTATOR")
				
				enemy_unit_list = Find_All_Objects_Of_Type(rebel)
				
				for i,unit in pairs(enemy_unit_list) do
					unit.Attack_Target(attack_wd)
				end
								
		end	
end
function State_Refuerzos_Rebeldes(message)
				
		if message == OnEnter then
				attack_position1 = Find_First_Object("Story_Trigger_Zone_02")
				grupo_01 = SpawnList(assault_list0, attack_position1, rebel, false, false)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Target(attack_wd)
				end
				Game_Message("TEXT_R_INTERVENTION_ARRIVE_REINFORCES") 				
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