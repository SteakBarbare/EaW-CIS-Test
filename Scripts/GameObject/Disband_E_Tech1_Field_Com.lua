--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "AT-TE_Company", "AT-TE_Company", "AT-TE_Company", "AT-TE_Company", "AT-TE_Company", "HAV_Juggernaut_A6_Company", "TX130_Armor_AR_Group", "TX130_Armor_Group", "Empire_AT_AP_Company", "Grupo_LAAT", "Grupo_LAAT", "Grupo_LAAT", "Grupo_LAAT", "Grupo_LAAT", "ARC_170_Squadron_Land", "ARC_170_Squadron_Land", "IMPV_19_landspeeder_Company", "IMPV_19_landspeeder_Company", "E_Venator", "E_Venator", "E_Venator", "Acclamator_Assault_Ship", "Acclamator_Assault_Ship" } 
		

end

function State_Init( message )
    if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"E_Tech1_Field_Com_Empire_Team"}
		
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





