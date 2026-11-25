-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Basic_Structure"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_Power_Generator_R | UC_R_Ground_Base_Shield | UC_R_Small_Ground_Base_Shield | UC_Rebel_Mineral_Processor | UC_Rebel_Ground_Mining_Facility | UC_R_Ground_Turbolaser_Tower | UC_R_Ground_Light_Vehicle_Factory | UC_R_Ground_Heavy_Vehicle_Factory | UC_R_Ground_Research_Facility | UC_Communications_Array_R | UC_Ground_Hutt_Palace_R | UC_R_Uplink_Station = 0,1"
		,"UC_Power_Generator_E | UC_E_Ground_Base_Shield | UC_E_Small_Ground_Base_Shield | UC_Empire_Mineral_Processor | UC_Empire_Ground_Mining_Facility | UC_E_Ground_Turbolaser_Tower | UC_E_Ground_Light_Vehicle_Factory | UC_E_Ground_Heavy_Vehicle_Factory | UC_E_Ground_Research_Facility | UC_Communications_Array_E | UC_Ground_Hutt_Palace_E | UC_Ground_Magnepulse_Cannon_E = 0,1"
		,"UC_U_Ground_Merc_Outpost | UC_U_Ground_Droid_Works | UC_Underworld_Palace | UC_U_Ground_Arms_Depot | UC_Underworld_Mineral_Processor | UC_U_Ground_Turbolaser_Tower | UC_Ground_Hutt_Palace_U | UC_U_Ground_Gravity_Generator = 0,1"
		,"PC_CIS_Communications_Array | PC_CIS_Turbolaser | PC_CIS_Ground_Base_Shield | PC_CIS_Power_Generator | PC_CIS_Ground_Light_Vehicle_Factory | PC_CIS_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Republic_Communications_Array | PC_Republic_Turbolaser | PC_Republic_Ground_Base_Shield | PC_Republic_Power_Generator | PC_Republic_Ground_Light_Vehicle_Factory | PC_Republic_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Chiss_Communications_Array | PC_Chiss_Turbolaser | PC_Chiss_Ground_Base_Shield | PC_Chiss_Power_Generator | PC_Chiss_Ground_Light_Vehicle_Factory | PC_Chiss_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Corporate_Communications_Array | PC_Corporate_Turbolaser | PC_Corporate_Ground_Base_Shield | PC_Corporate_Power_Generator | PC_Corporate_Ground_Light_Vehicle_Factory | PC_Corporate_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Hapan_Communications_Array | PC_Hapan_Turbolaser | PC_Hapan_Ground_Base_Shield | PC_Hapan_Power_Generator | PC_Hapan_Ground_Light_Vehicle_Factory | PC_Hapan_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Hutts_Communications_Array | PC_Hutts_Turbolaser | PC_Hutts_Ground_Base_Shield | PC_Hutts_Power_Generator | PC_Hutts_Ground_Light_Vehicle_Factory | PC_Hutts_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Empire_Missile_Tower | PC_Rebel_Missile_Tower | PC_Underworld_Missile_Tower | PC_E_XBCommand | PC_E_XLanding | PC_E_XCommand = 0,1"
		,"PC_Fel_Communications_Array | PC_Fel_Turbolaser | PC_Fel_Ground_Base_Shield | PC_Fel_Power_Generator | PC_Fel_Ground_Light_Vehicle_Factory | PC_Fel_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_Krayt_Communications_Array | PC_Krayt_Turbolaser | PC_Krayt_Ground_Base_Shield | PC_Krayt_Power_Generator | PC_Krayt_Ground_Light_Vehicle_Factory | PC_Krayt_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_EVFO_Communications_Array | PC_EVFO_Turbolaser | PC_EVFO_Ground_Base_Shield | PC_EVFO_Power_Generator | PC_EVFO_Ground_Light_Vehicle_Factory | PC_EVFO_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_RVRE_Communications_Array | PC_RVRE_Turbolaser | PC_RVRE_Ground_Base_Shield | PC_RVRE_Power_Generator | PC_RVRE_Ground_Light_Vehicle_Factory | PC_RVRE_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_GA_Communications_Array | PC_GA_Turbolaser | PC_GA_Ground_Base_Shield | PC_GA_Power_Generator | PC_GA_Ground_Light_Vehicle_Factory | PC_GA_Ground_Heavy_Vehicle_Factory = 0,1"
		,"PC_GAC_Communications_Array | PC_GAC_Turbolaser | PC_GAC_Ground_Base_Shield | PC_GAC_Power_Generator | PC_GAC_Ground_Light_Vehicle_Factory | PC_GAC_Ground_Heavy_Vehicle_Factory = 0,1"
	}
	}
	RequiredCategories = {"Structure"}
	AllowFreeStoreUnits = false

end

function MainForce_Thread()

	BlockOnCommand(MainForce.Build_All())
	MainForce.Set_Plan_Result(true)
	ScriptExit()
end



