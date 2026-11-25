-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))
	
	Category = "Build_Weapon"
	IgnoreTarget = true
	TaskForce = {
	{
		"StructureForce"
		,"Ground_Ion_Cannon | Ground_Empire_Hypervelocity_Gun | IA_Rebel_Ground_LNR_II_Gun | IA_Empire_Ground_LNR_II_Gun | Ground_Magnepulse_Cannon | Ground_Gravity_Generator | CIS_Ground_LNR_I_Gun | Republic_Ground_LNR_I_Gun | Hapan_Ground_LNR_II_Gun | Hutts_Ground_LNR_I_Gun | Corporate_Ground_LNR_I_Gun | Fel_Ground_LNR_II_Gun | Krayt_Ground_LNR_II_Gun | E_Ground_Heavy_Vehicle_Factory | R_Ground_Heavy_Vehicle_Factory | Krayt_Ground_Heavy_Vehicle_Factory | Fel_Ground_Heavy_Vehicle_Factory | Republic_Ground_Heavy_Vehicle_Factory | CIS_Ground_Heavy_Vehicle_Factory | Chiss_Ground_Heavy_Vehicle_Factory | Corporate_Ground_Heavy_Vehicle_Factory  | Hapan_Ground_Heavy_Vehicle_Factory | Hutts_Ground_Heavy_Vehicle_Factory | EVFO_Ground_Heavy_Vehicle_Factory | RVRE_Ground_Heavy_Vehicle_Factory | GA_Ground_Heavy_Vehicle_Factory | GAC_Ground_Heavy_Vehicle_Factory | E_Ground_Advanced_Vehicle_Factory | Krayt_Ground_Advanced_Vehicle_Factory | Fel_Ground_Advanced_Vehicle_Factory | Republic_Ground_Advanced_Vehicle_Factory | Chiss_Ground_Advanced_Vehicle_Factory | Corporate_Ground_Advanced_Vehicle_Factory | Hapan_Ground_Advanced_Vehicle_Factory | Hutts_Ground_Advanced_Vehicle_Factory | EVFO_Ground_Advanced_Vehicle_Factory | RVRE_Ground_Advanced_Vehicle_Factory | GA_Ground_Advanced_Vehicle_Factory | GAC_Ground_Advanced_Vehicle_Factory | E_Ground_Barracks | R_Ground_Barracks | Krayt_Ground_Barracks | Fel_Ground_Barracks | CIS_Ground_Barracks | Republic_Ground_Barracks | Chiss_Ground_Barracks | Corporate_Ground_Barracks | Hapan_Ground_Barracks | Hutts_Ground_Barracks | EVFO_Ground_Barracks | RVRE_Ground_Barracks | GA_Ground_Barracks | GAC_Ground_Barracks | E_Ground_Light_Vehicle_Factory | R_Ground_Light_Vehicle_Factory | Krayt_Ground_Light_Vehicle_Factory | Fel_Ground_Light_Vehicle_Factory | Republic_Ground_Light_Vehicle_Factory | CIS_Ground_Light_Vehicle_Factory | Chiss_Ground_Light_Vehicle_Factory | Corporate_Ground_Light_Vehicle_Factory | Hapan_Ground_Light_Vehicle_Factory | Hutts_Ground_Light_Vehicle_Factory | EVFO_Ground_Light_Vehicle_Factory | RVRE_Ground_Light_Vehicle_Factory | GA_Ground_Light_Vehicle_Factory | GAC_Ground_Light_Vehicle_Factory = 1"
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





