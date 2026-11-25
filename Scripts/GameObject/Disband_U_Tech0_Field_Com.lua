--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "AT_ATs_WalkerU_Company", "UV_Sandcrawler_Company", "Hu_Adv_Hvy_SailBarge_Company", "Hutts_Hvy_Skiff_Company", "UV_Artillery_Tank_Company", "MZ8_Pulse_Cannon_Tank_Advanced_Company", "Canderous_Assault_Tank_Company", "AT_AT_Light_Walker_Company", "AT_AT_Light_Walker_Company", "AT_ATs_WalkerU_Company", "AT_ATs_WalkerU_Company", "Canderous_Flame_Tank_Company", "MAL_Rocket_Vehicle_Company", "LAATU_Company_Special", "BS_Venator", "BS_Venator", "BS_Venator", "BS_RandEcliptic", "BS_RandEcliptic" }
		

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
		
		GRTeam_1 = {"U_Tech0_Field_Com_BlackSun_Team"}
		
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





