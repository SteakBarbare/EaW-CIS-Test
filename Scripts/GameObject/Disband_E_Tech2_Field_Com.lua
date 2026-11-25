--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "AT_HE_Company", "AT_HE_Company", "AT_HE_Company", "AT_HE_Company", "AT_HE_Company", "ATOT_Company", "UTAT_COMPANY", "UTAT_COMPANY", "Imperial_Anti_Infantry_Brigade", "Imperial_Light_Recon_Squad", "Imperial_Light_Recon_Squad", "Empire_Heavy_Artillery_Corp", "1L_Repulsor_Tank_Group", "Empire_AT_APMk2_Company", "TIE_Fighter_Squadron_Land", "TIE_Fighter_Squadron_Land", "TIE_Bomber_Squadron_Land", "TIE_Bomber_Squadron_Land", "Victory_Destroyer", "Victory_Destroyer", "Victory_Destroyer", "E_AcclamatorII", "E_AcclamatorII" } 
		

end

function State_Init( message )
    if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"E_Tech2_Field_Com_Empire_Team"}
		
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





