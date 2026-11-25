--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Armor_Group", "Imperial_Tie_Tank_Brigade", "Imperial_Artillery_Corp", "AT_RCT_Walker_Company", "Imperial_ATAR_Squad", "TIE_Fighter_Squadron_Land", "TIE_Fighter_Squadron_Land", "TIE_Bomber_Squadron_Land", "TIE_Bomber_Squadron_Land", "LAVr_Transport_Group", "Ch_MTV_7_Company", "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "VSD2", "VSD2"}
			
		

end

function State_Init( message )
	if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"E_Tech3_Field_Com_Empire_Team"}
		
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





