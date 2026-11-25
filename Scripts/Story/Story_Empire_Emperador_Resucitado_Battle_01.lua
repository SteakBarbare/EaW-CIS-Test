--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_CoruscantDE_Land = State_Inicio_mision
		,Empire_Reinforcement_00 = State_Empire_Reinforcement_00
		,Empire_Reinforcement_01 = State_Empire_Reinforcement_01
		,Empire_Reinforcement_02 = State_Empire_Reinforcement_02
		,Empire_Reinforcement_03 = State_Empire_Reinforcement_03
		,Empire_Reinforcement_04 = State_Empire_Reinforcement_04
		,Empire_Reinforcement_05 = State_Empire_Reinforcement_05
		,Objetivos_Completados = State_Objetivos_Completados
		,Objetivos_InCompletados1 = State_Objetivos_InCompletados1
	}
	
	Reinforcement00List =
	{
		"Grupo_CaminantesX1_Normal", 
	}
	
	Reinforcement01List =
	{
		"Ch_S1_Tank_Armor_Group"
	}
	
	Reinforcement02List =
	{
		"Imperial_MOVILEART_Corp"
	}
	
	Reinforcement03List =
	{
		"AT_HT_Walker_Company"
	}
	
	Reinforcement04List =
	{
		"Grupo_CaminantesX1_Normal"
	}
	
	Reinforcement05List =
	{
		"Grupo_MAAT"
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
				
				punto_inicio = Find_First_Object("Ei_Commander_Mix01")
				
				Point_Camera_At(punto_inicio)
				
				reb1_guard_table = Find_All_Objects_With_Hint("reb1")
				for i,unit in pairs(reb1_guard_table) do
					unit.Prevent_AI_Usage(true)
					unit.Guard_Target(unit.Get_Position())
				end
						
			
		end	
end
function State_Empire_Reinforcement_00(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_00 = Find_First_Object("Story_Trigger_Zone_00")
				
				ReinforceList(Reinforcement00List, reinforceSpot_00, empire, false, false, true, false)
					--hasta Story_Trigger_Zone_05 hice 
		end	
end
function State_Empire_Reinforcement_01(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_01 = Find_First_Object("Story_Trigger_Zone_01")
				
				ReinforceList(Reinforcement01List, reinforceSpot_01, empire, false, false, true, false)
					
		end	
end
function State_Empire_Reinforcement_02(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_02 = Find_First_Object("Story_Trigger_Zone_02")
				
				ReinforceList(Reinforcement02List, reinforceSpot_02, empire, false, false, true, false)
					
		end	
end
function State_Empire_Reinforcement_03(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_03 = Find_First_Object("Story_Trigger_Zone_03")
				
				ReinforceList(Reinforcement03List, reinforceSpot_03, empire, false, false, true, false)
					
		end	
end
function State_Empire_Reinforcement_04(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_04 = Find_First_Object("Story_Trigger_Zone_04")
				
				ReinforceList(Reinforcement04List, reinforceSpot_04, empire, false, false, true, false)
					
		end	
end
function State_Empire_Reinforcement_05(message)
				
		if message == OnEnter then
				
				Story_Event("REINFORCE_DIALOG_GO_01")
				
				reinforceSpot_05 = Find_First_Object("Story_Trigger_Zone_05")
				
				ReinforceList(Reinforcement05List, reinforceSpot_05, empire, false, false, true, false)
					
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

