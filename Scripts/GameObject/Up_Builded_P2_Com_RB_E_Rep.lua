--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()
	Define_State("State_Init", State_Init);
end


function State_Init(message)
	if message == OnEnter then
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_AT_HE_Company"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Rep_Hovermoto_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_Hovermoto_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_Stun_Tank_Corp"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_Stun_Tank_Corp"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("ClonPhase2Plex_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("ClonPhase2Plex_Squad"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("ClonPhase2Plex_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_LAATP2_SQ_RE"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_LAATP2_SQ_RE"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_LAATP2_SQ_RE"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_LAATP2_SQ_RE"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_LAATP2_SQ_RE"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Clon_Sniper_Phase2_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Stormtrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Stormtrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Stormtrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Stormtrooper_Squad"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_ARC_170_Squadron_Land"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_ARC_170_Squadron_Land"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_Vwing_Land_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Vwing_Land_Company"), Find_Player("Empire"))
	end
	ScriptExit()
end







