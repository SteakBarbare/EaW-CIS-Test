--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "GA_Land_Raider", "Ga_T9B_Brigade", "Ga_T9B_Brigade", "GA_T2B_Tank_Squad", "GA_T2B_Tank_Squad", "GA_TBAA_Brigade", "GA_TBAA_Brigade", "Ga_T7B_Brigade", "Ga_Specforce_Squad", "GA_S_Attack_Tank_Squad", "GA_AAC_Hovertank_Squad", "GA_Crossfire_Squadron_Land", "GA_Ionizer_Land_squadron", "GA_B22_Land_squadron", "GA_Scanner_Brigade", "GA_Assault_Trooper_Squad", "GA_EWEB_troopers_Squad", "GA_Plex_Trooper_Squad", "GA_Sniper_Trooper_Squad", "Ga_Schyte", "Ga_TriSchyte", "Ga_TriSchyte", "GA_Verkker", "GA_Verkker", "GA_Verkker" } 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"GA_Field_Com_Team"}
		
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





