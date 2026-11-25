--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Universal_Story_Start = State_Universal_Story_Start,
		More_heroes_CIS_tech_2 = State_More_heroes_CIS_tech_2,
		More_heroes_CIS_tech_3 = State_More_heroes_CIS_tech_3,
		More_heroes_CIS_tech_4 = State_More_heroes_CIS_tech_4,
		More_heroes_CIS_tech_5 = State_More_heroes_CIS_tech_5,
		More_heroes_Republic_tech_2 = State_More_heroes_Republic_tech_2,
		More_heroes_Republic_tech_3 = State_More_heroes_Republic_tech_3,
		More_heroes_Republic_tech_4 = State_More_heroes_Republic_tech_4,
		More_heroes_Republic_tech_5 = State_More_heroes_Republic_tech_5,
		More_heroes_Krayt_tech_2 = State_More_heroes_Krayt_tech_2,
		More_heroes_Krayt_tech_3 = State_More_heroes_Krayt_tech_3,
		More_heroes_Krayt_tech_4 = State_More_heroes_Krayt_tech_4,
		More_heroes_Krayt_tech_5 = State_More_heroes_Krayt_tech_5,
		More_heroes_Fel_tech_2 = State_More_heroes_Fel_tech_2,
		More_heroes_Fel_tech_3 = State_More_heroes_Fel_tech_3,
		More_heroes_Fel_tech_4 = State_More_heroes_Fel_tech_4,
		More_heroes_Fel_tech_5 = State_More_heroes_Fel_tech_5
	}

	unit_list1 = { "YodaRepublic_Team", "CancillerPalpatine_Team", "ClonObiwan_old_Team" }
	unit_list1b = { "Dooku_Team", "Jango_Fett_Team", "Gunray_Team", "CIS_Wat_Tambor_Team" }
	unit_list2 = { "Rep_Integridad", "Padme_Team", "MACEWINDU_Team" }
	unit_list2b = { "Grievous_Team", "Samhill_Team", "CIS_Kul_Teska_Team" }
	unit_list3 = { "ARC_Alpha_Phase2_Team", "PLON_Team" }
	unit_list3b = { "Durge_Team", "Ventress_Sith_Team", "CIS_Poggle_Team" }
	unit_list4 = { "QuinLan_Vos_Advanced_Team", "Rep_Shaak_Ti_Advanced_Team", "CLONSAESEE_Team" }
	unit_list4b = { "General_Sevran_Team", "CIS_Trench_Providence" }
	unit_list5 = { "Rep_Victoria",  "AylaSecura_Advanced_Team", "CLONADIGALLIA_Advanced_Team" }
	unit_list5b = { "Aurra_Team", "CydonTank_Team", "Cad_Bane_Team" }
	unit_list1k = { "Darth_Krayt_Team", "Darth_Wyyrlok_Team", "Darth_Talon_Team" }
	unit_list1f = { "Roan_Fel_Team", "Cade_Skywalker_Team", "Admiral_Stazi_Team" }
	unit_list2k = { "Moff_Morlish_Veed_PellaeonSD", "Moff_Fehlaaur_Team", "Moff_Nyna_Calixte_Team" }
	unit_list2f = { "Morrigan_Team", "Marasiah_Fel_Team", "Antares_Draco_Team" }
	unit_list3k = { "Captain_Meeshal", "Darth_Strife_Team" }
	unit_list3f = { "Shado_Vao_Team", "Wolf_Sazen_Team", "Oron_Jaeger_PellaeonSD" }
	unit_list4k = { "Darth_Maladi_Team", "Darth_Nilh_Team" }
	unit_list4f = { "Konrad_Rus_Team" }
	unit_list5k = { "Darth_Azard_Team" }
	unit_list5f = { "Treis_Sinde_Team" }
	
	
	

end
function State_Universal_Story_Start(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list1b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list1, current_planet_rep_barracks, Republic_Bando, true, false)
				end				
				Krayt_Bando = Find_Player("Krayt")
				Krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(Krayt_barracks) then 
					current_planet_Krayt_barracks = Krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list1k, current_planet_Krayt_barracks, Krayt_Bando, true, false)
				end		
				Fel_Bando = Find_Player("Fel")
				Fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(Fel_barracks) then 
					current_planet_Fel_barracks = Fel_barracks.Get_Planet_Location()
					SpawnList(unit_list1f, current_planet_Fel_barracks, Fel_Bando, true, false)
				end				
										
			end	
end
function State_More_heroes_CIS_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list2b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
			end	
end
function State_More_heroes_Republic_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list2, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end
function State_More_heroes_CIS_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list3b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
			end	
end	
function State_More_heroes_Republic_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list3, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end	
function State_More_heroes_CIS_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list4b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
			end	
end		
function State_More_heroes_Republic_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list4, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_CIS_tech_5(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list5b, current_planet_cis_barracks, CIS_Bando, true, false)
				end			
								
			end	
end				
function State_More_heroes_Republic_tech_5(message)
			if message == OnEnter then
				Story_Event("Units_DESPAWNS")
				Sleep(5)							
								
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
										
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list5, current_planet_rep_barracks, Republic_Bando, true, false)
				end								
			end	
end				
function State_More_heroes_Krayt_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				Krayt_Bando = Find_Player("Krayt")
				Krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(Krayt_barracks) then 
					current_planet_Krayt_barracks = Krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list2k, current_planet_Krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end
function State_More_heroes_Krayt_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				
				Krayt_Bando = Find_Player("Krayt")
				Krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(Krayt_barracks) then 
					current_planet_Krayt_barracks = Krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list3k, current_planet_Krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end	
function State_More_heroes_Krayt_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				Krayt_Bando = Find_Player("Krayt")
				Krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
								
				if TestValid(Krayt_barracks) then 
					current_planet_Krayt_barracks = Krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list4k, current_planet_Krayt_barracks, Krayt_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_Krayt_tech_5(message)
			if message == OnEnter then
				Story_Event("Units_DESPAWNS")
				Sleep(5)							
								
				Krayt_Bando = Find_Player("Krayt")
				Krayt_barracks = Find_First_Object("Krayt_Ground_Barracks")
										
				if TestValid(Krayt_barracks) then 
					current_planet_Krayt_barracks = Krayt_barracks.Get_Planet_Location()
					SpawnList(unit_list5k, current_planet_Krayt_barracks, Krayt_Bando, true, false)
				end								
			end	
end		
function State_More_heroes_Fel_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list2f, current_planet_fel_barracks, Fel_Bando, true, false)
				end					
			end	
end
function State_More_heroes_Fel_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list3f, current_planet_fel_barracks, Fel_Bando, true, false)
				end					
			end	
end	
function State_More_heroes_Fel_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
								
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list4f, current_planet_fel_barracks, Fel_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_Fel_tech_5(message)
			if message == OnEnter then
				Story_Event("Units_DESPAWNS")
				Sleep(5)							
								
				Fel_Bando = Find_Player("Fel")
				fel_barracks = Find_First_Object("Fel_Ground_Barracks")
										
				if TestValid(fel_barracks) then 
					current_planet_fel_barracks = fel_barracks.Get_Planet_Location()
					SpawnList(unit_list5f, current_planet_fel_barracks, Fel_Bando, true, false)
				end								
			end	
end		
