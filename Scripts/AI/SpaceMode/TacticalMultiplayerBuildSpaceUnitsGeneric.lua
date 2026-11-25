--Edited by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Space_Units_Generic"
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
		,"Allecto_Star_Destroyer | Colonel_Nord_Sk | Jerjerrod_Sk = 0,1"
		,"Corvette = 0,3"
		,"Frigate = 0,3"
		,"AntiSuper = 0,1"
		,"AntiTransport = 0,1"
		,"AntiFrigate = 0,2"
		,"Spacehero = 0,1"
		}
	}
	RequiredCategories = {"Corvette | Frigate | SpaceHero | AntiCorvette | AntiSuper | AntiTransport | AntiFrigate"}
	AllowFreeStoreUnits = false

end

function ReserveForce_Thread()
			
	BlockOnCommand(ReserveForce.Produce_Force())
	ReserveForce.Set_Plan_Result(true)
	ReserveForce.Set_As_Goal_System_Removable(false)
		
	-- Give some time to accumulate money.
	tech_level = PlayerObject.Get_Tech_Level()
	min_credits = 25000
	max_sleep_seconds = 60
	if tech_level == 2 then
		min_credits = 40000
		max_sleep_seconds = 100
	elseif tech_level >= 3 then
		min_credits = 60000
		max_sleep_seconds = 125
	end
	
	current_sleep_seconds = 0
	while (PlayerObject.Get_Credits() < min_credits) and (current_sleep_seconds < max_sleep_seconds) do
		current_sleep_seconds = current_sleep_seconds + 1
		Sleep(1)
	end

	ScriptExit()
end