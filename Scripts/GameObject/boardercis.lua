--Boarding and destroy enemy spaceships script
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

   -- Object isn't valid at this point so don't do any operations that
   -- would require it.  State_Init is the first chance you have to do
   -- operations on Object
	   
	DebugMessage("%s -- In Definitions", tostring(Script))
			
	Define_State("State_Init", State_Init);
		
		sd_found = false
		acc_found = false
		vd_found = false
		ic_found = false
		ec_found = false
		isc_found = false
		sd3_found = false
		mcc_found = false
		tpc_found = false
		hd_found = false
		sdd_found = false
		ad_found = false
		vd3_found = false
		vd2_found = false
		sc_found = false
		iec_found = false
		sd2_found = false
		cc_found = false
		nb_found = false
		b2e_found = false
		empire = Find_Player("Rebel")
		rebel = Find_Player("Empire")
		boarder = Find_First_Object("Alliance_Shuttle")
		
		acc_target = Find_First_Object("REP_Corellian_Corvette")
		sd_target = Find_First_Object("REP_Modified_Corellian_Corvette")
		vd_target = Find_First_Object("IMP_Corellian_Gunboat")
		ic_target = Find_First_Object("REP_Dreadnought")
		ec_target = Find_First_Object("REP_Old_Corellian_Frigate")
		isc_target = Find_First_Object("REP_CR2200_Corvette")
		sd3_target = Find_First_Object("REP_Radiant7")
		mcc_target = Find_First_Object("REP_HAMMERHEAD")
		tpc_target = Find_First_Object("REP_VictorIICruiser")
		hd_target = Find_First_Object("REP_AcclamatorMKI_Assault_Ship")
		sdd_target = Find_First_Object("REP_Carrack_Cruiser")
		ad_target = Find_First_Object("REP_AcclamatorMKII_Assault_Ship")
		vd3_target = Find_First_Object("Jedi_Cruiser_REP")
		vd2_target = Find_First_Object("REP_Valiant_Cruiser")
		sc_target = Find_First_Object("REP_Procurator_Heavy_Cruiser")
		iec_target = Find_First_Object("REP_RandEcliptic_Cruiser")
		sd2_target = Find_First_Object("Rep_Legacy_Destroyer")
		cc_target = Find_First_Object("Rep_Protector_Destroyer")
		nb_target = Find_First_Object("REP_Victory_Destroyer")
		b2e_target = Find_First_Object("Rep_Vainglorious")
		victory_assured = false
end


function State_Init(message)
		
		success_chance = GameRandom(1, 10)
		
		if success_chance > 6 then
			victory_assured = true
		else
			victory_assured = false
			Game_Message("A_SD_ELOSS")
		end
		
		if TestValid(sd_target) and sd_target.Get_Owner() == rebel then
			sd_found = true
		end
		
		if TestValid(acc_target) and acc_target.Get_Owner() == rebel then
			acc_found = true
		end

		if TestValid(vd_target) and vd_target.Get_Owner() == rebel then
			vd_found = true
		end
		
		if TestValid(ic_target) and ic_target.Get_Owner() == rebel then
			ic_found = true
		end
		
		if TestValid(ec_target) and ec_target.Get_Owner() == rebel then
			ec_found = true
		end
		
		if TestValid(isc_target) and isc_target.Get_Owner() == rebel then
			isc_found = true
		end
		
		if TestValid(sd3_target) and sd3_target.Get_Owner() == rebel then
			sd3_found = true
		end
		
		if TestValid(mcc_target) and mcc_target.Get_Owner() == rebel then
			mcc_found = true
		end
		
		if TestValid(tpc_target) and tpc_target.Get_Owner() == rebel then
			tpc_found = true
		end
		
		if TestValid(hd_target) and hd_target.Get_Owner() == rebel then
			hd_found = true
		end
		
		if TestValid(sdd_target) and sdd_target.Get_Owner() == rebel then
			sdd_found = true
		end
		
		if TestValid(ad_target) and ad_target.Get_Owner() == rebel then
			ad_found = true
		end
		
		if TestValid(vd3_target) and vd3_target.Get_Owner() == rebel then
			vd3_found = true
		end
		
		if TestValid(vd2_target) and vd2_target.Get_Owner() == rebel then
			vd2_found = true
		end
		
		if TestValid(sc_target) and sc_target.Get_Owner() == rebel then
			sc_found = true
		end
		
		if TestValid(iec_target) and iec_target.Get_Owner() == rebel then
			iec_found = true
		end
		
		if TestValid(sd2_target) and sd2_target.Get_Owner() == rebel then
			sd2_found = true
		end
		
		if TestValid(cc_target) and cc_target.Get_Owner() == rebel then
			cc_found = true
		end
		
		if TestValid(nb_target) and nb_target.Get_Owner() == rebel then
			nb_found = true
		end
		
		if TestValid(b2e_target) and b2e_target.Get_Owner() == rebel then
			b2e_found = true
		end
	
		if sd_found == true and victory_assured == true then
			sd_target.Take_Damage(10001)
			Game_Message("A_CC_EVICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == true and victory_assured == true then
			vd_target.Take_Damage(10001)
			Game_Message("A_MCC_EVICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == false and ic_found == true and victory_assured == true then
			ic_target.Take_Damage(10001)
			Game_Message("A_CG_EVICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == false and ic_found == false and acc_found == true and victory_assured == true then
			acc_target.Take_Damage(10001)
			Game_Message("A_GP_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == true and victory_assured == true then
			ec_target.Take_Damage(10001)
			Game_Message("A_CPS_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == true and victory_assured == true then
			isc_target.Take_Damage(10001)
			Game_Message("A_CHG_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == true and victory_assured == true then
			sd3_target.Take_Damage(10001)
			Game_Message("A_RF_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == true and victory_assured == true then
			mcc_target.Take_Damage(10001)
			Game_Message("A_LCC_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == true and victory_assured == true then
			tpc_target.Take_Damage(10001)
			Game_Message("A_RC_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == true and victory_assured == true then
			hd_target.Take_Damage(10001)
			Game_Message("A_NB_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == true and victory_assured == true then
			sdd_target.Take_Damage(10001)
			Game_Message("A_AAF1_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == true and victory_assured == true then
			ad_target.Take_Damage(10001)
			Game_Message("A_NB2_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == true and victory_assured == true then
			vd3_target.Take_Damage(10001)
			Game_Message("A_CCR_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == true and victory_assured == true then
			vd2_target.Take_Damage(10001)
			Game_Message("A_RD_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == true and victory_assured == true then
			sc_target.Take_Damage(10001)
			Game_Message("A_AAF2_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == true and victory_assured == true then
			iec_target.Take_Damage(10001)
			Game_Message("A_RSC_EVICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == false and sd2_found == true and victory_assured == true then
			sd2_target.Take_Damage(10001)
			Game_Message("A_MC30_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == false and sd2_found == false and cc_found == true and victory_assured == true then
			cc_target.Take_Damage(10001)
			Game_Message("A_MC80_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == false and sd2_found == false and cc_found == false and nb_found == true and victory_assured == true then
			nb_target.Take_Damage(10001)
			Game_Message("A_MC80A_EVICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == false and sd2_found == false and cc_found == false and nb_found == false and b2e_found == true and victory_assured == true then
			b2e_target.Take_Damage(10001)
			Game_Message("A_DC_EVICTORY")
			ScriptExit()
		end		

		ScriptExit()
		
end

