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

assault_list1 = {"Corran_Horn_Team", "SSDLusankya", "Mon_Remonda", "IRSDLiberador", "IRSDEmancipador", "Kir_Kanos_Team"}
assault_list2 = {"Starbase_Challenge_Empire"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Empire_Batalla_de_Challenge_Begin(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("DEFENDING FORCES POSITION")
				spawn_marker2 = Find_First_Object("DEFENSE_SSDSHIPYARD_MARKER1")
				
				Sleep(1)
				
				SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), true, true)
				
				Sleep(2)
				base_enemiga = Find_First_Object("Starbase_Challenge_Empire")
				enemigos = base_enemiga.Get_Owner()

				Sleep(1)
					
				SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)	
				
				Sleep(1)
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)				
		end
end
function State_Empire_Batalla_de_Challenge_Allow_Win(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Corran_Horn_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("SSDLusankya")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("Mon_Remonda")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("IRSDLiberador")
				Objeto04.Despawn()
				
				Objeto05 = Find_First_Object("IRSDEmancipador")
				Objeto05.Despawn()
				
				Objeto06 = Find_First_Object("Kir_Kanos_Team")
				Objeto06.Despawn()

				Sleep(3)
		end
end
function Empire_Batalla_de_Challenge_Allow_Lose(message)
		if message == OnEnter then
		
				Objeto01 = Find_First_Object("Corran_Horn_Team")
				Objeto01.Despawn()
				
				Objeto02 = Find_First_Object("SSDLusankya")
				Objeto02.Despawn()
				
				Objeto03 = Find_First_Object("Mon_Remonda")
				Objeto03.Despawn()
				
				Objeto04 = Find_First_Object("IRSDLiberador")
				Objeto04.Despawn()
				
				Objeto05 = Find_First_Object("IRSDEmancipador")
				Objeto05.Despawn()
				
				Objeto06 = Find_First_Object("Kir_Kanos_Team")
				Objeto06.Despawn()
				
				Sleep(3)
		end
end
	
