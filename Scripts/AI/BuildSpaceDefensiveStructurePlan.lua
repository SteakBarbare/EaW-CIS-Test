-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))
	
--	Category = "Build_Space_Defensive_Structure"
	Category = "AlwaysOff"
	IgnoreTarget = true
	TaskForce = {
	{
		"StructureForce",
		"Astilleros_IA | Astilleros_IA3 | Astilleros_IA4 | AdvTech_6IA | AdvTech_7IA | AdvTech_8IA = 1"
	}
	}

	DebugMessage("%s -- Done Definitions", tostring(Script))
end

function StructureForce_Thread()
	DebugMessage("%s -- In StructureForce_Thread.", tostring(Script))
	
	Sleep(1)
	
	StructureForce.Set_As_Goal_System_Removable(false)
	AssembleForce(StructureForce)
	StructureForce.Set_Plan_Result(true)
	
	DebugMessage("%s -- StructureForce done!", tostring(Script));
	ScriptExit()
end

function StructureForce_Production_Failed(tf, failed_object_type)
	DebugMessage("%s -- Abandonning plan owing to production failure.", tostring(Script))
	ScriptExit()
end