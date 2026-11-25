--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_WD_DE_Land = State_Inicio_mision
		,Empire_Reinforcement_01 = State_Empire_Survivors_01
		,Empire_Reinforcement_02 = State_Empire_Survivors_02
		,Empire_Reinforcement_03 = State_Empire_Survivors_03
		,Empire_Reinforcement_04 = State_Empire_Survivors_04
		,Empire_Reinforcement_05 = State_Empire_Survivors_05
		,Empire_Reinforcement_06 = State_Empire_Survivors_06
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	assault_list1 = {"Death_Trooper_Squad"}
	
	assault_list2 = {"Rocket_Trooper_Company"}
	
	assault_list3 = {"Terror_Trooper_Squad"}
	
	assault_list4 = {"NovaTrooper_Deployed_SquadM"}
	
	assault_list5 = {"Imperial_Inquisitorium_DarkTrooper"}
	
	assault_list6 = {"Ei_Incinerator_Squad"}
	
	assault_list7 = {"Imperial_AT_MP_Squad"}
	
	assault_list8 = {"New_Rebel_Tank_Buster_Squad"}
	
	assault_list9 = {"Rebel_New_Assault_Squad"}
	
	chances = nil

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
				
				--isd = Find_Hint("STORY_TRIGGER_ZONE", "isd")
								
				GlobalValue.Set("Allow_AI_Controlled_Fog_Reveal", 0)
				GlobalValue.Set("empire", 0)
				Suspend_AI(1)
				
				punto_inicio = Find_First_Object("INITIAL_CAMERA_POSITION")
				
				Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
						
				emp_guard_table = Find_All_Objects_With_Hint("emp")
				for i,unit in pairs(emp_guard_table) do
					unit.Prevent_AI_Usage(true)
				end
			
		end	
end
function State_Empire_Survivors_01(message)
				
		if message == OnEnter then
			marker_01 = Find_First_Object("STORY_TRIGGER_ZONE_01")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_01 = SpawnList(assault_list1, marker_01, empire, true, true)
							for i,unit in pairs(grupo_01) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_02 = SpawnList(assault_list2, marker_01, empire, true, true)
							for i,unit in pairs(grupo_02) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_03 = SpawnList(assault_list3, marker_01, empire, true, true)
							for i,unit in pairs(grupo_03) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
						Sleep(2)									
						Story_Event("REINFORCE_DIALOG_GO_01") --hemos encontrado unidades amigas
		end	
end
function State_Empire_Survivors_02(message)
				
		if message == OnEnter then
			marker_02 = Find_First_Object("STORY_TRIGGER_ZONE_02")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_02a = SpawnList(assault_list1, marker_02, empire, true, true)
							for i,unit in pairs(grupo_02a) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_02b = SpawnList(assault_list2, marker_02, empire, true, true)
							for i,unit in pairs(grupo_02b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_02c = SpawnList(assault_list3, marker_02, empire, true, true)
							for i,unit in pairs(grupo_02c) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
				attack_position1 = Find_First_Object("STORY_TRIGGER_ZONE_02")
				origin_position4 = Find_First_Object("STORY_TRIGGER_ZONE_07")
				origin_position8 = Find_First_Object("STORY_TRIGGER_ZONE_08")
								
				grupo_A = SpawnList(assault_list8, origin_position4, rebel, false, false)
				for i,unit in pairs(grupo_A) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Move(attack_position1)
				end
				
				grupo_B = SpawnList(assault_list9, origin_position8, rebel, false, false)
				for i,unit in pairs(grupo_B) do
					unit.Prevent_AI_Usage(true)
					unit.Attack_Move(attack_position1)
				end
				Sleep(2)									
				Story_Event("REINFORCE_DIALOG_GO_02") --hemos encontrado unidades amigas
				
		end	
end
function State_Empire_Survivors_03(message)
				
		if message == OnEnter then
			marker_03 = Find_First_Object("STORY_TRIGGER_ZONE_03")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_03a = SpawnList(assault_list1, marker_03, empire, true, true)
							for i,unit in pairs(grupo_03a) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_03b = SpawnList(assault_list2, marker_03, empire, true, true)
							for i,unit in pairs(grupo_03b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_03c = SpawnList(assault_list3, marker_03, empire, true, true)
							for i,unit in pairs(grupo_03c) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
				Sleep(2)									
				Story_Event("REINFORCE_DIALOG_GO_03") --hemos encontrado unidades amigas
		end	
end
function State_Empire_Survivors_04(message)
				
		if message == OnEnter then
			marker_04 = Find_First_Object("STORY_TRIGGER_ZONE_04")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_04a = SpawnList(assault_list1, marker_04, empire, true, true)
							for i,unit in pairs(grupo_04a) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_04b = SpawnList(assault_list2, marker_04, empire, true, true)
							for i,unit in pairs(grupo_04b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_04c = SpawnList(assault_list3, marker_04, empire, true, true)
							for i,unit in pairs(grupo_04c) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
				Sleep(2)									
				Story_Event("REINFORCE_DIALOG_GO_04") --hemos encontrado unidades amigas
		end	
end
function State_Empire_Survivors_05(message)
				
		if message == OnEnter then
			marker_05 = Find_First_Object("STORY_TRIGGER_ZONE_05")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_05a = SpawnList(assault_list5, marker_05, empire, true, true)
							for i,unit in pairs(grupo_05a) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_05b = SpawnList(assault_list6, marker_05, empire, true, true)
							for i,unit in pairs(grupo_05b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_05c = SpawnList(assault_list7, marker_05, empire, true, true)
							for i,unit in pairs(grupo_05c) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
				Sleep(4)					
				Story_Event("REINFORCE_DIALOG_GO_05") --hemos encontrado unidades amigas
		end	
end
function State_Empire_Survivors_06(message)
				
		if message == OnEnter then
			marker_06 = Find_First_Object("STORY_TRIGGER_ZONE_06")
			chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
							grupo_06b = SpawnList(assault_list5, marker_06, empire, true, true)
							for i,unit in pairs(grupo_06b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 2 then
							grupo_06b = SpawnList(assault_list6, marker_06, empire, true, true)
							for i,unit in pairs(grupo_06b) do
								unit.Prevent_AI_Usage(true)
							end
					end		
					if chances == 3 then
							grupo_06c = SpawnList(assault_list7, marker_06, empire, true, true)
							for i,unit in pairs(grupo_06c) do
								unit.Prevent_AI_Usage(true)
							end
					end		
				end		
				Sleep(4)					
				Story_Event("REINFORCE_DIALOG_GO_06") --hemos encontrado unidades amigas
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



