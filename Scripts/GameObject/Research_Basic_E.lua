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
				Research_1 = Find_First_Object("Research_Assertor_Units")
				if Research_1 then
         				Research_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_2 = Find_First_Object("Research_Dominance_Units")
				if Research_2 then
         				Research_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_3 = Find_First_Object("Research_Tarkin_Station")
				if Research_3 then
         				Research_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_4 = Find_First_Object("Research_Death_Star2")
				if Research_4 then
         				Research_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_5 = Find_First_Object("Research_TyconStation")
				if Research_5 then
         				Research_5.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_6 = Find_First_Object("E_Research_LNRI")
				if Research_6 then
         				Research_6.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_7 = Find_First_Object("E_Research_LNRII")
				if Research_7 then
         				Research_7.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_8 = Find_First_Object("Research_SSDs")
				if Research_8 then
         				Research_8.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_9 = Find_First_Object("Research_Praetor2")
				if Research_9 then
         				Research_9.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_10 = Find_First_Object("Research_EyeofPalpatine")
				if Research_10 then
         				Research_10.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_11 = Find_First_Object("Research_WorldDevastator")
				if Research_11 then
         				Research_11.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_12 = Find_First_Object("Research_GalaxyGun")
				if Research_12 then
         				Research_12.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_13 = Find_First_Object("Research_ISD2")
				if Research_13 then
         				Research_13.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_14 = Find_First_Object("Research_Conqueror")
				if Research_14 then
         				Research_14.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_15 = Find_First_Object("Research_ISD3")
				if Research_15 then
         				Research_15.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_16 = Find_First_Object("Research_E_Hvy_Art_ISD")
				if Research_16 then
         				Research_16.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_17 = Find_First_Object("Research_Turbulent")
				if Research_17 then
         				Research_17.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_18 = Find_First_Object("Research_Allegiance")
				if Research_18 then
         				Research_18.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_19 = Find_First_Object("Research_VSD2")
				if Research_19 then
         				Research_19.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_20 = Find_First_Object("Research_Harrow")
				if Research_20 then
         				Research_20.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_21 = Find_First_Object("Research_ACarrier")
				if Research_21 then
         				Research_21.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_22 = Find_First_Object("Research_VSD3")
				if Research_22 then
         				Research_22.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_23 = Find_First_Object("Research_Faragut")
				if Research_23 then
         				Research_23.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_24 = Find_First_Object("Research_HvyCruisers")
				if Research_24 then
         				Research_24.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_25 = Find_First_Object("Research_E_Army_RegimentB")
				if Research_25 then
         				Research_25.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_26 = Find_First_Object("Research_E_Army_RegimentC")
				if Research_26 then
         				Research_26.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_27 = Find_First_Object("Research_E_Army_RegimentD")
				if Research_27 then
         				Research_27.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_28 = Find_First_Object("Research_Darktrooper_Regiment")
				if Research_28 then
         				Research_28.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_29 = Find_First_Object("Research_War_Droid_Regiment")
				if Research_29 then
         				Research_29.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_30 = Find_First_Object("Research_E_Fleet_RegimentA")
				if Research_30 then
         				Research_30.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_31 = Find_First_Object("Research_E_Army_RegimentUp")
				if Research_31 then
         				Research_31.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_32 = Find_First_Object("Research_E_Army_RegimentUp2")
				if Research_32 then
         				Research_32.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_33 = Find_First_Object("Research_E_Hvy_Army_Regiment")
				if Research_33 then
         				Research_33.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_34 = Find_First_Object("Research_E_Hvy_Army_RegimentB")
				if Research_34 then
         				Research_34.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_35 = Find_First_Object("Research_Doomgiver_Regiment")
				if Research_35 then
         				Research_35.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_36 = Find_First_Object("Research_WorldDevastator_Regiment")
				if Research_36 then
         				Research_36.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_37 = Find_First_Object("Research_E_VHvy_Army_Regiment")
				if Research_37 then
         				Research_37.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_38 = Find_First_Object("Research_E_VHvy_Scout_Regiment")
				if Research_38 then
         				Research_38.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_39 = Find_First_Object("Research_E_Hvy_Artillery_Regiment")
				if Research_39 then
         				Research_39.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_40 = Find_First_Object("Research_E_VHvy_Artillery_Regiment")
				if Research_40 then
         				Research_40.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_41 = Find_First_Object("Research_TIE_Avenger")
				if Research_41 then
         				Research_41.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_42 = Find_First_Object("Research_TIE_Defender")
				if Research_42 then
         				Research_42.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_43 = Find_First_Object("Research_TIE_Phantom")
				if Research_43 then
         				Research_43.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_44 = Find_First_Object("Research_MissileGunboat")
				if Research_44 then
         				Research_44.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_45 = Find_First_Object("Research_Cimitarra")
				if Research_45 then
         				Research_45.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_46 = Find_First_Object("Research_A9")
				if Research_46 then
         				Research_46.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_47 = Find_First_Object("Research_ShadowDroid")
				if Research_47 then
         				Research_47.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_48 = Find_First_Object("E_Research_Golan_1")
				if Research_48 then
         				Research_48.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_49 = Find_First_Object("E_Research_Golan_2")
				if Research_49 then
         				Research_49.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_50 = Find_First_Object("E_Research_Golan_3")
				if Research_50 then
         				Research_50.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_51 = Find_First_Object("Research_Orbital_Ground_Mine")
				if Research_51 then
         				Research_51.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_52 = Find_First_Object("Research_Sales_Market")
				if Research_52 then
         				Research_52.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_53 = Find_First_Object("Research_Harrow2")
				if Research_53 then
         				Research_53.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_54 = Find_First_Object("Research_MissileGunboat2")
				if Research_54 then
         				Research_54.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_55 = Find_First_Object("Research_Cimitarra2")
				if Research_55 then
         				Research_55.Take_Damage(1000000)
				end
	end
	
	Sleep(5)
	ScriptExit()
end




