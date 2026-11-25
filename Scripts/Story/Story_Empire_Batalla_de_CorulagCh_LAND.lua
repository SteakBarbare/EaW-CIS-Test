--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Empire_Batalla_de_Challenge_Begin = State_Empire_Batalla_de_Challenge_Begin
		,Empire_Batalla_de_Challenge_Allow_Win = State_Empire_Batalla_de_Challenge_Allow_Win
		,Empire_Batalla_de_Challenge_Allow_Lose = State_Empire_Batalla_de_Challenge_Allow_Lose
	}

assault_list1 = {"Garm_Bel_Iblis_Team", "R_Tech4_Field_Com_Rebel_Team"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Empire_Batalla_de_Challenge_Begin(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("DEFENDING FORCES POSITION")
				enemigos = Find_First_Object("Attacker Entry Position")
				
				SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)	

				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)				
		end
end
function State_Empire_Batalla_de_Challenge_Allow_Win(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Garm_Bel_Iblis_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("R_Tech4_Field_Com_Rebel_Team")
				Objeto02.Despawn()
								
				Sleep(3)
		end
end
function Empire_Batalla_de_Challenge_Allow_Lose(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Garm_Bel_Iblis_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("R_Tech4_Field_Com_Rebel_Team")
				Objeto02.Despawn()
								
				Sleep(3)
		end
end
	
