-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Build_Refinery_Space"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_Empire_Mineral_Extractor | UC_Rebel_Mineral_Extractor | UC_Underworld_Mineral_Extractor | UC_Cristal_Mineral_Extractor | UC_Gas_Mineral_Extractor | UC_O_Mineral_Extractor = 1"
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



