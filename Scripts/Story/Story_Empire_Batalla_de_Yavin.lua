--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Empire_Batalla_de_Yavin_Begin = State_Empire_Batalla_de_Yavin_Begin
		,Empire_Batalla_de_Yavin_Allow_Win = State_Empire_Batalla_de_Yavin_Allow_Win
		,Death_Star_Destruida = State_Death_Star_Destruida
	}

assault_list1 = {"Red_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Empire_Batalla_de_Yavin_Begin(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("DEFENDING FORCES POSITION")
				
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), false, true)) do
					unit.Guard_Target(spawn_marker1)
				end
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)				
		end
end
function State_Empire_Batalla_de_Yavin_Allow_Win(message)
		if message == OnEnter then
		
				Rogue_Squadron = Find_First_Object("Red_Squadron")
				Rogue_Squadron.Despawn()

				Sleep(3)
		end
end
function State_Death_Star_Destruida(message)
		if message == OnEnter then
		
				Rogue_Squadron = Find_First_Object("Red_Squadron")
				Rogue_Squadron.Despawn()

				Sleep(3)
		end
end
	
