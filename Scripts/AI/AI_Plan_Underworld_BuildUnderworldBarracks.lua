-- Modded by Nomada_Firefox

require("pgevents")

-- Tell the script pooling system to pre-cache this number of scripts.
ScriptPoolCount = 4

function Definitions()

	Category = "Build_Initial_Groundbase_Only | Build_Underworld_Barracks"
	IgnoreTarget = true
	TaskForce = {
	{
		"BaseForce",
		"U_Ground_Barracks | AdvTech_UIA = 1"
	}
	}

end

function BaseForce_Thread()
	AssembleForce(BaseForce)
	BaseForce.Set_Plan_Result(true)
end

function BaseForce_Production_Failed(tf, failed_object_type)
	ScriptExit()
end