--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Imperial_ATATMKII_Company", "Imperial_ATATMKII_Company", "Imperial_ATATMKII_Company", "Imperial_ATATMKII_Company", "Grupo_CaminantesX1_Normal", "Ch_S1_Tank_Armor_Group", "ATSTAP_AA_Walker_Company", "AT_HT_Walker_Company", "Imperial_ATLC_Company", "Ch_Heavy_Artillery_Group", "Missile_Gunboat_Squadron_Land", "Missile_Gunboat_Squadron_Land", "TIE_Avenger_Squadron_Land", "TIE_Avenger_Squadron_Land", "Lancet_Air_Wing", "Lancet_Air_Wing", "Ch_Patrol_Speeder_Armor_Group", "Ch_Patrol_Speeder_Armor_Group", "ISD3", "ISD3", "ISD3", "Faragut", "Faragut" } 
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"E_Tech5_Field_Com_Empire_Team"}
		
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





