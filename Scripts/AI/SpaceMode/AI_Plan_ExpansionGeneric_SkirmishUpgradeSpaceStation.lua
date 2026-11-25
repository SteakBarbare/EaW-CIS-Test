-- Modded by Nomada_Firefox



require("pgevents")


function Definitions()
	
	Category = "Skirmish_Upgrade_Space_Station"
	IgnoreTarget = true
	TaskForce = {
	{
		"ReserveForce"
		,"RS_Level_Two_Starbase_Upgrade | RS_Level_Three_Starbase_Upgrade | RS_Level_Four_Starbase_Upgrade | RS_Level_Five_Starbase_Upgrade = 0,1"
		,"ES_Level_Two_Starbase_Upgrade | ES_Level_Three_Starbase_Upgrade | ES_Level_Four_Starbase_Upgrade | ES_Level_Five_Starbase_Upgrade = 0,1"
		,"US_Level_Two_Starbase_Upgrade | US_Level_Three_Starbase_Upgrade | US_Level_Four_Starbase_Upgrade | US_Level_Five_Starbase_Upgrade = 0,1"
		,"CIS_Level_Two_Starbase_Upgrade | CIS_Level_Three_Starbase_Upgrade | CIS_Level_Four_Starbase_Upgrade | CIS_Level_Five_Starbase_Upgrade = 0,1"
		,"REP_Level_Two_Starbase_Upgrade | REP_Level_Three_Starbase_Upgrade | REP_Level_Four_Starbase_Upgrade | REP_Level_Five_Starbase_Upgrade = 0,1"
		,"Fel_Level_Two_Starbase_Upgrade | Fel_Level_Three_Starbase_Upgrade | Fel_Level_Four_Starbase_Upgrade | Fel_Level_Five_Starbase_Upgrade = 0,1"
		,"Krayt_Level_Two_Starbase_Upgrade | Krayt_Level_Three_Starbase_Upgrade | Krayt_Level_Four_Starbase_Upgrade | Krayt_Level_Five_Starbase_Upgrade = 0,1"
		,"Co_Level_Two_Starbase_Upgrade | Co_Level_Three_Starbase_Upgrade | Co_Level_Four_Starbase_Upgrade | Co_Level_Five_Starbase_Upgrade = 0,1"
		,"Ch_Level_Two_Starbase_Upgrade | Ch_Level_Three_Starbase_Upgrade | Ch_Level_Four_Starbase_Upgrade | Ch_Level_Five_Starbase_Upgrade = 0,1"
		,"Ha_Level_Two_Starbase_Upgrade | Ha_Level_Three_Starbase_Upgrade | Ha_Level_Four_Starbase_Upgrade | Ha_Level_Five_Starbase_Upgrade = 0,1"
		,"Hu_Level_Two_Starbase_Upgrade | Hu_Level_Three_Starbase_Upgrade | Hu_Level_Four_Starbase_Upgrade | Hu_Level_Five_Starbase_Upgrade = 0,1"
		,"EVFO_Level_Two_Starbase_Upgrade | EVFO_Level_Three_Starbase_Upgrade | EVFO_Level_Four_Starbase_Upgrade | EVFO_Level_Five_Starbase_Upgrade = 0,1"
		,"RVRE_Level_Two_Starbase_Upgrade | RVRE_Level_Three_Starbase_Upgrade | RVRE_Level_Four_Starbase_Upgrade | RVRE_Level_Five_Starbase_Upgrade = 0,1"
		,"GA_Level_Two_Starbase_Upgrade | GA_Level_Three_Starbase_Upgrade | GA_Level_Four_Starbase_Upgrade | GA_Level_Five_Starbase_Upgrade = 0,1"
		,"GAC_Level_Two_Starbase_Upgrade | GAC_Level_Three_Starbase_Upgrade | GAC_Level_Four_Starbase_Upgrade | GAC_Level_Five_Starbase_Upgrade = 0,1"	
	}
	}
	RequiredCategories = {"Upgrade"}
	AllowFreeStoreUnits = false

end

function ReserveForce_Thread()
			
	BlockOnCommand(ReserveForce.Produce_Force())
	ReserveForce.Set_Plan_Result(true)
		
	ScriptExit()
end