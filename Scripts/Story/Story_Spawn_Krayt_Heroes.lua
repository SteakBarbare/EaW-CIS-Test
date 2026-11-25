--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Universal_Story_Start = State_Universal_Story_Start,
		More_heroes_Krayt_tech_2 = State_More_heroes_tech_2,
		More_heroes_Krayt_tech_3 = State_More_heroes_tech_3,
		More_heroes_Krayt_tech_4 = State_More_heroes_tech_4,
		More_heroes_Krayt_tech_5 = State_More_heroes_tech_5
	}

	unit_list1 = { "Darth_Krayt_Team", "Darth_Wyyrlok_Team", "Darth_Talon_Team" }
	unit_list1b = { "Roan_Fel_Team", "Cade_Skywalker_Team", "Admiral_Stazi_Team" }
	unit_list2 = { "Moff_Morlish_Veed_PellaeonSD", "Moff_Fehlaaur_Team", "Moff_Nyna_Calixte_Team" }
	unit_list2b = { "Morrigan_Team", "Marasiah_Fel_Team", "Antares_Draco_Team" }
	unit_list3 = { "Captain_Meeshal", "Darth_Strife_Team" }
	unit_list3b = { "Shado_Vao_Team", "Wolf_Sazen_Team", "Oron_Jaeger_PellaeonSD" }
	unit_list4 = { "Darth_Maladi_Team", "Darth_Nilh_Team" }
	unit_list4b = { "Konrad_Rus_Team" }
	unit_list5 = { "Darth_Azard_Team" }
	unit_list5b = { "Treis_Sinde_Team" }
		
end
function State_Universal_Story_Start(message)
			if message == OnEnter then
				Sleep(2)								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list1b, current_planet_fel_barracks, Fel_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(krayt_barracks) then 
					current_planet_krayt_barracks = krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list1, current_planet_krayt_barracks, Krayt_Bando, true, false)
				end						
			end	
end
function State_More_heroes_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list2b, current_planet_fel_barracks, Fel_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(krayt_barracks) then 
					current_planet_krayt_barracks = krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list2, current_planet_krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end
function State_More_heroes_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list3b, current_planet_fel_barracks, Fel_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(krayt_barracks) then 
					current_planet_krayt_barracks = krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list3, current_planet_krayt_barracks, Krayt_Bando, true, false)
				end						
			end	
end	
function State_More_heroes_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list4b, current_planet_fel_barracks, Fel_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(krayt_barracks) then 
					current_planet_krayt_barracks = krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list4, current_planet_krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_tech_5(message)
			if message == OnEnter then
				Sleep(2)								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
												
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list5b, current_planet_fel_barracks, Fel_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
										
				if TestValid(krayt_barracks) then 
					current_planet_krayt_barracks = krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list5, current_planet_krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end		
	

