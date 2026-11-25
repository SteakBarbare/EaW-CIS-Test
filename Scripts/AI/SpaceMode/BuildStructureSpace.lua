-- Modded by Nomada_Firefox

require("pgevents")


function Definitions()
	
	Category = "Build_Structure_Space"
	IgnoreTarget = true
	TaskForce = {
	{
		"MainForce"
		,"UC_Empire_Defense_Satellite_Laser | UC_Empire_Defense_Satellite_Missile | UC_Empire_Defense_Satellite_Repair = 0,1"
		,"UC_Empire_Defense_Shipyard_FO_RE | UC_Empire_Defense_Shipyard_RepCRS | UC_Empire_Defense_Shipyard_RepFRG = 0,1"
		,"UC_CIS_Defense_Shipyard_CISFRG | UC_CIS_Defense_Shipyard_CISCRS = 0,1"
		,"UC_Empire_Defense_XQ3 | UC_Empire_Defense_XQ1 | UC_Empire_Defense_Fleets | UC_Empire_Defense_H2 = 0,1"
		,"UC_Rebel_Defense_Satellite_Laser | UC_Rebel_Defense_Satellite_Missile | UC_Rebel_Defense_Satellite_Repair = 0,1"
		,"UC_Underworld_Defense_Satellite_Plasma | UC_Underworld_Defense_Satellite_DBM | UC_Underworld_Defense_Satellite_Repair = 0,1"
		,"UC_Pirates_Defense_Satellite_Laser | UC_Pirates_Defense_Satellite_Missile | UC_Pirates_Defense_Satellite_Repair = 0,1"
		,"UC_CIS_Defense_Satellite_Laser | UC_CIS_Defense_Satellite_Missile | UC_CIS_Defense_Satellite_Repair = 0,1"
		,"UC_Republic_Defense_Satellite_Laser | UC_Republic_Defense_Satellite_Missile | UC_Republic_Defense_Satellite_Repair = 0,1"
		,"UC_EVF_Defense_Satellite_Repair | UC_EVF_Defense_Satellite_Missile | UC_EVF_Defense_Satellite_Laser = 0,1"
		,"UC_Defense_SSD_Shipyard = 0,1"
		,"UC_FreeSide_Defense_Satellite_Laser | UC_Hutts_Defense_Satellite_Missile | UC_Hutts_Defense_Satellite_Repair | UC_Hutts_Defense_SSD_Shipyard = 0,1"
		,"UC_FreeSide_Defense_Satellite_Laser | UC_Chiss_Defense_Satellite_Missile | UC_Chiss_Defense_Satellite_Repair | UC_Chiss_Defense_SSD_Shipyard = 0,1"
		,"UC_FreeSide_Defense_Satellite_Laser | UC_Hapan_Defense_Satellite_Missile | UC_Hapan_Defense_Satellite_Repair | UC_Hapan_Defense_SSD_Shipyard = 0,1"
		,"UC_FreeSide_Defense_Satellite_Laser | UC_Corporate_Defense_Satellite_Missile | UC_Corporate_Defense_Satellite_Repair | UC_Corporate_Defense_SSD_Shipyard = 0,1"
	}
	}
	
	RequiredCategories = {"Structure"}
	AllowFreeStoreUnits = false

end

function MainForce_Thread()

	BlockOnCommand(MainForce.Build_All())
	MainForce.Set_Plan_Result(true)
	ScriptExit()
end

