--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "EVK_ATSHW_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_AT_Walker_Squad", "EVK_AT_ST_Walker_Squad", "EVK_ATSTAP_AA_Walker_Squad", "EVK_ATSTAP_AA_Walker_Squad", "EVK_AT_ST_Walker_Squad", "EVK_Patrol_Speeder_Squad", "EVK_Patrol_Speeder_Squad", "EVK_ATSC_Squad", "EVK_AT_SE_Walker_Squad", "EVK_AT_SE_Walker_Squad", "EVK_Assault_Bomber_Land_Squad", "EVK_Assault_Bomber_Land_Squad", "EVK_TIEReaper_Squadron_Land", "EVK_TIEReaper_Squadron_Land", "Krayt_Rocket_Trooper_Squad", "EVK_LAV_Squad", "Krayt_EWEB_troopers_Squad", "Krayt_Swamp_Trooper_Squad", "EVK_LightSpeeder_Squad", "Krayt_Storm_Commando_Squad", "Krayt_Engineer_Squad" } 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"Krayt_Field_Com_Team"}
		
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





