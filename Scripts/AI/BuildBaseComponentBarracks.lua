-- Modded by Nomada_Firefox

require("pgevents")

-- Tell the script pooling system to pre-cache this number of scripts.
ScriptPoolCount = 4

function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))

	Category = "Build_Initial_Groundbase_Only | Build_Base_Component_Barracks"
	IgnoreTarget = true
	TaskForce = {
	{
		"BaseForce",
		"E_Ground_Barracks | R_Ground_Barracks | Krayt_Ground_Barracks | Fel_Ground_Barracks | CIS_Ground_Barracks | Republic_Ground_Barracks | Chiss_Ground_Barracks | Corporate_Ground_Barracks | Hapan_Ground_Barracks | Hutts_Ground_Barracks | EVFO_Ground_Barracks | RVRE_Ground_Barracks | GA_Ground_Barracks | GAC_Ground_Barracks = 1"
	}
	}

	DebugMessage("%s -- Done Definitions", tostring(Script))
end

function BaseForce_Thread()
	DebugMessage("%s -- In BaseForce_Thread.", tostring(Script))
	
	Sleep(1)
	
--	BaseForce.Set_As_Goal_System_Removable(false)
	AssembleForce(BaseForce)
	
	BaseForce.Set_Plan_Result(true)
	DebugMessage("%s -- BaseForce done!", tostring(Script));
	ScriptExit()
end

function BaseForce_Production_Failed(tf, failed_object_type)
	DebugMessage("%s -- Abandonning plan owing to production failure.", tostring(Script))
	ScriptExit()
end

