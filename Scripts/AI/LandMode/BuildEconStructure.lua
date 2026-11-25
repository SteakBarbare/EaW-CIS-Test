-- Edited by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Build_Econ_Structure"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_Rebel_Mineral_Processor | UC_Rebel_Ground_Mining_Facility | UC_Normal_Wall = 0,1"
		,"UC_Empire_Mineral_Processor | UC_Empire_Ground_Mining_Facility = 0,1"	
		,"UC_Underworld_Mineral_Processor | UC_Underwold_Ground_Mining_Facility = 0,1"
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




