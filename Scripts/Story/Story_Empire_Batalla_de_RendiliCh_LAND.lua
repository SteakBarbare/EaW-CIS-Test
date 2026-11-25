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

assault_list1 = {"General_Dodonna_Team", "Han_Solo_Team", "Luke_Skywalker_Jedi_Team", "KatarnFuturo_Team", "R_Tech5_Field_Com_Rebel_Team"}

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
		
				Objeto01 = Find_First_Object("General_Dodonna_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("Han_Solo_Team")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("Luke_Skywalker_Jedi_Team")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("KatarnFuturo_Team")
				Objeto04.Despawn()
				
				Objeto05 = Find_First_Object("Luke_Skywalker_Jedi_Team")
				Objeto05.Despawn()
				
				Objeto06 = Find_First_Object("R_Tech5_Field_Com_Rebel_Team")
				Objeto06.Despawn()
								
				Sleep(3)
		end
end
function Empire_Batalla_de_Challenge_Allow_Lose(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("General_Dodonna_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("Han_Solo_Team")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("Luke_Skywalker_Jedi_Team")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("KatarnFuturo_Team")
				Objeto04.Despawn()
				
				Objeto05 = Find_First_Object("Luke_Skywalker_Jedi_Team")
				Objeto05.Despawn()
				
				Objeto06 = Find_First_Object("R_Tech5_Field_Com_Rebel_Team")
				Objeto06.Despawn()
				
				Sleep(3)
		end
end
	
