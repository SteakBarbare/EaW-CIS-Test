--Boarding assault script
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
		acc_target = Find_First_Object("CONF_CIS_BOARDING")


		sd_target = Find_First_Object("Marauder_Corvette")
		vd_target = Find_First_Object("Rebel_Recusant_Patrol")
		ic_target = Find_First_Object("Rebel_Pirate_Munificent_Frigate")
		ec_target = Find_First_Object("Rebel_Recusant_Frigate")
		isc_target = Find_First_Object("CONF_Diamond_Frigate")
		sd3_target = Find_First_Object("C_Tecno_Cruiser")
		mcc_target = Find_First_Object("C_Lucrehulk_Cruiser")
		tpc_target = Find_First_Object("C_LucrehulkB_Cruiser")
		hd_target = Find_First_Object("C_LucrehulkDD_Cruiser")
		sdd_target = Find_First_Object("CONF_Tecno_Union_Destroyer")
		ad_target = Find_First_Object("C_Providence_Cruiser")
		vd3_target = Find_First_Object("BulwarkMKI_Cruiser")
		vd2_target = Find_First_Object("Rebel_Pinance_Frigate")
		sc_target = Find_First_Object("C_LucrehulkI_Interdictor_Cruiser")
		iec_target = Find_First_Object("C_Trafed_Missileship")
		victory_assured = false
end


function State_Init(message)
		
		success_chance = GameRandom(1, 10)
		
		if success_chance > 6 then
			victory_assured = true
		else
			victory_assured = false
			Game_Message("A_SD_LOSS")
		end
		
		if TestValid(sd_target) and sd_target.Get_Owner() == empire then
			sd_found = true
		end
		
		if TestValid(acc_target) and acc_target.Get_Owner() == empire then
			acc_found = true
		end

		if TestValid(vd_target) and vd_target.Get_Owner() == empire then
			vd_found = true
		end
		
		if TestValid(ic_target) and ic_target.Get_Owner() == empire then
			ic_found = true
		end
		
		if TestValid(ec_target) and ec_target.Get_Owner() == empire then
			ec_found = true
		end
		
		if TestValid(isc_target) and isc_target.Get_Owner() == empire then
			isc_found = true
		end
		
		if TestValid(sd3_target) and sd3_target.Get_Owner() == empire then
			sd3_found = true
		end
		
		if TestValid(mcc_target) and mcc_target.Get_Owner() == empire then
			mcc_found = true
		end
		
		if TestValid(tpc_target) and tpc_target.Get_Owner() == empire then
			tpc_found = true
		end
		
		if TestValid(hd_target) and hd_target.Get_Owner() == empire then
			hd_found = true
		end
		
		if TestValid(sdd_target) and sdd_target.Get_Owner() == empire then
			sdd_found = true
		end
		
		if TestValid(ad_target) and ad_target.Get_Owner() == empire then
			ad_found = true
		end
		
		if TestValid(vd3_target) and vd3_target.Get_Owner() == empire then
			vd3_found = true
		end
		
		if TestValid(vd2_target) and vd2_target.Get_Owner() == empire then
			vd2_found = true
		end
		
		if TestValid(sc_target) and sc_target.Get_Owner() == empire then
			sc_found = true
		end
		
		if TestValid(iec_target) and iec_target.Get_Owner() == empire then
			iec_found = true
		end
	
		if sd_found == true and victory_assured == true then
			sd_target.Change_Owner(rebel)
			Game_Message("A_SD_VICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == true and victory_assured == true then
			vd_target.Change_Owner(rebel)
			Game_Message("A_VD_VICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == false and ic_found == true and victory_assured == true then
			ic_target.Change_Owner(rebel)
			Game_Message("A_IC_VICTORY")
			ScriptExit()
		end

		if sd_found == false and vd_found == false and ic_found == false and acc_found == true and victory_assured == true then
			acc_target.Change_Owner(rebel)
			Game_Message("A_ACC_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == true and victory_assured == true then
			ec_target.Change_Owner(rebel)
			Game_Message("A_EC_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == true and victory_assured == true then
			isc_target.Change_Owner(rebel)
			Game_Message("A_ISC_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == true and victory_assured == true then
			sd3_target.Change_Owner(rebel)
			Game_Message("A_SD3_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == true and victory_assured == true then
			mcc_target.Change_Owner(rebel)
			Game_Message("A_MCC_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == true and victory_assured == true then
			tpc_target.Change_Owner(rebel)
			Game_Message("A_TPC_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == true and victory_assured == true then
			hd_target.Change_Owner(rebel)
			Game_Message("A_HD_VICTORY")
			ScriptExit()
		end
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == true and victory_assured == true then
			sdd_target.Change_Owner(rebel)
			Game_Message("A_SDD_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == true and victory_assured == true then
			ad_target.Change_Owner(rebel)
			Game_Message("A_AD_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == true and victory_assured == true then
			vd3_target.Change_Owner(rebel)
			Game_Message("A_VD3_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == true and victory_assured == true then
			vd2_target.Change_Owner(rebel)
			Game_Message("A_VD2_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == true and victory_assured == true then
			sc_target.Change_Owner(rebel)
			Game_Message("A_SC_VICTORY")
			ScriptExit()
		end		
		
		if sd_found == false and vd_found == false and ic_found == false and acc_found == false and ec_found == false and isc_found == false and sd3_found == false and mcc_found == false and tpc_found == false and hd_found == false and sdd_found == false and ad_found == false and vd3_found == false and vd2_found == false and sc_found == false and iec_found == true and victory_assured == true then
			iec_target.Change_Owner(rebel)
			Game_Message("A_IEC_VICTORY")
			ScriptExit()
		end
		
		ScriptExit()
		
end

