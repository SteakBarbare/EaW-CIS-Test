-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))

	Category = "Build_Base_Component_Officer_Academy"
	IgnoreTarget = true
	TaskForce = {
	{
		"BaseForce",
		"E_Ground_Officer_Academy | R_Ground_Officer_Academy | Fel_Ground_Officer_Academy | Krayt_Ground_Officer_Academy | Republic_Ground_Officer_Academy | CIS_Ground_Officer_Academy | Chiss_Ground_Officer_Academy | Corporate_Ground_Officer_Academy | Hapan_Ground_Officer_Academy | Hutts_Ground_Officer_Academy = 0,3"
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



