--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Grupo_CaminantesX2", "Grupo_CaminantesX2", "Grupo_CaminantesX2", "Grupo_CaminantesX2", "Grupo_CaminantesX2", "Imperial_ATIC_Company", "1H_Repulsor_Tank_Group", "AT_PT_Company", "Imperial_Heavy_Scout_Squad", "Imperial_MOVILEART_Corp", "TIE_Interceptor_Squadron_Land", "TIE_Interceptor_Squadron_Land", "TIE_Cimitarra_Squadron_Land", "TIE_Cimitarra_Squadron_Land", "Imperial_Light_Scout_Squad", "Imperial_Light_Scout_Squad", "ISD2", "ISD2", "ISD2", "VSD3", "VSD3"} 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"E_Tech4_Field_Com_Empire_Team"}
		
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





