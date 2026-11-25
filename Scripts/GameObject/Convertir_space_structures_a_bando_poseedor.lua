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
Plataforma1evf_re = {"EVF_TIE_Predator_Squadron", "EVF_TIE_Predator_Squadron", "Ga_Twighlight_Squadron", "Ga_Twighlight_Squadron"}
Plataforma1evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_Assassin_Corvette", "EVK_Assassin_Corvette"}

Plataforma2_re = {"PlanetaryfighterU_Squadron", "ToskanU_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma2r_re = {"Z95_Headhunter_Rebel_Squadron", "Y-Wing_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma2e_re = {"TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma2cw_re = {"Z95_Headhunter_REP_Squadron", "Rep_Y_Wing_Squadron", "REP_Corellian_Corvette", "REP_Corellian_Corvette"}
Plataforma2cwcis_re = {"Belbullab22_Squadron", "Belbullab22_Squadron", "CIS_Marauder", "CIS_Marauder"}
Plataforma2evf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Plataforma2evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_Assassin_Corvette", "EVK_Assassin_Corvette"}

Plataforma3_re = {"Z95_Headhunter_Rebel_Squadron", "R41_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3r_re = {"Rebel_X-Wing_Squadron", "Y-Wing_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3e_re = {"TIE_Interceptor_Squadron", "TIE_Bomber_Squadron", "R_GuardianCV", "R_GuardianCV"}
Plataforma3cw_re = {"REP_V19_Torrent_Squadron", "Rep_ARC-170_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma3cwcis_re = {"Nantex_Squadron", "Nantex_Squadron", "CIS_Missile_Frg", "CIS_Missile_Frg"}
Plataforma3evf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Plataforma3evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_Assassin_Corvette", "EVK_Assassin_Corvette"}

Plataforma4_re = {"Preybird_Squadron", "Clockshape_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4r_re = {"Rebel_X-Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4e_re = {"TIE_Avenger_Squadron", "Gunboat_Squadron", "Corellian_Corvette", "Corellian_Corvette"}
Plataforma4cw_re = {"Rep_Havoc_Squadron", "Rep_Freefall_Squadron", "REP_Radiant7", "REP_Radiant7"}
Plataforma4cwcis_re = {"CIS_Scarab_Squadron", "CIS_Scarab_Squadron", "CIS_Sabaoth", "CIS_Sabaoth"}
Plataforma4evf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Plataforma4evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_Assassin_Corvette", "EVK_Assassin_Corvette"}

Plataforma5_re = {"HowlrunnerU_Squadron", "Skipray_Squadron", "BS_IPVII", "BS_IPVII"}
Plataforma5r_re = {"Rebel_X-Wing_Squadron", "B-Wing_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma5e_re = {"TIE_Avenger_Squadron", "TIE_Defender_Squadron", "E_CR_CVM", "E_CR_CVM"}
Plataforma5cw_re = {"REP_V19_Torrent_Squadron", "Rep_NTB630_Squadron", "Rep_Lt_CRU", "Rep_Lt_CRU"}
Plataforma5cwcis_re = {"CIS_Hyena_Squadron", "CIS_Hyena_Squadron", "CIS_Recusant_PSD", "CIS_Recusant_PSD"}
Plataforma5evf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Plataforma5evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_Assassin_Corvette_H", "EVK_Assassin_Corvette_H"}

Plataforma6_re = {"T_Wing_Squadron", "R41_Squadron", "IPV1_System_Patrol_Craft", "IPV1_System_Patrol_Craft"}
Plataforma6r_re = {"A_Wing_Squadron", "B-Wing_Squadron", "Corellian_Gunboat", "Corellian_Gunboat"}
Plataforma6e_re = {"TIE_Defender_Squadron", "Missile_Gunboat_Squadron", "Tartan_Patrol_Cruiser", "Tartan_Patrol_Cruiser"}
Plataforma6cw_re = {"Alligator_REP_Squadron", "Alligator_REP_Squadron", "REP_Pelta", "REP_Pelta"}
Plataforma6cwcis_re = {"Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "CIS_TU_SD", "CIS_TU_SD"}
Plataforma6evf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Plataforma6evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_Assassin_Corvette_H", "EVK_Assassin_Corvette_H"}

Corsec_Station_re = {"BS_CR_Lt_Gunship", "BS_CR_Lt_Gunship", "BS_CR_Patrol", "BS_CR_Patrol", "BS_CR_Lt_Frg", "BS_CR_Med_Frg"}
Corsec_Stationcw_re = {"Rep_Lt_CRU", "Rep_Lt_CRU", "REP_Radiant7", "REP_Radiant7", "REP_CR_Shuttle", "REP_CR_Shuttle"}
Corsec_Stationcwcis_re = {"CIS_Sabaoth", "CIS_Sabaoth", "CIS_Missile_Frg", "CIS_Missile_Frg", "CIS_Marauder", "CIS_Marauder"}
Corsec_Stationevf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
Corsec_Stationevk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_Assassin_Corvette_H", "EVK_Assassin_Corvette_H"}

factory_icom_re = {"Rebel_X-Wing_Squadron", "Rebel_X-Wing_Squadron", "A_Wing_Squadron", "A_Wing_Squadron"}
factory_icom_bs_re = {"Z95_Headhunter_Rebel_Squadron", "Z95_Headhunter_Rebel_Squadron", "R41_Squadron", "R41_Squadron"}
factory_icom_e_re = {"ARC-170_Squadron_E", "ARC-170_Squadron_E", "REP_V19_Torrent_Squadron", "REP_V19_Torrent_Squadron"}
factory_icomcw_re = {"Z95_Headhunter_REP_Squadron", "Rep_ARC-170_Squadron", "Alligator_REP_Squadron", "Rep_ARC-170_Squadron"}
factory_icomcwcis_re = {"Belbullab22_Squadron", "CIS_Mankvim814_Squadron", "Belbullab22_Squadron", "CIS_Mankvim814_Squadron"}
factory_icomevf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Crossfire_Squadron", "GA_Ionizer_Squadron"}
factory_icomevk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron"}

factory_bs_re = {"SuprafighterU_Squadron", "SuprafighterU_Squadron", "T_Wing_Squadron", "T_Wing_Squadron"}
factory_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
factory_r_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
factory_cw_re = {"Rep_TIE_Squadron", "Rep_TIE_Squadron", "REP_VWing_Squadron", "REP_VWing_Squadron"}
factory_cwcis_re = {"CIS_Vulture_Squadron", "CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Tridroid_Squadron"}
factory_evf_re = {"GA_Ionizer_Squadron", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron"}
factory_evk_re = {"EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron"}

factory_soorub_e_re = {"TIE_Defender_Squadron", "TIE_Defender_Squadron", "TIE_Defender_Squadron", "TIE_Defender_Squadron"}
factory_soorub_re = {"Preybird_Squadron", "Preybird_Squadron", "Preybird_Squadron", "Preybird_Squadron"}
factory_soorubcw_re = {"Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron", "Rep_Clockshape_Squadron"}
factory_soorubcwcis_re = {"CIS_Vulture_Squadron", "CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Tridroid_Squadron"}
factory_soorubevf_re = {"GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron"}
factory_soorubevk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron"}

factory_koen_bs_re = {"Hu_YBWing_Squadron", "Hu_YBWing_Squadron", "Hu_YBWing_Squadron", "Hu_YBWing_Squadron"}
factory_koen_e_re = {"Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron"}
factory_koen_re = {"Y-Wing_Squadron", "Y-Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}
factory_koencw_re = {"Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron"}
factory_koencwcis_re = {"Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron", "Cis_DroidBomber_Squadron"}
factory_koenevf_re = {"GA_Ionizer_Squadron", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron"}
factory_koenevk_re = {"EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron"}

hangar_container_re = {"Rebel_X-Wing_Squadron", "Rebel_X-Wing_Squadron", "Y-Wing_Squadron", "Y-Wing_Squadron"}
hangar_container_e_re = {"TIE_Fighter_Squadron", "TIE_Fighter_Squadron", "TIE_Bomber_Squadron", "TIE_Bomber_Squadron"}
hangar_container_bs_re = {"SuprafighterU_Squadron", "SuprafighterU_Squadron", "R41_Squadron", "R41_Squadron"}
hangar_container_evf_re = {"GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron"}
hangar_container_evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Neutralizer_Squadron", "EVK_TIE_Neutralizer_Squadron"}

xq3_re = {"A_Wing_Squadron", "A_Wing_Squadron", "R22_Squadron", "R22_Squadron"}
xq3_e_re = {"TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron", "TIE_Interceptor_Squadron"}
xq3_bs_re = {"T_Wing_Squadron", "T_Wing_Squadron", "Preybird_Squadron", "Preybird_Squadron"}
xq3_evf_re = {"GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron"}
xq3_evk_re = {"EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron"}

PlataformaC_re = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "BS_Protector", "BS_Venator"}
PlataformaCr_re = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "R_Protector", "R_Venator"}
PlataformaCe_re = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "E_Protector", "E_Venator"}
PlataformaCe_re2 = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "IA_E_Valiant", "IA_E_VictorII"}
PlataformaCe_re3 = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "IA_EV_Med_CRU", "IA_EV_Med_CRU"}
PlataformaCcw_re = {"Rep_NabooBomber_SquadronB", "Rep_NabooFighterSquadronB", "Rep_Med_CRU", "Rep_Venator"}
PlataformaCcwcis_re = {"CIS_Mankvim814_Squadron", "Belbullab22_Squadron", "CIS_TU_SD", "CIS_MunificentClan"}
PlataformaCevf_re = {"GA_Crossfire_Squadron", "GA_Ionizer_Squadron", "GA_Krakana", "GA_Krakana"}
PlataformaCevk_re = {"CIS_Mankvim814_Squadron", "Belbullab22_Squadron", "CIS_TU_SD", "CIS_MunificentClan"}

SearchC_re = {"SearchShip"}
SearchC_rcw = {"REP_Stealthship"}

TedarocSB_re = {"TIE_Fighter_Squadron", "TIE_Interceptor_Squadron", "VSD2T", "TIE_Bomber_Squadron"}
TedarocSBR_re = {"Rebel_X-Wing_Squadron", "A_Wing_Squadron", "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron"}
TedarocSBU_re = {"Underworld_Pirate_Fighter_Squadron", "BS_Lt_Fighter_Squadron", "BS_Med_Fighter_Squadron", "BS_Med_Fighter_Squadron"}
TedarocSBPi_re = {"RazorfighterU_Squadron", "IrdfighterU_Squadron", "Hu_Med_Fighter_Squadron", "Hu_Hvy_Fighter_Squadron"}
TedarocSBRep_re = {"Rep_TIE_Squadron", "Rep_TIE_Squadron", "Rep_Y_Wing_Squadron", "Rep_Y_Wing_Squadron"}
TedarocSBCIS_re = {"CIS_Vulture_Squadron", "CIS_Tridroid_Squadron", "CIS_Hyena_Squadron", "CIS_Hyena_Squadron"}
TedarocSBEVF_re = {"GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_B22_Squadron", "GA_Ionizer_Squadron"}
TedarocSBEVK_re = {"EVK_TIE_Reaper_Squadron", "EVK_TIE_Reaper_Squadron", "EVK_TIE_Predator_Squadron", "EVK_TIE_Predator_Squadron"}

Neutral_01_re = {"Jedi_Cruiser", "Jedi_Cruiser", "Jedi_Cruiser", "Jedi_Cruiser", "Jedi_Cruiser"}
Neutral_02_re = {"Hu_Hvy_BattleCRUI", "Hu_Hutt_CorvetteR", "Hutts_Cruiser", "Hu_Hvy_BattleCRUII", "Hutts_Heavy_Cruiser"}
Neutral_03_re = {"CIS_Munificent", "CIS_Recusant", "CIS_LucrehulkC", "CIS_LucrehulkB02", "CIS_TU_SD"}
Neutral_04_re = {"Rep_Carrack", "Rep_Marauder", "Jedi_Cruiser", "Rep_Thranta", "Rep_Trireme"}
Neutral_05_re = {"Rep_Vainglorious", "Rep_Praetor", "Rep_RandEcliptic", "Rep_MandatorI", "Rep_Valiant"}
Neutral_06_re = {"BS_Jehavey_Frg", "BS_Jehavey_Frg", "BS_Kyramud", "BS_Mand_CRU01", "BS_Mand_CRU02"}
Neutral_07_re = {"BS_Leviathan", "BS_Invincible", "P_Dreadnought", "Jedi_Cruiser", "BS_Thranta"}
Neutral_08_re = {"CIS_LucrehulkD", "CIS_Missile_Frg", "CIS_Recusant_PSD", "CIS_TU_SD", "CIS_Sabaoth"}
Neutral_09_re = {"BS_CR_Frg", "CR_SDI", "BS_CR_Lto_Frg", "BS_CR_Frg", "BS_CR_Lto_Frg"}

Scarif_E_re = {"TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB"}
Scarif_R_re = {"Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB", "Rebel_X-Wing_SquadronB"}
Scarif_U_re = {"BS_Med_Fighter_SquadronB", "BS_Med_Fighter_SquadronB", "BS_Med_Fighter_SquadronB", "BS_Med_Fighter_SquadronB", "BS_Med_Fighter_SquadronB"}
Scarif_HU_re = {"HuMed_Fighter_SquadronB", "HuMed_Fighter_SquadronB", "HuMed_Fighter_SquadronB", "HuMed_Fighter_SquadronB", "HuMed_Fighter_SquadronB"}
Scarif_REP_re = {"REP_VWing_SquadronB", "REP_VWing_SquadronB", "REP_VWing_SquadronB", "REP_VWing_SquadronB", "REP_VWing_SquadronB"}
Scarif_CIS_re = {"CIS_Tridroid_SquadronB", "CIS_Tridroid_SquadronB", "CIS_Tridroid_SquadronB", "CIS_Tridroid_SquadronB", "CIS_Tridroid_SquadronB"}
Scarif_CH_re = {"Ch_TIE_Claw_SquadronB", "Ch_TIE_Claw_SquadronB", "Ch_TIE_Claw_SquadronB", "Ch_TIE_Claw_SquadronB", "Ch_TIE_Claw_SquadronB"}
Scarif_EVF_re = {"EVF_TIE_Predator_SquadronB", "EVF_TIE_Predator_SquadronB", "EVF_TIE_Predator_SquadronB", "EVF_TIE_Predator_SquadronB", "EVF_TIE_Predator_SquadronB"}
Scarif_EVK_re = {"EVK_TIE_Predator_SquadronB", "EVK_TIE_Predator_SquadronB", "EVK_TIE_Predator_SquadronB", "EVK_TIE_Predator_SquadronB", "EVK_TIE_Predator_SquadronB"}
Scarif_CO_re = {"Co_Irdfighter_SquadronB", "Co_Irdfighter_SquadronB", "Co_Irdfighter_SquadronB", "Co_Irdfighter_SquadronB", "Co_Irdfighter_SquadronB"}
Scarif_HA_re = {"Ha_MIYTILFIGHTER_SquadronB", "Ha_MIYTILFIGHTER_SquadronB", "Ha_MIYTILFIGHTER_SquadronB", "Ha_MIYTILFIGHTER_SquadronB", "Ha_MIYTILFIGHTER_SquadronB"}
Scarif_EVFO_re = {"TIE_Fighter_FO_SquadronB", "TIE_Fighter_FO_SquadronB", "TIE_Fighter_FO_SquadronB", "TIE_Fighter_FO_SquadronB", "TIE_Fighter_FO_SquadronB"}
Scarif_RVRE_re = {"R_XwingT70_SquadronB", "R_XwingT70_SquadronB", "R_XwingT70_SquadronB", "R_XwingT70_SquadronB", "R_XwingT70_SquadronB"}
Scarif_GA_re = {"TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB", "TIE_Fighter_SquadronB"}
Scarif_GAC_re = {"Hu_Laf_250_SquadronB", "Hu_Laf_250_SquadronB", "Hu_Laf_250_SquadronB", "Hu_Laf_250_SquadronB", "Hu_Laf_250_SquadronB"}

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Pirates_Bando = Find_Player("Pirates")
BlackSun_Bando = Find_Player("Underworld")
CIS_Bando = Find_Player("CIS")
Republic_Bando = Find_Player("Republic")
Krayt_Bando = Find_Player("Krayt")
Fel_Bando = Find_Player("Fel")
Hapan_Bando = Find_Player("Hapan")
Corporate_Bando = Find_Player("Corporate")
Chiss_Bando = Find_Player("Chiss")
Hutts_Bando = Find_Player("Hutts")
EVFO_Bando = Find_Player("EVFO")
RVRE_Bando = Find_Player("RVRE")
GA_Bando = Find_Player("GA")
GAC_Bando = Find_Player("GAC")
		
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
		
		CISUnits = Find_First_Object("CIS_Comm_Ship_SB")
		RebelUnits = Find_First_Object("R_Comm_Ship_SB")
		EmpireUnits = Find_First_Object("E_Comm_Ship_SB")
		RepublicUnits = Find_First_Object("Rep_Comm_Ship_SB")
		FelUnits = Find_First_Object("EVF_Comm_Ship_SB") 
		KraytUnits = Find_First_Object("EVK_Comm_Ship_SB") 
		
	end
	
	
	
	if message == OnEnter then
				
				Plataforma1 = Find_First_Object("Plattform1")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Plataforma1 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Plataforma1r_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Plataforma1cwcis_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Plataforma1evf_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma1 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Plataforma1e_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma1 and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Plataforma1cw_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma1 and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Plataforma1evk_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif Plataforma1 and friendly_player == Pirates_Bando then
         				grupo_03A = SpawnList(Plataforma1cw_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_03A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == BlackSun_Bando then
         				grupo_04A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_04A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == Hapan_Bando then
         				grupo_04A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_04A) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma1 and friendly_player == Corporate_Bando then
         				grupo_04A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_04A) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma1 and friendly_player == Chiss_Bando then
         				grupo_04A = SpawnList(Plataforma1_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_04A) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma1 and friendly_player == Hutts_Bando then
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
         				grupo_07A = SpawnList(Plataforma1evf_re, Plataforma1, friendly_player, true, false)
						for i,unit in pairs(grupo_07A) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma1 and friendly_player == Krayt_Bando then
         				grupo_08A = SpawnList(Plataforma1evk_re, Plataforma1, friendly_player, true, false)
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
				
				if Plataforma2 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Plataforma2r_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Plataforma2cwcis_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Plataforma2evf_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma2 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Plataforma2e_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma2 and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Plataforma2cw_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma2 and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Plataforma2evk_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif Plataforma2 and friendly_player == Pirates_Bando then
         				grupo_03B = SpawnList(Plataforma1cw_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_03B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == BlackSun_Bando then
         				grupo_04B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_04B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == Hapan_Bando then
         				grupo_04B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_04B) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma2 and friendly_player == Corporate_Bando then
         				grupo_04B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_04B) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma2 and friendly_player == Chiss_Bando then
         				grupo_04B = SpawnList(Plataforma2_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_04B) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif Plataforma2 and friendly_player == Hutts_Bando then
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
         				grupo_07B = SpawnList(Plataforma2evf_re, Plataforma2, friendly_player, true, false)
						for i,unit in pairs(grupo_07B) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma2 and friendly_player == Krayt_Bando then
         				grupo_08B = SpawnList(Plataforma2evk_re, Plataforma2, friendly_player, true, false)
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
				
				if Plataforma3 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Plataforma3r_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Plataforma3cwcis_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Plataforma3evf_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma3 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Plataforma3e_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma3 and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Plataforma3cw_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma3 and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Plataforma3evk_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif Plataforma3 and friendly_player == Pirates_Bando then
         				grupo_03C = SpawnList(Plataforma3cw_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_03C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == BlackSun_Bando then
         				grupo_04C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_04C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Hapan_Bando then
         				grupo_04C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_04C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Corporate_Bando then
         				grupo_04C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_04C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Chiss_Bando then
         				grupo_04C = SpawnList(Plataforma3_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_04C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Hutts_Bando then
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
         				grupo_07C = SpawnList(Plataforma3evf_re, Plataforma3, friendly_player, true, false)
						for i,unit in pairs(grupo_07C) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma3 and friendly_player == Krayt_Bando then
         				grupo_08C = SpawnList(Plataforma3evk_re, Plataforma3, friendly_player, true, false)
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
				
				if Plataforma4 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01D = SpawnList(Plataforma4r_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_01D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_01D = SpawnList(Plataforma4cwcis_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_01D) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma4 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_01D = SpawnList(Plataforma4evf_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_01D) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif Plataforma4 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02D = SpawnList(Plataforma4e_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_02D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_02D = SpawnList(Plataforma4cw_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_02D) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma4 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_02D = SpawnList(Plataforma4evk_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_02D) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma4 and friendly_player == Pirates_Bando then
         				grupo_03D = SpawnList(Plataforma4cw_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_03D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == BlackSun_Bando then
         				grupo_04D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_04D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Hapan_Bando then
         				grupo_04D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_04D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Corporate_Bando then
         				grupo_04D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_04D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Chiss_Bando then
         				grupo_04D = SpawnList(Plataforma4_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_04D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Hutts_Bando then
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
         				grupo_07D = SpawnList(Plataforma4evf_re, Plataforma4, friendly_player, true, false)
						for i,unit in pairs(grupo_07D) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma4 and friendly_player == Krayt_Bando then
         				grupo_08D = SpawnList(Plataforma4evk_re, Plataforma4, friendly_player, true, false)
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
				
				if Plataforma5 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01E = SpawnList(Plataforma5r_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_01E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_01E = SpawnList(Plataforma5cwcis_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_01E) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma5 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_01E = SpawnList(Plataforma5evf_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_01E) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma5 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02E = SpawnList(Plataforma5e_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_02E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_02E = SpawnList(Plataforma5cw_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_02E) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma5 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_02E = SpawnList(Plataforma5evk_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_02E) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma5 and friendly_player == Pirates_Bando then
         				grupo_03E = SpawnList(Plataforma5cw_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_03E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == BlackSun_Bando then
         				grupo_04E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_04E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Hapan_Bando then
         				grupo_04E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_04E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Corporate_Bando then
         				grupo_04E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_04E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Chiss_Bando then
         				grupo_04E = SpawnList(Plataforma5_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_04E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Hutts_Bando then
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
         				grupo_07E = SpawnList(Plataforma5evf_re, Plataforma5, friendly_player, true, false)
						for i,unit in pairs(grupo_07E) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma5 and friendly_player == Krayt_Bando then
         				grupo_08E = SpawnList(Plataforma5evk_re, Plataforma5, friendly_player, true, false)
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
				
				if Plataforma6 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Plataforma6r_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Plataforma6cwcis_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Plataforma6evf_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma6 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Plataforma6e_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Plataforma6 and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Plataforma6cw_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Plataforma6 and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Plataforma6evk_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Plataforma6 and friendly_player == Hapan_Bando then
         				grupo_04F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_04F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == Corporate_Bando then
         				grupo_04F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_04F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == Chiss_Bando then
         				grupo_04F = SpawnList(Plataforma6_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_04F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == Hutts_Bando then
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
         				grupo_07F = SpawnList(Plataforma6evf_re, Plataforma6, friendly_player, true, false)
						for i,unit in pairs(grupo_07F) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Plataforma6 and friendly_player == Krayt_Bando then
         				grupo_09F = SpawnList(Plataforma6evk_re, Plataforma6, friendly_player, true, false)
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
				
				if Corsec_Station and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Corsec_Stationcwcis_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Corsec_Stationevf_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Corsec_Station and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Corsec_Station and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Corsec_Stationcw_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Corsec_Station and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Corsec_Stationevk_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Corsec_Station and friendly_player == Hapan_Bando then
         				grupo_04G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_04G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == Corporate_Bando then
         				grupo_04G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_04G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == Chiss_Bando then
         				grupo_04G = SpawnList(Corsec_Station_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_04G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == Hutts_Bando then
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
         				grupo_07G = SpawnList(Corsec_Stationevf_re, Corsec_Station, friendly_player, true, false)
						for i,unit in pairs(grupo_07G) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Corsec_Station and friendly_player == Krayt_Bando then
         				grupo_08G = SpawnList(Corsec_Stationevk_re, Corsec_Station, friendly_player, true, false)
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
				
				if Icom_Factory and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(factory_icom_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(factory_icomcwcis_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(factory_icomevf_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Icom_Factory and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(factory_icom_e_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Icom_Factory and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(factory_icomcw_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Icom_Factory and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(factory_icomevk_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Icom_Factory and friendly_player == Hapan_Bando then
         				grupo_03H = SpawnList(factory_icom_bs_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03H) do
							unit.Cinematic_Hyperspace_In(1)
						end						
				elseif Icom_Factory and friendly_player == Corporate_Bando then
         				grupo_03H = SpawnList(factory_icom_bs_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == Chiss_Bando then
         				grupo_03H = SpawnList(factory_icom_bs_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_03H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == Hutts_Bando then
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
         				grupo_06H = SpawnList(factory_icomevf_re, Icom_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_06H) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Icom_Factory and friendly_player == Krayt_Bando then
         				grupo_07H = SpawnList(factory_icomevk_re, Icom_Factory, friendly_player, true, false)
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
				
				if Factory and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(factory_r_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(factory_cwcis_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(factory_evf_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Factory and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(factory_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Factory and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(factory_cw_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Factory and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Factorye_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Factory and friendly_player == Hapan_Bando then
         				grupo_04I = SpawnList(factory_bs_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == Corporate_Bando then
         				grupo_04I = SpawnList(factory_bs_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == Chiss_Bando then
         				grupo_04I = SpawnList(factory_bs_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == Hutts_Bando then
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
         				grupo_07I = SpawnList(factory_evf_re, Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07I) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Factory and friendly_player == Krayt_Bando then
         				grupo_08I = SpawnList(factory_evk_re, Factory, friendly_player, true, false)
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
				
				if Soorub_Factory and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(factory_soorubcwcis_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(factory_soorubevf_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Soorub_Factory and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(factory_soorub_e_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Soorub_Factory and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(factory_soorubcw_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Soorub_Factory and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(factory_soorubevk_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Soorub_Factory and friendly_player == Hapan_Bando then
         				grupo_04J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == Corporate_Bando then
         				grupo_04J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == Chiss_Bando then
         				grupo_04J = SpawnList(factory_soorub_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == Hutts_Bando then
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
         				grupo_07J = SpawnList(factory_soorub_evf_re, Soorub_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07J) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Soorub_Factory and friendly_player == Krayt_Bando then
         				grupo_08J = SpawnList(factory_soorub_evk_re, Soorub_Factory, friendly_player, true, false)
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
				
				if Koen_Factory and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(factory_koen_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(factory_koencwcis_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(factory_koenevf_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Koen_Factory and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(factory_koen_e_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif Koen_Factory and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(factory_koencw_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif Koen_Factory and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(factory_koenevk_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif Koen_Factory and friendly_player == Hapan_Bando then
         				grupo_04K = SpawnList(factory_koen_bs_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == Corporate_Bando then
         				grupo_04K = SpawnList(factory_koen_bs_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == Chiss_Bando then
         				grupo_04K = SpawnList(factory_koen_bs_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_04K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == Hutts_Bando then
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
         				grupo_07K = SpawnList(factory_koenevf_re, Koen_Factory, friendly_player, true, false)
						for i,unit in pairs(grupo_07K) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif Koen_Factory and friendly_player == Krayt_Bando then
         				grupo_08K = SpawnList(factory_koenevk_re, Koen_Factory, friendly_player, true, false)
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
				
				if hangar_container and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01L = SpawnList(hangar_container_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_01L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_02L = SpawnList(hangar_container_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_02L) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif hangar_container and friendly_player == Empire_Bando and EmpireUnits then
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
				elseif hangar_container and friendly_player == Hapan_Bando then
         				grupo_05L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_05L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_06L) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif hangar_container and friendly_player == Corporate_Bando then
         				grupo_05L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_05L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_06L) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif hangar_container and friendly_player == Chiss_Bando then
         				grupo_05L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_05L) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06L = SpawnList(hangar_container_bs_re, hangar_container, friendly_player, true, false)
						for i,unit in pairs(grupo_06L) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif hangar_container and friendly_player == Hutts_Bando then
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
				
				if xq3 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01M = SpawnList(xq3_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_01M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_02M = SpawnList(xq3_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_02M) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif xq3 and friendly_player == Empire_Bando and EmpireUnits then
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
				elseif xq3 and friendly_player == Hapan_Bando then
         				grupo_05M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_05M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_06M) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif xq3 and friendly_player == Corporate_Bando then
         				grupo_05M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_05M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_06M) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif xq3 and friendly_player == Chiss_Bando then
         				grupo_05M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_05M) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_06M = SpawnList(xq3_bs_re, xq3, friendly_player, true, false)
						for i,unit in pairs(grupo_06M) do
							unit.Cinematic_Hyperspace_In(1)
						end							
				elseif xq3 and friendly_player == Hutts_Bando then
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
				
				if vergessoas and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(Plataforma1r_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(Plataforma1cwcis_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(Plataforma1evf_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif vergessoas and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(Plataforma1e_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif vergessoas and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(Plataforma1cw_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif vergessoas and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(Plataforma1evk_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif vergessoas and friendly_player == Hapan_Bando then
         				grupo_04N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_04N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == Corporate_Bando then
         				grupo_04N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_04N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == Chiss_Bando then
         				grupo_04N = SpawnList(Plataforma1_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_04N) do
							unit.Cinematic_Hyperspace_In(1)
						end			
				elseif vergessoas and friendly_player == Hutts_Bando then
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
         				grupo_07N = SpawnList(Plataforma1evf_re, vergessoas, friendly_player, true, false)
						for i,unit in pairs(grupo_07N) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif vergessoas and friendly_player == Krayt_Bando then
         				grupo_08N = SpawnList(Plataforma1evk_re, vergessoas, friendly_player, true, false)
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
				
				if PlataformaC and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(PlataformaCr_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(PlataformaCcwcis_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif PlataformaC and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(PlataformaCevf_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif PlataformaC and friendly_player == Empire_Bando and EmpireUnits then
						if chances == nil then	
						chances = GameRandom(1, 3)
							if chances == 1 then
								grupo_02C = SpawnList(PlataformaCe_re, PlataformaC, friendly_player, true, false)
								for i,unit in pairs(grupo_02C) do
									unit.Cinematic_Hyperspace_In(1)
								end
								chances = 7
							end
							if chances == 2 then
								grupo_02C = SpawnList(PlataformaCe_re2, PlataformaC, friendly_player, true, false)
								for i,unit in pairs(grupo_02C) do
									unit.Cinematic_Hyperspace_In(1)
								end
								chances = 7
							end
							if chances == 3 then
								grupo_02C = SpawnList(PlataformaCe_re3, PlataformaC, friendly_player, true, false)
								for i,unit in pairs(grupo_02C) do
									unit.Cinematic_Hyperspace_In(1)
								end
								chances = 7
							end	
						end			
				elseif PlataformaC and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(PlataformaCcw_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif PlataformaC and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(PlataformaCevk_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif PlataformaC and friendly_player == Hapan_Bando then
         				grupo_04O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_04O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == Corporate_Bando then
         				grupo_04O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_04O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == Chiss_Bando then
         				grupo_04O = SpawnList(PlataformaC_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_04O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == Hutts_Bando then
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
         				grupo_07O = SpawnList(PlataformaCevf_re, PlataformaC, friendly_player, true, false)
						for i,unit in pairs(grupo_07O) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif PlataformaC and friendly_player == Krayt_Bando then
         				grupo_08O = SpawnList(PlataformaCevk_re, PlataformaC, friendly_player, true, false)
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
				
				if SearchCe and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_01C = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Rebel_Bando and CISUnits then
						grupo_01C = SpawnList(SearchC_rcw, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Rebel_Bando and FelUnits then
						grupo_01C = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif SearchCe and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_02C = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_02C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif SearchCe and friendly_player == Empire_Bando and RepublicUnits then
						grupo_01C = SpawnList(SearchC_rcw, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif SearchCe and friendly_player == Empire_Bando and KraytUnits then
						grupo_01C = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_01C) do
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
				elseif SearchCe and friendly_player == Hapan_Bando then
         				grupo_04P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_04P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == Corporate_Bando then
         				grupo_04P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_04P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == Chiss_Bando then
         				grupo_04P = SpawnList(SearchC_re, SearchCe, friendly_player, true, false)
						for i,unit in pairs(grupo_04P) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif SearchCe and friendly_player == Hutts_Bando then
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
				
				if TedarocSB1 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB1 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB1 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB1 and friendly_player == BlackSun_Bando then
         				grupo_03Q = SpawnList(TedarocSBU_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_03Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Hapan_Bando then
         				grupo_03Q = SpawnList(TedarocSBU_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_03Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Corporate_Bando then
         				grupo_03Q = SpawnList(TedarocSBU_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_03Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Chiss_Bando then
         				grupo_03Q = SpawnList(TedarocSBU_re, TedarocSB1, friendly_player, true, false)
						for i,unit in pairs(grupo_03Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB1 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB2 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB2 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB2 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB2 and friendly_player == BlackSun_Bando then
         				grupo_03R = SpawnList(TedarocSBU_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_03R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Hapan_Bando then
         				grupo_03R = SpawnList(TedarocSBU_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_03R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Corporate_Bando then
         				grupo_03R = SpawnList(TedarocSBU_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_03R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Chiss_Bando then
         				grupo_03R = SpawnList(TedarocSBU_re, TedarocSB2, friendly_player, true, false)
						for i,unit in pairs(grupo_03R) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB2 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB3 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB3 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB3 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB3 and friendly_player == BlackSun_Bando then
         				grupo_03S = SpawnList(TedarocSBU_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_03S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Hapan_Bando then
         				grupo_03S = SpawnList(TedarocSBU_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_03S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Corporate_Bando then
         				grupo_03S = SpawnList(TedarocSBU_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_03S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Chiss_Bando then
         				grupo_03S = SpawnList(TedarocSBU_re, TedarocSB3, friendly_player, true, false)
						for i,unit in pairs(grupo_03S) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB3 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB4 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB4 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB4 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB4 and friendly_player == BlackSun_Bando then
         				grupo_03T = SpawnList(TedarocSBU_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_03T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Hapan_Bando then
         				grupo_03T = SpawnList(TedarocSBU_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_03T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Corporate_Bando then
         				grupo_03T = SpawnList(TedarocSBU_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_03T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Chiss_Bando then
         				grupo_03T = SpawnList(TedarocSBU_re, TedarocSB4, friendly_player, true, false)
						for i,unit in pairs(grupo_03T) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB4 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB5 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB5 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB5 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB5 and friendly_player == BlackSun_Bando then
         				grupo_03 = SpawnList(TedarocSBU_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_03) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Hapan_Bando then
         				grupo_03 = SpawnList(TedarocSBU_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_03) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Corporate_Bando then
         				grupo_03 = SpawnList(TedarocSBU_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_03) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Chiss_Bando then
         				grupo_03 = SpawnList(TedarocSBU_re, TedarocSB5, friendly_player, true, false)
						for i,unit in pairs(grupo_03) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB5 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB6 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB6 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB6 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB6 and friendly_player == BlackSun_Bando then
         				grupo_03V = SpawnList(TedarocSBU_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_03V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Hapan_Bando then
         				grupo_03V = SpawnList(TedarocSBU_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_03V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Corporate_Bando then
         				grupo_03V = SpawnList(TedarocSBU_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_03V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Chiss_Bando then
         				grupo_03V = SpawnList(TedarocSBU_re, TedarocSB6, friendly_player, true, false)
						for i,unit in pairs(grupo_03V) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB6 and friendly_player == Hutts_Bando then
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
				
				if TedarocSB7 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB7 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB7 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB7 and friendly_player == BlackSun_Bando then
         				grupo_03W = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_03W) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Hapan_Bando then
         				grupo_02Q = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Corporate_Bando then
         				grupo_02Q = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Chiss_Bando then
         				grupo_02Q = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB7 and friendly_player == Hutts_Bando then
         				grupo_02Q = SpawnList(TedarocSBU_re, TedarocSB7, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
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
				
				if TedarocSB8 and friendly_player == Empire_Bando and EmpireUnits then
         				grupo_01Q = SpawnList(TedarocSB_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Empire_Bando and RepublicUnits then
         				grupo_01Q = SpawnList(TedarocSBRep_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif TedarocSB8 and friendly_player == Empire_Bando and KraytUnits then
         				grupo_01Q = SpawnList(TedarocSBEVK_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_01Q) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif TedarocSB8 and friendly_player == Rebel_Bando and RebelUnits then
         				grupo_02Q = SpawnList(TedarocSBR_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Rebel_Bando and CISUnits then
         				grupo_02Q = SpawnList(TedarocSBCIS_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Rebel_Bando and FelUnits then
         				grupo_02Q = SpawnList(TedarocSBEVF_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_02Q) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif TedarocSB8 and friendly_player == BlackSun_Bando then
         				grupo_03Y = SpawnList(TedarocSBU_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_03Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Hapan_Bando then
         				grupo_03Y = SpawnList(TedarocSBU_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_03Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Corporate_Bando then
         				grupo_03Y = SpawnList(TedarocSBU_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_03Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Chiss_Bando then
         				grupo_03Y = SpawnList(TedarocSBU_re, TedarocSB8, friendly_player, true, false)
						for i,unit in pairs(grupo_03Y) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif TedarocSB8 and friendly_player == Hutts_Bando then
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
	if message == OnEnter then
				
				Neutral_Nav1 = Find_First_Object("Neutral_Nav1")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav1 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav1_A = SpawnList(Neutral_01_re, Neutral_Nav1, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav1_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav1_B = SpawnList(Neutral_01_re, Neutral_Nav1, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav1_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav1_C = SpawnList(Neutral_01_re, Neutral_Nav1, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav1_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav2 = Find_First_Object("Neutral_Nav2")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav2 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav2_A = SpawnList(Neutral_02_re, Neutral_Nav2, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav2_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav2_B = SpawnList(Neutral_02_re, Neutral_Nav2, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav2_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav2_C = SpawnList(Neutral_02_re, Neutral_Nav2, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav2_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav3 = Find_First_Object("Neutral_Nav3")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav3 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav3_A = SpawnList(Neutral_03_re, Neutral_Nav3, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav3_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav3_B = SpawnList(Neutral_03_re, Neutral_Nav3, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav3_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav3_C = SpawnList(Neutral_03_re, Neutral_Nav3, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav3_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav4 = Find_First_Object("Neutral_Nav4")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav4 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav4_A = SpawnList(Neutral_04_re, Neutral_Nav4, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav4_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav4_B = SpawnList(Neutral_04_re, Neutral_Nav4, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav4_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav4_C = SpawnList(Neutral_04_re, Neutral_Nav4, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav4_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav5 = Find_First_Object("Neutral_Nav5")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav5 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav5_A = SpawnList(Neutral_05_re, Neutral_Nav5, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav5_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav5_B = SpawnList(Neutral_05_re, Neutral_Nav5, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav5_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav5_C = SpawnList(Neutral_05_re, Neutral_Nav5, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav5_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav6 = Find_First_Object("Neutral_Nav6")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav6 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav6_A = SpawnList(Neutral_06_re, Neutral_Nav6, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav6_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav6_B = SpawnList(Neutral_06_re, Neutral_Nav6, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav6_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav6_C = SpawnList(Neutral_06_re, Neutral_Nav6, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav6_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav7 = Find_First_Object("Neutral_Nav7")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav7 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav7_A = SpawnList(Neutral_07_re, Neutral_Nav7, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav7_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav7_B = SpawnList(Neutral_07_re, Neutral_Nav7, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav7_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav7_C = SpawnList(Neutral_07_re, Neutral_Nav7, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav7_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav8 = Find_First_Object("Neutral_Nav8")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav8 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav8_A = SpawnList(Neutral_08_re, Neutral_Nav8, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav8_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav8_B = SpawnList(Neutral_08_re, Neutral_Nav8, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav8_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav8_C = SpawnList(Neutral_08_re, Neutral_Nav8, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav8_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				Neutral_Nav9 = Find_First_Object("Neutral_Nav9")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_Nav9 and friendly_player == Pirates_Bando then
         				grupo_Neutral_Nav9_A = SpawnList(Neutral_08_re, Neutral_Nav9, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav9_A) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav9_B = SpawnList(Neutral_08_re, Neutral_Nav9, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav9_B) do
							unit.Cinematic_Hyperspace_In(1)
						end
						grupo_Neutral_Nav9_C = SpawnList(Neutral_08_re, Neutral_Nav9, friendly_player, true, false)
						for i,unit in pairs(grupo_Neutral_Nav9_C) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	if message == OnEnter then
				
				ScarifStation = Find_First_Object("E_Shield_Gate")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if ScarifStation and friendly_player == Empire_Bando then
         				grupo_01SCF = SpawnList(Scarif_E_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_01SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Rebel_Bando then
         				grupo_02SCF = SpawnList(Scarif_R_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_02SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end		
				elseif ScarifStation and friendly_player == BlackSun_Bando then
         				grupo_03SCF = SpawnList(Scarif_U_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_03SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif ScarifStation and friendly_player == Hutts_Bando then
         				grupo_04SCF = SpawnList(Scarif_HU_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_04SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Republic_Bando then
         				grupo_5SCF = SpawnList(Scarif_REP_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_5SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == CIS_Bando then
         				grupo_6SCF = SpawnList(Scarif_CIS_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_6SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end	
				elseif ScarifStation and friendly_player == Chiss_Bando then
         				grupo_7SCF = SpawnList(Scarif_CH_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_7SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Fel_Bando then
         				grupo_8SCF = SpawnList(Scarif_EVF_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_8SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Krayt_Bando then
         				grupo_9SCF = SpawnList(Scarif_EVK_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_9SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Corporate_Bando then
         				grupo_10SCF = SpawnList(Scarif_CO_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_10SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == Hapan_Bando then
         				grupo_11SCF = SpawnList(Scarif_HA_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_11SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end				
				elseif ScarifStation and friendly_player == EVFO_Bando then
         				grupo_12SCF = SpawnList(Scarif_EVFO_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_12SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == RVRE_Bando then
         				grupo_13SCF = SpawnList(Scarif_RVRE_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_13SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == GA_Bando then
         				grupo_14SCF = SpawnList(Scarif_GA_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_14SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				elseif ScarifStation and friendly_player == GAC then
         				grupo_15SCF = SpawnList(Scarif_GAc_re, ScarifStation, friendly_player, true, false)
						for i,unit in pairs(grupo_15SCF) do
							unit.Cinematic_Hyperspace_In(1)
						end
				end
				Sleep(1)
	end
	Sleep(5)
	ScriptExit()
end




