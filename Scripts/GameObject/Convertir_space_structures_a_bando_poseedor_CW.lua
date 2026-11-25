--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

Plataforma1_re = {"RazorfighterU_Squadron", "SuprafighterU_Squadron", "IPV1_System_Patrol_Craft", "Pirate_Frigate"}
Plataforma1r_re = {"Z95_Headhunter_Rebel_Squadron", "Z95_Headhunter_Rebel_Squadron", "IPV1_System_Patrol_Craft", "IPV1_System_Patrol_Craft"}
Plataforma1e_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "IPV1_System_Patrol_Craft", "IPV1_System_Patrol_Craft"}
Plataforma1cw_re = {"Rep_NabooFighterSquadron", "Rep_NabooBomber_Squadron", "REP_CR_Shuttle", "REP_CR_Shuttle"}
Plataforma1cwcis_re = {"CIS_Mankvim814_Squadron", "CIS_Mankvim814_Squadron", "CIS_BOARDING", "CIS_BOARDING"}

Plataforma2_re = {"PlanetaryfighterU_Squadron", "ToskanU_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma2r_re = {"Z95_Headhunter_Rebel_Squadron", "Y-Wing_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma2e_re = {"TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma2cw_re = {"Z95_Headhunter_REP_Squadron", "Rep_Y_Wing_Squadron", "REP_Corellian_Corvette", "REP_Corellian_Corvette"}
Plataforma2cwcis_re = {"Belbullab22_Squadron", "Belbullab22_Squadron", "CIS_Marauder", "CIS_Marauder"}

Plataforma3_re = {"Z95_Headhunter_Rebel_Squadron", "R41_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3r_re = {"Rebel_X-Wing_Squadron", "Y-Wing_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3e_re = {"TIE_Interceptor_Squadron", "TIE_Bomber_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3cw_re = {"REP_V19_Torrent_Squadron", "Rep_ARC-170_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma3cwcis_re = {"Nantex_Squadron", "Nantex_Squadron", "CIS_Missile_Frg", "CIS_Missile_Frg"}

Plataforma4_re = {"Preybird_Squadron", "Clockshape_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4r_re = {"Rebel_X-Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4e_re = {"TIE_Avenger_Squadron", "Gunboat_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4cw_re = {"Rep_Havoc_Squadron", "Rep_Freefall_Squadron", "REP_Radiant7", "REP_Radiant7"}
Plataforma4cwcis_re = {"CIS_Scarab_Squadron", "CIS_Scarab_Squadron", "CIS_Saboath", "CIS_Saboath"}

Plataforma5_re = {"HowlrunnerU_Squadron", "Skipray_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma5r_re = {"Rebel_X-Wing_Squadron", "B-Wing_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma5e_re = {"TIE_Avenger_Squadron", "TIE_Defender_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma5cw_re = {"REP_V19_Torrent_Squadron", "Rep_NTB630_Squadron", "Rep_Lt_CRU", "Rep_Lt_CRU"}
Plataforma5cwcis_re = {"CIS_Hyena_Squadron", "CIS_Hyena_Squadron", "CIS_Recusant_PSD", "CIS_Recusant_PSD"}

Plataforma6_re = {"T_Wing_Squadron", "R41_Squadron", "IPV1_System_Patrol_Craft", "IPV1_System_Patrol_Craft"}
Plataforma6r_re = {"A_Wing_Squadron", "B-Wing_Squadron", "Corellian_Gunboat", "Corellian_Gunboat"}
Plataforma6e_re = {"TIE_Defender_Squadron", "Missile_Gunboat_Squadron", "Tartan_Patrol_Cruiser", "Tartan_Patrol_Cruiser"}
Plataforma6cw_re = {"Alligator_REP_Squadron", "Alligator_REP_Squadron", "REP_Pelta", "REP_Pelta"}
Plataforma6cwcis_re = {"Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "CIS_TU_SD", "CIS_TU_SD"}

Corsec_Station_re = {"BS_CR_Lt_Gunship", "BS_CR_Lt_Gunship", "BS_CR_Patrol", "BS_CR_Patrol", "BS_CR_Lt_Frg", "BS_CR_Med_Frg"}
Corsec_Stationcw_re = {"Rep_Lt_CRU", "Rep_Lt_CRU", "REP_Radiant7", "REP_Radiant7", "REP_CR_Shuttle", "REP_CR_Shuttle"}
Corsec_Stationcwcis_re = {"CIS_Saboath", "CIS_Saboath", "CIS_Missile_Frg", "CIS_Missile_Frg", "CIS_Marauder", "CIS_Marauder"}

factory_icom_re = {"Rebel_X-Wing_Squadron", "Rebel_X-Wing_Squadron", "A_Wing_Squadron", "A_Wing_Squadron"}
factory_icom_bs_re = {"Z95_Headhunter_Rebel_Squadron", "Z95_Headhunter_Rebel_Squadron", "R41_Squadron", "R41_Squadron"}
factory_icom_e_re = {"ARC-170_Squadron_E", "ARC-170_Squadron_E", "REP_V19_Torrent_Squadron", "REP_V19_Torrent_Squadron"}
factory_icomcw_re = {"Z95_Headhunter_REP_Squadron", "Rep_ARC-170_Squadron", "Alligator_REP_Squadron", "Rep_ARC-170_Squadron"}
factory_icomcwcis_re = {"Belbullab22_Squadron", "CIS_Mankvim814_Squadron", "Belbullab22_Squadron", "CIS_Mankvim814_Squadron"}

factory_bs_re = {"SuprafighterU_Squadron", "SuprafighterU_Squadron", "T_Wing_Squadron", "T_Wing_Squadron"}
factory_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
factory_r_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
factory_cw_re = {"Rep_TIE_Squadron", "Rep_TIE_Squadron", "REP_VWing_Squadron", "REP_VWing_Squadron"}
factory_cwcis_re = {"CIS_Vulture_Squadron", "CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Tridroid_Squadron"}

factory_soorub_e_re = {"TIE_Defender_Squadron", "TIE_Defender_Squadron", "TIE_Defender_Squadron", "TIE_Defender_Squadron"}
factory_soorub_re = {"Preybird_Squadron", "Preybird_Squadron", "Preybird_Squadron", "Preybird_Squadron"}
factory_soorubcw_re = {"Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron"}
factory_soorubcwcis_re = {"CIS_Vulture_Squadron", "CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Tridroid_Squadron"}

factory_koen_bs_re = {"Hu_YBWing_Squadron", "Hu_YBWing_Squadron", "Hu_YBWing_Squadron", "Hu_YBWing_Squadron"}
factory_koen_e_re = {"Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron"}
factory_koen_re = {"Y-Wing_Squadron", "Y-Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}
factory_koencw_re = {"Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron"}
factory_koencwcis_re = {"Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron"}

hangar_container_re = {"Rebel_X-Wing_Squadron", "Rebel_X-Wing_Squadron", "Y-Wing_Squadron", "Y-Wing_Squadron"}
hangar_container_e_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
hangar_container_bs_re = {"SuprafighterU_Squadron", "SuprafighterU_Squadron", "R41_Squadron", "R41_Squadron"}

xq3_re = {"A_Wing_Squadron", "A_Wing_Squadron", "R22_Squadron", "R22_Squadron"}
xq3_e_re = {"TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron"}
xq3_bs_re = {"T_Wing_Squadron", "T_Wing_Squadron", "Preybird_Squadron", "Preybird_Squadron"}

PlataformaC_re = {"BS_Med_Fighter_Squadron", "Pirate_Fighter_Squadron", "BS_Protector", "BS_Venator"}
PlataformaCr_re = {"R_XWingS1_Squadron", "RVBTLS3Y_Wing_Squadron", "R_Protector", "R_Venator"}
PlataformaCe_re = {"TIE_Raptor_Squadron", "TIE_Interdictor_Squadron", "E_Protector", "E_Venator"}
PlataformaCcw_re = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "Rep_Med_CRU", "Rep_Venator"}
PlataformaCcwcis_re = {"CIS_Mankvim814_Squadron", "Belbullab22_Squadron", "CIS_TU_SD", "CIS_MunificentClan"}

SearchC_re = {"SearchShip"}

TedarocSB_re = {"TIE_Fighter_Squadron", "TIE_Interceptor_Squadron", "VSD2T", "TIE_Bomber_Squadron"}
TedarocSBR_re = {"Rebel_X-Wing_Squadron", "A_Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}
TedarocSBU_re = {"Underworld_Pirate_Fighter_Squadron", "BS_Lt_Fighter_Squadron", "BS_Med_Fighter_Squadron", "BS_Med_Fighter_Squadron"}
TedarocSBPi_re = {"RazorfighterU_Squadron", "IrdfighterU_Squadron", "Hu_Med_Fighter_Squadron", "Hu_Hvy_Fighter_Squadron"}
TedarocSBEVK_re = {"EVK_TIE_Reaper_Squadron", "EVK_TIE_Reaper_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron"}
TedarocSBEVF_re = {"GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_B22_Squadron", "GA_Ionizer_Squadron"}
TedarocSBRep_re = {"Rep_TIE_Squadron", "Rep_TIE_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron"}
TedarocSBCIS_re = {"CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Hyena_Squadron", "CIS_Hyena_Squadron"}

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Pirates_Bando = Find_Player("Pirates")
BlackSun_Bando = Find_Player("Underworld")
CIS_Bando = Find_Player("CIS")
Republic_Bando = Find_Player("Republic")
Krayt_Bando = Find_Player("Krayt")
Fel_Bando = Find_Player("Fel")
		
chances = nil

end



function State_Init(message)
		if Get_Game_Mode() == "Galactic" then
				ScriptExit()
		end
		
		
        if message == OnEnter then
				
		friendly_player = Object.Get_Owner()
		neutral_side = Find_Player("Structuras")
							
		neutral_unit_list = Find_All_Objects_Of_Type(neutral_side)

		Sleep(2)						
				
		for k, unit in pairs(neutral_unit_list) do
			unit.Change_Owner(friendly_player)
		end		
		
		for i, unit in pairs(neutral_unit_list) do
			if TestValid(unit) then
				if unit.Get_Owner() == neutral_side then
					unit.Change_Owner(friendly_player)
				end
			end
		end
		
	end
	
	
	
	if message == OnEnter then
				
				Plataforma1 = Find_First_Object("Plattform1")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma1 and friendly_player == Rebel_Bando then
         				grupo_01A = SpawnList(Plataforma1cwcis_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01A) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Empire_Bando then
         				grupo_02A = SpawnList(Plataforma1cw_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_02A) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Pirates_Bando then
         				grupo_03A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_03A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == BlackSun_Bando then
         				grupo_04A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_04A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == CIS_Bando then
         				grupo_05A = SpawnList(Plataforma1cwcis_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_05A) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Republic_Bando then
         				grupo_06A = SpawnList(Plataforma1cw_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_06A) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Fel_Bando then
         				grupo_07A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_07A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == Krayt_Bando then
         				grupo_08A = SpawnList(Plataforma1e_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_08A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Plataforma2 = Find_First_Object("Plattform2")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma2 and friendly_player == Rebel_Bando then
         				grupo_01B = SpawnList(Plataforma2cwcis_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01B) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Empire_Bando then
         				grupo_02B = SpawnList(Plataforma2cw_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_02B) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Pirates_Bando then
         				grupo_03B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_03B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == BlackSun_Bando then
         				grupo_04B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_04B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == CIS_Bando then
         				grupo_05B = SpawnList(Plataforma2cwcis_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_05B) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Republic_Bando then
         				grupo_06B = SpawnList(Plataforma2cw_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_06B) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Fel_Bando then
         				grupo_07B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_07B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == Krayt_Bando then
         				grupo_08B = SpawnList(Plataforma2e_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_08B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Plataforma3 = Find_First_Object("Plattform3")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma3 and friendly_player == Rebel_Bando then
         				grupo_01C = SpawnList(Plataforma3cwcis_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Empire_Bando then
         				grupo_02C = SpawnList(Plataforma3cw_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Pirates_Bando then
         				grupo_03C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_03C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == BlackSun_Bando then
         				grupo_04C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_04C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == CIS_Bando then
         				grupo_05C = SpawnList(Plataforma3cwcis_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_05C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Republic_Bando then
         				grupo_06C = SpawnList(Plataforma3cw_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_06C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Fel_Bando then
         				grupo_07C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_07C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Krayt_Bando then
         				grupo_08C = SpawnList(Plataforma3e_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_08C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Plataforma4 = Find_First_Object("Plattform4")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma4 and friendly_player == Rebel_Bando then
         				grupo_01D = SpawnList(Plataforma4cwcis_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_01D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Empire_Bando then
         				grupo_02D = SpawnList(Plataforma4cw_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_02D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Pirates_Bando then
         				grupo_03D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_03D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == BlackSun_Bando then
         				grupo_04D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_04D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == CIS_Bando then
         				grupo_05D = SpawnList(Plataforma4cwcis_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_05D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Republic_Bando then
         				grupo_06D = SpawnList(Plataforma4cw_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_06D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Fel_Bando then
         				grupo_07D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_07D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Krayt_Bando then
         				grupo_08D = SpawnList(Plataforma4e_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_08D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Plataforma5 = Find_First_Object("Plattform5")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma5 and friendly_player == Rebel_Bando then
         				grupo_01E = SpawnList(Plataforma5cwcis_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_01E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Empire_Bando then
         				grupo_02E = SpawnList(Plataforma5cw_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_02E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Pirates_Bando then
         				grupo_03E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_03E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == BlackSun_Bando then
         				grupo_04E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_04E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == CIS_Bando then
         				grupo_05E = SpawnList(Plataforma5cwcis_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_05E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Republic_Bando then
         				grupo_06E = SpawnList(Plataforma5cw_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_06E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Fel_Bando then
         				grupo_07E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_07E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Krayt_Bando then
         				grupo_08E = SpawnList(Plataforma5e_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_08E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Plataforma6 = Find_First_Object("Plattform6")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma6 and friendly_player == Rebel_Bando then
         				grupo_01F = SpawnList(Plataforma6cwcis_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01F) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Empire_Bando then
         				grupo_02F = SpawnList(Plataforma6cw_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_02F) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Pirates_Bando then
         				grupo_03F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_03F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == BlackSun_Bando then
         				grupo_04F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_04F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == CIS_Bando then
         				grupo_05F = SpawnList(Plataforma6cwcis_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_05F) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Republic_Bando then
         				grupo_06F = SpawnList(Plataforma6cw_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_06F) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Fel_Bando then
         				grupo_07F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_07F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == Krayt_Bando then
         				grupo_09F = SpawnList(Plataforma6e_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_09F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Corsec_Station = Find_First_Object("NV_DEFENSE_CORSEC_STATION")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Corsec_Station and friendly_player == Rebel_Bando then
         				grupo_01G = SpawnList(Corsec_Stationcwcis_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01G) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Empire_Bando then
         				grupo_02G = SpawnList(Corsec_Stationcw_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_02G) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Pirates_Bando then
         				grupo_03G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_03G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == BlackSun_Bando then
         				grupo_04G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_04G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == CIS_Bando then
         				grupo_05G = SpawnList(Corsec_Stationcwcis_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_05G) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Republic_Bando then
         				grupo_06G = SpawnList(Corsec_Stationcw_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_06G) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Fel_Bando then
         				grupo_07G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_07G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == Krayt_Bando then
         				grupo_08G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_08G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Icom_Factory = Find_First_Object("Factoria_Cazas_ICOM")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Icom_Factory and friendly_player == Rebel_Bando then
         				grupo_02H = SpawnList(factory_icomcwcis_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02H) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Empire_Bando then
         				grupo_02H = SpawnList(factory_icomcw_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02H) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Pirates_Bando then
         				grupo_02H = SpawnList(factory_icom_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == BlackSun_Bando then
         				grupo_03H = SpawnList(factory_icom_bs_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == CIS_Bando then
         				grupo_04H = SpawnList(factory_icomcwcis_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04H) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Republic_Bando then
         				grupo_05H = SpawnList(factory_icomcw_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_05H) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Fel_Bando then
         				grupo_06H = SpawnList(factory_icom_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_06H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == Krayt_Bando then
         				grupo_07H = SpawnList(factory_icom_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Factory = Find_First_Object("Factory_Plattform")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Factory and friendly_player == Rebel_Bando then
         				grupo_01I = SpawnList(factory_cwcis_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01I) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Empire_Bando then
         				grupo_02I = SpawnList(factory_cw_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02I) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Pirates_Bando then
         				grupo_03I = SpawnList(factory_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == BlackSun_Bando then
         				grupo_04I = SpawnList(factory_bs_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == CIS_Bando then
         				grupo_05I = SpawnList(factory_cwcis_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_05I) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Republic_Bando then
         				grupo_06I = SpawnList(factory_cw_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_06I) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Fel_Bando then
         				grupo_07I = SpawnList(factory_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == Krayt_Bando then
         				grupo_08I = SpawnList(factory_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_08I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Soorub_Factory = Find_First_Object("Factoria_Cazas_Soorub")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Soorub_Factory and friendly_player == Rebel_Bando then
         				grupo_01J = SpawnList(factory_soorubcwcis_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01J) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Empire_Bando then
         				grupo_02J = SpawnList(factory_soorubcw_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02J) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Pirates_Bando then
         				grupo_03J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == BlackSun_Bando then
         				grupo_04J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == CIS_Bando then
         				grupo_05J = SpawnList(factory_soorubcwcis_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_05J) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Republic_Bando then
         				grupo_06J = SpawnList(factory_soorubcw_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_06J) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Fel_Bando then
         				grupo_07J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == Krayt_Bando then
         				grupo_08J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_08J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Koen_Factory = Find_First_Object("Factoria_Cazas_KOEN")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Koen_Factory and friendly_player == Rebel_Bando then
         				grupo_01K = SpawnList(factory_koencwcis_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01K) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Empire_Bando then
         				grupo_02K = SpawnList(factory_koencw_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02K) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Pirates_Bando then
         				grupo_03K = SpawnList(factory_koen_bs_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == BlackSun_Bando then
         				grupo_04K = SpawnList(factory_koen_bs_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == CIS_Bando then
         				grupo_05K = SpawnList(factory_koencwcis_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_05K) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Republic_Bando then
         				grupo_06K = SpawnList(factory_koencw_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_06K) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Fel_Bando then
         				grupo_07K = SpawnList(factory_koen_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == Krayt_Bando then
         				grupo_08K = SpawnList(factory_koen_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_08K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				hangar_container = Find_First_Object("E_Gravity_Well_Station")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if hangar_container and friendly_player == Rebel_Bando then
         				grupo_01L = SpawnList(hangar_container_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_01L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_02L = SpawnList(hangar_container_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_02L) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif hangar_container and friendly_player == Empire_Bando then
         				grupo_03L = SpawnList(hangar_container_e_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_03L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_04L = SpawnList(hangar_container_e_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_04L) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif hangar_container and friendly_player == BlackSun_Bando then
         				grupo_05L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_05L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_06L) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				xq3 = Find_First_Object("XQ3")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if xq3 and friendly_player == Rebel_Bando then
         				grupo_01M = SpawnList(xq3_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_01M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_02M = SpawnList(xq3_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_02M) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif xq3 and friendly_player == Empire_Bando then
         				grupo_03M = SpawnList(xq3_e_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_03M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_04M = SpawnList(xq3_e_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_04M) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif xq3 and friendly_player == BlackSun_Bando then
         				grupo_05M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_05M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_06M) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				vergessoas = Find_First_Object("NV_Vergesso_Asteroid")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if vergessoas and friendly_player == Rebel_Bando then
         				grupo_01N = SpawnList(Plataforma1cwcis_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01N) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Empire_Bando then
         				grupo_02N = SpawnList(Plataforma1cw_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_02N) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Pirates_Bando then
         				grupo_03N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_03N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == BlackSun_Bando then
         				grupo_04N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_04N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == CIS_Bando then
         				grupo_05N = SpawnList(Plataforma1cwcis_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_05N) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Republic_Bando then
         				grupo_06N = SpawnList(Plataforma1cw_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_06N) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Fel_Bando then
         				grupo_07N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_07N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == Krayt_Bando then
         				grupo_08N = SpawnList(Plataforma1e_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_08N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				PlataformaC = Find_First_Object("Colonial_Empire_Base_5")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if PlataformaC and friendly_player == Rebel_Bando then
         				grupo_01O = SpawnList(PlataformaCcwcis_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01O) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Empire_Bando then
         				grupo_02O = SpawnList(PlataformaCcw_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_02O) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Pirates_Bando then
         				grupo_03O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_03O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == BlackSun_Bando then
         				grupo_04O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_04O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == CIS_Bando then
         				grupo_05O = SpawnList(PlataformaCcwcis_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_05O) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Republic_Bando then
         				grupo_06O = SpawnList(PlataformaCcw_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_06O) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Fel_Bando then
         				grupo_07O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_07O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == Krayt_Bando then
         				grupo_08O = SpawnList(PlataformaCe_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_08O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				SearchCe = Find_First_Object("SearchCenter_Plattform")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if SearchCe and friendly_player == Rebel_Bando then
         				grupo_01P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01P) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Empire_Bando then
         				grupo_02P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_XX) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Pirates_Bando then
         				grupo_03P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_03P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == BlackSun_Bando then
         				grupo_04P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_04P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == CIS_Bando then
         				grupo_05P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_05P) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Republic_Bando then
         				grupo_06P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_06P) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Fel_Bando then
         				grupo_07P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_07P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == Krayt_Bando then
         				grupo_08P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_08P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB1 = Find_First_Object("Tedaroc_Asteroid_Base1")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB1 and friendly_player == Empire_Bando then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Rebel_Bando then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == BlackSun_Bando then
         				grupo_03Q = SpawnList(TedarocSBU_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_03Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Pirates_Bando then
         				grupo_04Q = SpawnList(TedarocSBPi_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_04Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Krayt_Bando then
         				grupo_05Q = SpawnList(TedarocSBEVK_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_05Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Fel_Bando then
         				grupo_06Q = SpawnList(TedarocSBEVF_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_06Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Republic_Bando then
         				grupo_07Q = SpawnList(TedarocSBRep_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_07Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == CIS_Bando then
         				grupo_08Q = SpawnList(TedarocSBCIS_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_08Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB2 = Find_First_Object("Tedaroc_Asteroid_Base2")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB2 and friendly_player == Empire_Bando then
         				grupo_01R = SpawnList(TedarocSBRep_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_01R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Rebel_Bando then
         				grupo_02R = SpawnList(TedarocSBCIS_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_02R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == BlackSun_Bando then
         				grupo_03R = SpawnList(TedarocSBU_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_03R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Pirates_Bando then
         				grupo_04R = SpawnList(TedarocSBPi_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_04R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Krayt_Bando then
         				grupo_05R = SpawnList(TedarocSBEVK_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_05R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Fel_Bando then
         				grupo_06R = SpawnList(TedarocSBEVF_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_06R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Republic_Bando then
         				grupo_07R = SpawnList(TedarocSBRep_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_07R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == CIS_Bando then
         				grupo_08R = SpawnList(TedarocSBCIS_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_08R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB3 = Find_First_Object("Tedaroc_Asteroid_Base3")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB3 and friendly_player == Empire_Bando then
         				grupo_01S = SpawnList(TedarocSBRep_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_01S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Rebel_Bando then
         				grupo_02S = SpawnList(TedarocSBCIS_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_02S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == BlackSun_Bando then
         				grupo_03S = SpawnList(TedarocSBU_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_03S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Pirates_Bando then
         				grupo_04S = SpawnList(TedarocSBPi_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_04S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Krayt_Bando then
         				grupo_05S = SpawnList(TedarocSBEVK_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_05S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Fel_Bando then
         				grupo_06S = SpawnList(TedarocSBEVF_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_06S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Republic_Bando then
         				grupo_07S = SpawnList(TedarocSBRep_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_07S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == CIS_Bando then
         				grupo_08S = SpawnList(TedarocSBCIS_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_08S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB4 = Find_First_Object("Tedaroc_Asteroid_Base4")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB4 and friendly_player == Empire_Bando then
         				grupo_01T = SpawnList(TedarocSBRep_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_01T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Rebel_Bando then
         				grupo_02T = SpawnList(TedarocSBCIS_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_02T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == BlackSun_Bando then
         				grupo_03T = SpawnList(TedarocSBU_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_03T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Pirates_Bando then
         				grupo_04T = SpawnList(TedarocSBPi_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_04T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Krayt_Bando then
         				grupo_05T = SpawnList(TedarocSBEVK_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_05T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Fel_Bando then
         				grupo_06T = SpawnList(TedarocSBEVF_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_06T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Republic_Bando then
         				grupo_07T = SpawnList(TedarocSBRep_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_07T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == CIS_Bando then
         				grupo_08T = SpawnList(TedarocSBCIS_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_08T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB5 = Find_First_Object("Tedaroc_Asteroid_Base5")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB5 and friendly_player == Empire_Bando then
         				grupo_01U = SpawnList(TedarocSBRep_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_01U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Rebel_Bando then
         				grupo_02U = SpawnList(TedarocSBCIS_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_02U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == BlackSun_Bando then
         				grupo_03 = SpawnList(TedarocSBU_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_03) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Pirates_Bando then
         				grupo_04U = SpawnList(TedarocSBPi_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_04U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Krayt_Bando then
         				grupo_05U = SpawnList(TedarocSBEVK_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_05U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Fel_Bando then
         				grupo_06U = SpawnList(TedarocSBEVF_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_06U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Republic_Bando then
         				grupo_08U = SpawnList(TedarocSBRep_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_08U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == CIS_Bando then
         				grupo_09U = SpawnList(TedarocSBCIS_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_09U) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB6 = Find_First_Object("Tedaroc_Asteroid_Base6")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB6 and friendly_player == Empire_Bando then
         				grupo_01V = SpawnList(TedarocSBRep_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_01V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Rebel_Bando then
         				grupo_02V = SpawnList(TedarocSBCIS_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_02V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == BlackSun_Bando then
         				grupo_03V = SpawnList(TedarocSBU_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_03V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Pirates_Bando then
         				grupo_04V = SpawnList(TedarocSBPi_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_04V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Krayt_Bando then
         				grupo_05V = SpawnList(TedarocSBEVK_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_05V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Fel_Bando then
         				grupo_06V = SpawnList(TedarocSBEVF_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_06V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Republic_Bando then
         				grupo_07V = SpawnList(TedarocSBRep_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_07V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == CIS_Bando then
         				grupo_08V = SpawnList(TedarocSBCIS_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_08V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB7 = Find_First_Object("Tedaroc_Asteroid_Base7")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB7 and friendly_player == Empire_Bando then
         				grupo_01W = SpawnList(TedarocSBRep_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_01W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Rebel_Bando then
         				grupo_02W = SpawnList(TedarocSBCIS_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == BlackSun_Bando then
         				grupo_03W = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_03W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Pirates_Bando then
         				grupo_04W = SpawnList(TedarocSBPi_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_04W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Krayt_Bando then
         				grupo_05W = SpawnList(TedarocSBEVK_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_05W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Fel_Bando then
         				grupo_06W = SpawnList(TedarocSBEVF_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_06W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Republic_Bando then
         				grupo_07W = SpawnList(TedarocSBRep_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_07W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == CIS_Bando then
         				grupo_08W = SpawnList(TedarocSBCIS_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_08W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				TedarocSB8 = Find_First_Object("Tedaroc_Asteroid_Base8")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if TedarocSB8 and friendly_player == Empire_Bando then
         				grupo_01Y = SpawnList(TedarocSBRep_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_01Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Rebel_Bando then
         				grupo_02Y = SpawnList(TedarocSBCIS_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_02Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == BlackSun_Bando then
         				grupo_03Y = SpawnList(TedarocSBU_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_03Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Pirates_Bando then
         				grupo_04Y = SpawnList(TedarocSBPi_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_04Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Krayt_Bando then
         				grupo_05Y = SpawnList(TedarocSBEVK_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_05Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Fel_Bando then
         				grupo_06Y = SpawnList(TedarocSBEVF_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_06Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Republic_Bando then
         				grupo_07Y = SpawnList(TedarocSBRep_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_07Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == CIS_Bando then
         				grupo_08Y = SpawnList(TedarocSBCIS_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_08Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	
	Sleep(5)
	ScriptExit()
end




