-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Command_Center"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_Imperial_Command_Center | UC_Rebel_Command_Center | UC_Underworld_Palace | PC_Republic_Command_Center | PC_CIS_Command_Center | PC_Krayt_Command_Center | PC_Fel_Command_Center | PC_Chiss_Command_Center | PC_Corporate_Command_Center | PC_Hapan_Command_Center | PC_Hutts_Command_Center | PC_EVFO_Command_Center | PC_RVRE_Command_Center | PC_GA_Command_Center | PC_GAC_Command_Center = 1"
	}
	}
	AllowFreeStoreUnits = false

end

function MainForce_Thread()

	BlockOnCommand(MainForce.Build_All())
	MainForce.Set_Plan_Result(true)
	ScriptExit()
end