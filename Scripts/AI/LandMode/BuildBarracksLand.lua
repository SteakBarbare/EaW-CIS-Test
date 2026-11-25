-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Barracks"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_E_Ground_Barracks | UC_R_Ground_Barracks | UC_U_Ground_Merc_Outpost | PC_Fel_Ground_Barracks | PC_Krayt_Ground_Barracks | PC_Chiss_Ground_Barracks | PC_Corporate_Ground_Barracks | PC_Hapan_Ground_Barracks | PC_Hutts_Ground_Barracks | PC_CIS_Ground_Barracks | PC_Republic_Ground_Barracks | PC_EVFO_Ground_Barracks | PC_RVRE_Ground_Barracks | PC_GA_Ground_Barracks | PC_GAC_Ground_Barracks = 1"
	}
	}
	AllowFreeStoreUnits = false

end

function MainForce_Thread()

	BlockOnCommand(MainForce.Build_All())
	MainForce.Set_Plan_Result(true)
	ScriptExit()
end