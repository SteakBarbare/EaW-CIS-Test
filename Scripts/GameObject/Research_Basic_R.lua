--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)
		
chances = nil

end



function State_Init(message)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end

	if message == OnEnter then
				Research_2 = Find_First_Object("Research_R_ISD")
				if Research_2 then
         				Research_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_3 = Find_First_Object("Research_R_ISD2")
				if Research_3 then
         				Research_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_4 = Find_First_Object("Research_R_MC80v2")
				if Research_4 then
         				Research_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_5 = Find_First_Object("Research_R_MC80v2_2")
				if Research_5 then
         				Research_5.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_6 = Find_First_Object("Research_R_MC60")
				if Research_6 then
         				Research_6.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_7 = Find_First_Object("Research_R_MC60_2")
				if Research_7 then
         				Research_7.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_8 = Find_First_Object("Research_R_MC80C")
				if Research_8 then
         				Research_8.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_9 = Find_First_Object("Research_R_MC80C_2")
				if Research_9 then
         				Research_9.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_10 = Find_First_Object("Research_R_MC80M")
				if Research_10 then
         				Research_10.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_11 = Find_First_Object("Research_R_MC80M_2")
				if Research_11 then
         				Research_11.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_12 = Find_First_Object("Research_R_MC75")
				if Research_12 then
         				Research_12.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_13 = Find_First_Object("Research_R_MC75_2")
				if Research_13 then
         				Research_13.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_14 = Find_First_Object("Research_R_MC90")
				if Research_14 then
         				Research_14.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_15 = Find_First_Object("Research_R_MC90_2")
				if Research_15 then
         				Research_15.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_16 = Find_First_Object("Research_R_MC108")
				if Research_16 then
         				Research_16.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_17 = Find_First_Object("Research_R_MC108_2")
				if Research_17 then
         				Research_17.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_18 = Find_First_Object("Research_R_MC112")
				if Research_18 then
         				Research_18.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_19 = Find_First_Object("Research_R_MC112_2")
				if Research_19 then
         				Research_19.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_20 = Find_First_Object("Research_R_MC104")
				if Research_20 then
         				Research_20.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_21 = Find_First_Object("Research_R_MC104_2")
				if Research_21 then
         				Research_21.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_22 = Find_First_Object("Research_R_Mediator")
				if Research_22 then
         				Research_22.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_23 = Find_First_Object("Research_R_Mediator_2")
				if Research_23 then
         				Research_23.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_24 = Find_First_Object("Research_R_Vizconde")
				if Research_24 then
         				Research_24.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_25 = Find_First_Object("Research_R_Vizconde_2")
				if Research_25 then
         				Research_25.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_26 = Find_First_Object("Research_R_StrikeMod")
				if Research_26 then
         				Research_26.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_27 = Find_First_Object("Research_R_BulkwarkMKIII")
				if Research_27 then
         				Research_27.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_28 = Find_First_Object("Research_R_BulkwarkMKIII_2")
				if Research_28 then
         				Research_28.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_29 = Find_First_Object("Research_R_Dauntlessv2")
				if Research_29 then
         				Research_29.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_30 = Find_First_Object("Research_R_BothanAssault")
				if Research_30 then
         				Research_30.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_31 = Find_First_Object("Research_R_Dauntlessv2_2")
				if Research_31 then
         				Research_31.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_32 = Find_First_Object("Research_R_Liberator")
				if Research_32 then
         				Research_32.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_33 = Find_First_Object("Research_R_Liberatorv2")
				if Research_33 then
         				Research_33.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_34 = Find_First_Object("Research_R_AssaultFRGv1")
				if Research_34 then
         				Research_34.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_35 = Find_First_Object("Research_R_AssaultFRGv2")
				if Research_35 then
         				Research_35.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_36 = Find_First_Object("Research_R_Assault_Frg_Hvy_Art")
				if Research_36 then
         				Research_36.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_37 = Find_First_Object("Research_R_Corona")
				if Research_37 then
         				Research_37.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_38 = Find_First_Object("Research_R_NebulonC")
				if Research_38 then
         				Research_38.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_39 = Find_First_Object("Research_R_Majestic")
				if Research_39 then
         				Research_39.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_40 = Find_First_Object("Research_R_Harrier")
				if Research_40 then
         				Research_40.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_41 = Find_First_Object("Research_R_BakuranShips")
				if Research_41 then
         				Research_41.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_42 = Find_First_Object("Research_R_BothanAssault")
				if Research_42 then
         				Research_42.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_43 = Find_First_Object("Research_R_BothanFRG")
				if Research_43 then
         				Research_43.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_44 = Find_First_Object("Research_R_Ranger")
				if Research_44 then
         				Research_44.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_45 = Find_First_Object("Research_R_Sacheen")
				if Research_45 then
         				Research_45.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_46 = Find_First_Object("Research_R_CRDefender")
				if Research_46 then
         				Research_46.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_47 = Find_First_Object("Research_R_CREndurance")
				if Research_47 then
         				Research_47.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_48 = Find_First_Object("Research_R_Strident")
				if Research_48 then
         				Research_48.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_49 = Find_First_Object("Research_R_KuatSD_1")
				if Research_49 then
         				Research_49.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_50 = Find_First_Object("Research_R_KuatSD_2")
				if Research_50 then
         				Research_50.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_51 = Find_First_Object("Research_R_BlueDiver")
				if Research_51 then
         				Research_51.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_52 = Find_First_Object("Research_R_BlueDiver_2")
				if Research_52 then
         				Research_52.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_53 = Find_First_Object("R_Research_LNRI")
				if Research_53 then
         				Research_53.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_54 = Find_First_Object("R_Research_LNRII")
				if Research_54 then
         				Research_54.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_55 = Find_First_Object("Research_Infiltrator_Facility")
				if Research_55 then
         				Research_55.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_56 = Find_First_Object("Research_Snow_Fleet_Regiment")
				if Research_56 then
         				Research_56.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_57 = Find_First_Object("Research_Mon_Calamari_Regiment")
				if Research_57 then
         				Research_57.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_59 = Find_First_Object("Research_Mon_Calamari_Regiment_2")
				if Research_59 then
         				Research_59.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_62 = Find_First_Object("Research_HMon_Calamari_Regiment")
				if Research_62 then
         				Research_62.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_63 = Find_First_Object("Research_HMon_Calamari_Regiment_2")
				if Research_63 then
         				Research_63.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_63 = Find_First_Object("Research_Sullustant_Regiment")
				if Research_63 then
         				Research_63.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_64 = Find_First_Object("Research_HSullustant_Regiment")
				if Research_64 then
         				Research_64.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
					Research_65 = Find_First_Object("Research_Wookie_Regiment")
					if Research_65 then
							Research_65.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_66 = Find_First_Object("Research_Infiltrator_Regiment")
					if Research_66 then
							Research_66.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_67 = Find_First_Object("Research_HInfiltrator_Regiment")
					if Research_67 then
							Research_67.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_68 = Find_First_Object("Research_SpecialOps_Regiment")
					if Research_68 then
							Research_68.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_69 = Find_First_Object("Research_Alliance_New_Fleet_Regiment")
					if Research_69 then
							Research_69.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_70 = Find_First_Object("Research_Alliance_New_Army_Regiment")
					if Research_70 then
							Research_70.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_71 = Find_First_Object("Research_Alliance_New_HArmy_Regiment")
					if Research_71 then
							Research_71.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_72 = Find_First_Object("Research_R_AWing")
					if Research_72 then
							Research_72.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_73 = Find_First_Object("Research_R_BWing")
					if Research_73 then
							Research_73.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_74 = Find_First_Object("Research_R_BWing_2")
					if Research_74 then
							Research_74.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_75 = Find_First_Object("Research_R_Colossus")
					if Research_75 then
							Research_75.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_76 = Find_First_Object("Research_R_Colossus_2")
					if Research_76 then
							Research_76.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_77 = Find_First_Object("Research_R_AssaultFighter")
					if Research_77 then
							Research_77.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_78 = Find_First_Object("Research_R_RVBTLS3Y")
					if Research_78 then
							Research_78.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_79 = Find_First_Object("Research_R_EWing")
					if Research_79 then
							Research_79.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_80 = Find_First_Object("Research_R_BWingS1")
					if Research_80 then
							Research_80.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_81 = Find_First_Object("Research_R_BWingS2")
					if Research_81 then
							Research_81.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_82 = Find_First_Object("Research_R_DefenderF")
					if Research_82 then
							Research_82.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_83 = Find_First_Object("Research_R_Eta5")
					if Research_83 then
							Research_83.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_84 = Find_First_Object("Research_R_Kwing")
					if Research_84 then
							Research_84.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_85 = Find_First_Object("Research_R_XWingS1")
					if Research_85 then
							Research_85.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_86 = Find_First_Object("Research_R_T42")
					if Research_86 then
							Research_86.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_87 = Find_First_Object("Research_R_XJWing")
					if Research_87 then
							Research_87.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_88 = Find_First_Object("Research_R_XwingX")
					if Research_88 then
							Research_88.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_89 = Find_First_Object("R_Research_Golan_1")
					if Research_89 then
							Research_89.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_90 = Find_First_Object("R_Research_Golan_2")
					if Research_90 then
							Research_90.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_91 = Find_First_Object("R_Research_Golan_3")
					if Research_91 then
							Research_91.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_92 = Find_First_Object("R_Research_Orbital_Ground_Mine")
					if Research_92 then
							Research_92.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_93 = Find_First_Object("R_Research_Sales_Market")
					if Research_93 then
							Research_93.Take_Damage(1000000)
					end
	end
	if message == OnEnter then
					Research_94 = Find_First_Object("Research_R_ISD_AnakinSolo")
					if Research_94 then
							Research_94.Take_Damage(1000000)
					end
	end
	Sleep(5)
	ScriptExit()
end




