-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()	
	Category = "Build_Turbolasers"
	IgnoreTarget = true
	TaskForce = {
	{
		"StructureForce",
		"GC_Walls_IU | GC_Walls_IR | GC_Walls_IE | E_G_MissileT | R_G_MissileT | U_G_MissileT | E_Galactic_Turbolaser_Tower_Defenses | R_Galactic_Turbolaser_Tower_Defenses | Krayt_Turbolaser | Fel_Turbolaser | CIS_Turbolaser | Republic_Turbolaser | Chiss_Turbolaser | Corporate_Turbolaser | Hapan_Turbolaser | Hutts_Turbolaser = 0,3"
	}
	}
end

function StructureForce_Thread()
	
	Sleep(1)
	
	StructureForce.Set_As_Goal_System_Removable(false)
	AssembleForce(StructureForce)
	
	StructureForce.Set_Plan_Result(true)
	ScriptExit()
end

function StructureForce_Production_Failed(tf, failed_object_type)
	DebugMessage("%s -- Abandonning plan owing to production failure.", tostring(Script))
	ScriptExit()
end