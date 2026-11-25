--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Katana_Space = State_Inicio_mision
		,Refuerzos_Imperiales = State_Refuerzos_Imperiales
	}

assault_list0 = {"JudicatorM"}

assault_list1 = {"QuenfisNR", "Rogue_Squadron_Space_Weak"}

assault_list2 = {"Peregrino_Dreadnought"}

assault_list3 = {"Salvaje"}	

assault_list4 = {"PeremptoryM"}

assault_list5 = {"Command_Quimera"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")

end
function State_Inicio_mision(message)
				
		if message == OnEnter then
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
							
				
				wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1") -- posicion quenfis
				wave_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "wave2") -- posicion peregrino
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3") -- posicion judicator
				wave_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "wave4") -- posicion salvaje
				wave_marker5 = Find_Hint("Katana_Dreadnought", "capturedr") -- posicion dreadnought capturado por rebeldes
				wave_marker6 = Find_Hint("STORY_TRIGGER_ZONE", "wave6") -- posicion llamada Peregrino
				wave_marker7 = Find_Hint("STORY_TRIGGER_ZONE", "wave7") -- posicion llamada salvaje
				
				
				grupo_01 = SpawnList(assault_list0, wave_marker3, empire, false, false)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Guard_Target(wave_marker3)
				end
				
				punto_inicio = Find_First_Object("JudicatorM")
				
				Point_Camera_At(punto_inicio)
								
				Sleep(60)
				
				target1 = Find_First_Object("JudicatorM")
				
				grupo_02 = SpawnList(assault_list1, wave_marker1, rebel, false, false)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Target(target1)
				end
									
				Sleep(60)
				
				grupo_03 = SpawnList(assault_list2, wave_marker2, rebel, false, false)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Target(target1)
				end
				
				Sleep(60)
				
				grupo_04 = SpawnList(assault_list3, wave_marker2, rebel, false, false)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Target(target1)
				end
				
				Sleep(5)
				target2 = Find_First_Object("Peregrino_Dreadnought")
				grupo_05 = SpawnList(assault_list4, wave_marker6, empire, false, false)
				for i,unit in pairs(grupo_05) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Attack_Target(target2)
				end
					
				Sleep(10)
				
				peregrino_re = Find_All_Objects_Of_Type("Peregrino_Escort")
				target3 = Find_First_Object("PeremptoryM")
				for k, unit in pairs(peregrino_re) do
					if TestValid(unit) then
							if unit.Get_Owner() == rebel then
								unit.Attack_Target(target3)
							end
					end
				end		
				
		end	
end
function State_Refuerzos_Imperiales(message)
				
		if message == OnEnter then
				
				wave_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "wave3") -- posicion judicator
				
				target1 = Find_First_Object("JudicatorM")
				
				grupo_06 = SpawnList(assault_list5, wave_marker3, empire, false, false)
				Game_Message("TEXT_E_INTERVENTION_ARRIVE_REINFORCES")
				for i,unit in pairs(grupo_06) do
					unit.Cinematic_Hyperspace_In(1)
					unit.Guard_Target(target1)
				end
								
		end	
end