--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()
	Define_State("State_Init", State_Init);
end


function State_Init(message)
	if message == OnEnter then
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_AT_TE_Company"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Rep_Hovermoto_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Rep_Hovermoto_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_ClonGun_Corp"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_ClonGun_Corp"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("ClonPhase1Plex_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("ClonPhase1Plex_Squad"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("ClonPhase1Plex_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAAT_Phase1"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAAT_Phase1"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAAT_Phase1"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAAT_Phase1"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAAT_Phase1"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_EWEB_troopers_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_Clon_Sniper_Phase1_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_CloneTrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_CloneTrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_CloneTrooper_Squad"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_CloneTrooper_Squad"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_LAFT"), Find_Player("Empire"))
		Add_Reinforcement(Find_Object_Type("Republic_LAFT"), Find_Player("Empire"))
		
		Add_Reinforcement(Find_Object_Type("Republic_LAFT"), Find_Player("Empire"))
		
	end
	ScriptExit()
end







