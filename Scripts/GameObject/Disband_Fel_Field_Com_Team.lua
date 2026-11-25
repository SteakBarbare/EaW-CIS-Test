--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "EVF_AT_AHTH_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVK_AT_AA_Walker_Squad", "EVK_AT_AA_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVF_AT_MP_Squad", "EVF_AT_MP_Squad", "EVF_AT_AHT_Squad", "EVF_AT_SE_Walker_Squad", "EVF_AT_SE_Walker_Squad", "EVF_TIE_Neutralizer_Squadron_Land", "EVF_TIE_Neutralizer_Squadron_Land", "EVF_TIE_Predator_Squadron_Land", "EVF_TIE_Predator_Squadron_Land", "Fel_PlexTrooper_Squad", "EVF_Hvy_Artillery_Squad", "Fel_EWEB_troopers_Squad", "Fel_Assault_Squad", "Fel_Light_Scout_Squad", "Fel_Sniper_Squad", "Fel_Engineer_Squad", "EVF_PellaeonSD","EVF_PellaeonSD", "EVF_PellaeonSD", "EVF_PellaeonSD", "EVF_KnightSD", "EVF_KnightSD" } 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"Fel_Field_Com_Team"}
		
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





