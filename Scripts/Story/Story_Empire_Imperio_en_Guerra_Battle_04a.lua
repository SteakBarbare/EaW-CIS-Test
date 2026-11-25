--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Empire_Batalla_de_Hoth_Space_Begin = State_Empire_Batalla_de_Hoth_Space_Begin
		,Empire_Batalla_de_Hoth_Space_Allow_Win = State_Empire_Batalla_de_Hoth_Space_Allow_Win
		,Executor_Destruido = State_Executor_Destruido
		,Imperiales_Destruidos = State_Imperiales_Destruidos
	}

assault_list1 = {"Executor_Hoth"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Empire_Batalla_de_Hoth_Space_Begin(message)
		if not Get_Game_Mode() == "Space" then
				ScriptExit()
				elseif Find_First_Object("Executor_Super_Star_Destroyer") then
				ScriptExit()
				end
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				Attack_marker1 = Find_First_Object("DEFENDING FORCES POSITION")
				
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), false, true)) do
					unit.Attack_Move(Attack_marker1)
				end
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)				
		end
end
function State_Empire_Batalla_de_Hoth_Space_Allow_Win(message)
		if message == OnEnter then
		
				Executor = Find_First_Object("Executor_Hoth")
				Executor.Despawn()

				Sleep(3)
		end
end
function State_Executor_Destruido(message)
		if message == OnEnter then
		
				Executor = Find_First_Object("Executor_Hoth")
				Executor.Despawn()

				Sleep(3)
		end
end
function State_Imperiales_Destruidos(message)
		if message == OnEnter then
		
				Executor = Find_First_Object("Executor_Hoth")
				Executor.Despawn()

				Sleep(3)
		end
end
	
