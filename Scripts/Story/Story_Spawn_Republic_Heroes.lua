--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")
require("pgcommands")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

	StoryModeEvents = 
	{
		Universal_Story_Start = State_Universal_Story_Start,
		More_heroes_tech_2 = State_More_heroes_tech_2,
		More_heroes_tech_3 = State_More_heroes_tech_3,
		More_heroes_tech_4 = State_More_heroes_tech_4,
		More_heroes_tech_5 = State_More_heroes_tech_5,
		CIS_Construye_Starbase = State_CIS_Construye_Starbase,
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
			end	
end
function State_More_heroes_tech_2(message)
			if message == OnEnter then
				Sleep(2)		
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list2b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list2, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end
function State_More_heroes_tech_3(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list3b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list3, current_planet_rep_barracks, Republic_Bando, true, false)
				end						
			end	
end	
function State_More_heroes_tech_4(message)
			if message == OnEnter then
				Sleep(2)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
								
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list4b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
								
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list4, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end		
function State_More_heroes_tech_5(message)
			if message == OnEnter then
				Story_Event("Units_DESPAWNS")
				Sleep(5)								
				CIS_Bando = Find_Player("CIS")
				cis_barracks = Find_First_Object("CIS_Ground_Barracks")
												
				if TestValid(cis_barracks) then 
					current_planet_cis_barracks = cis_barracks.Get_Planet_Location()
					SpawnList(unit_list5b, current_planet_cis_barracks, CIS_Bando, true, false)
				end				
				Republic_Bando = Find_Player("Republic")
				rep_barracks = Find_First_Object("Republic_Ground_Barracks")
										
				if TestValid(rep_barracks) then 
					current_planet_rep_barracks = rep_barracks.Get_Planet_Location()
					SpawnList(unit_list5, current_planet_rep_barracks, Republic_Bando, true, false)
				end					
			end	
end		
	

