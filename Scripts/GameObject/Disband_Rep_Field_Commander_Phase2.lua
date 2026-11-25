--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_AT_HE_Company", "Rep_Hovermoto_Phase2_Squad", "Rep_Hovermoto_Phase2_Squad", "Rep_Stun_Tank_Corp", "Rep_Stun_Tank_Corp", "ClonPhase2Plex_Squad", "ClonPhase2Plex_Squad", "ClonPhase2Plex_Squad", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_LAAT_Phase1_MKII", "Republic_EWEB_troopers_Phase2_Squad", "Republic_EWEB_troopers_Phase2_Squad", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Clon_Sniper_Phase2_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_Stormtrooper_Squad", "Republic_ARC_170_Squadron_Land", "Republic_ARC_170_Squadron_Land", "Republic_Vwing_Land_Company", "Republic_Vwing_Land_Company", "Rep_Protector", "Rep_Protector", "Rep_Protector", "REP_RandEcliptic", "REP_RandEcliptic" }
		

end

function State_Init( message )
       if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"Republic_Field_Commander_Phase2_Team"}
		
		for i = 1, table.getn( GRTeam_1 ), 1 do 
          local small_transport_list = Find_All_Objects_Of_Type(GRTeam_1[i]) 
             if TestValid(small_transport_list[1]) then 
               for k,unit in pairs( small_transport_list ) do  
                  if unit.Get_Planet_Location() == Object.Get_Planet_Location() then 
                    unit.Despawn() 
                     break   
                 end 
               end 
           end 
        end
		
		
	Object.Despawn() 
    Sleep( 1.0 )
	ScriptExit()
end





