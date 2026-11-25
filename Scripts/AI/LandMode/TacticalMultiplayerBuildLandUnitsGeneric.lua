-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Tactical_Multiplayer_Build_Land_Units_Generic"
	IgnoreTarget = true
	TaskForce = {
	{
		"ReserveForce"
		,"DenySpecialWeaponAttach"
		,"DenyHeroAttach"	
		,"RC_Level_Two_Tech_Upgrade | RC_Level_Three_Tech_Upgrade = 0,1"
		,"EC_Level_Two_Tech_Upgrade | EC_Level_Three_Tech_Upgrade = 0,1"
		,"UC_Level_Two_Tech_Upgrade | UC_Level_Three_Tech_Upgrade = 0,1"
		,"Chiss_Level_Two_Tech_Upgrade | Chiss_Level_Three_Tech_Upgrade = 0,1"
		,"Corporate_Level_Two_Tech_Upgrade | Corporate_Level_Three_Tech_Upgrade = 0,1"
		,"Ha_Level_Two_Tech_Upgrade | Ha_Level_Three_Tech_Upgrade = 0,1"
		,"Hu_Level_Two_Tech_Upgrade | Hu_Level_Three_Tech_Upgrade = 0,1"
		,"EVFO_Level_Two_Tech_Upgrade | EVFO_Level_Three_Tech_Upgrade = 0,1"
		,"RVRE_Level_Two_Tech_Upgrade | RVRE_Level_Three_Tech_Upgrade = 0,1"
		,"GA_Level_Two_Tech_Upgrade | GA_Level_Three_Tech_Upgrade = 0,1"
		,"GAC_Level_Two_Tech_Upgrade | GAC_Level_Three_Tech_Upgrade = 0,1"
		,"Infantry = 0,5"
		,"Vehicle = 0,1"
		,"Air = 0,1"
		,"LandHero = 0,1"
		}
	}
	RequiredCategories = {"Infantry | Vehicle | LandHero | Air | Upgrade"}
	AllowFreeStoreUnits = false

end

function ReserveForce_Thread()
			
	ReserveForce.Set_Plan_Result(true)
	ReserveForce.Set_As_Goal_System_Removable(false)
	BlockOnCommand(ReserveForce.Produce_Force())

	-- Give some time to accumulate money.
	tech_level = PlayerObject.Get_Tech_Level()
	min_credits = 25000
	max_sleep_seconds = 30
	if tech_level == 2 then
		min_credits = 35000
		max_sleep_seconds = 15
	elseif tech_level >= 3 then
		min_credits = 50000
		max_sleep_seconds = 5
	end
	
	current_sleep_seconds = 0
	while (PlayerObject.Get_Credits() < min_credits) and (current_sleep_seconds < max_sleep_seconds) do
		current_sleep_seconds = current_sleep_seconds + 1
		Sleep(1)
	end
		
	ScriptExit()
end