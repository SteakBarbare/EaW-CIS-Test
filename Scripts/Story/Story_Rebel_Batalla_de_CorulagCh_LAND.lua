--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Rebel_Batalla_de_Challenge_Begin = State_Rebel_Batalla_de_Challenge_Begin
		,Rebel_Batalla_de_Challenge_Allow_Win = State_Rebel_Batalla_de_Challenge_Allow_Win
		,Rebel_Batalla_de_Challenge_Allow_Lose = State_Rebel_Batalla_de_Challenge_Allow_Lose
	}

assault_list1 = {"Boba_Fett_Team", "Furgan_Team", "General_Covel_Team", "E_Tech3_Field_Com_Empire_Team"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Rebel_Batalla_de_Challenge_Begin(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("DEFENDING FORCES POSITION")
				enemigos = Find_First_Object("Attacker Entry Position")
				
				SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)	
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)				
		end
end
function State_Rebel_Batalla_de_Challenge_Allow_Win(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Boba_Fett_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("Furgan_Team")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("General_Covel_Team")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("E_Tech3_Field_Com_Empire_Team")
				Objeto04.Despawn()
				
				Sleep(3)
		end
end
function State_Rebel_Batalla_de_Challenge_Allow_Lose(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Boba_Fett_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("Furgan_Team")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("General_Covel_Team")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("E_Tech3_Field_Com_Empire_Team")
				Objeto04.Despawn()
				
				Sleep(3)
		end
end
	
