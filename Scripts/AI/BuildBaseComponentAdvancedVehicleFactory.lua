-- Modded by Nomada_Firefox


require("pgevents")


function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))

	Category = "Build_Base_Component_Advanced_Vehicle_Factory"
	IgnoreTarget = true
	TaskForce = {
	{
		"BaseForce",
		"E_Ground_Advanced_Vehicle_Factory | Krayt_Ground_Advanced_Vehicle_Factory | Fel_Ground_Advanced_Vehicle_Factory | Republic_Ground_Advanced_Vehicle_Factory | Chiss_Ground_Advanced_Vehicle_Factory | Corporate_Ground_Advanced_Vehicle_Factory | Hapan_Ground_Advanced_Vehicle_Factory | Hutts_Ground_Advanced_Vehicle_Factory | EVFO_Ground_Advanced_Vehicle_Factory | RVRE_Ground_Advanced_Vehicle_Factory | GA_Ground_Advanced_Vehicle_Factory | GAC_Ground_Advanced_Vehicle_Factory = 1"
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




