-- Modded by Nomada_Firefox

require("pgevents")

-- This plan handles both the first research facility, built under the MajorItem purchase template scheme
-- and subsequent research facilities, built under Infrastructure, by other perceptions.

function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))

	Category = "Build_Base_Component_Research_Facility | Build_Base_Component_Research_Facility_2"
	IgnoreTarget = true
	TaskForce = {
	{
		"BaseForce",
		"EXSoloIA_STR_01 | RXSoloIA_STR_01 | UXSoloIA_STR_01 | E_Ground_Research_Facility | Astilleros_IA | Astilleros_IA3 | Astilleros_IA4 = 1"
	}
	}

	DebugMessage("%s -- Done Definitions", tostring(Script))
end

function BaseForce_Thread()
	DebugMessage("%s -- In BaseForce_Thread.", tostring(Script))
	
	Sleep(1)
	
	BaseForce.Set_As_Goal_System_Removable(false)
	AssembleForce(BaseForce)
	
	BaseForce.Set_Plan_Result(true)
	DebugMessage("%s -- BaseForce done!", tostring(Script));
	ScriptExit()
end

function BaseForce_Production_Failed(tf, failed_object_type)
	DebugMessage("%s -- Abandonning plan owing to production failure.", tostring(Script))
	ScriptExit()
end


