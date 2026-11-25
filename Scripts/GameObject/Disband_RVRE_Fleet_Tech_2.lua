--// edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "IA_RVRE_Mc120", "IA_RVRE_Mc80a", "IA_RVRE_Mc80", "IA_RVRE_Mc80b", "IA_RVRE_MC40v03", "IA_RVRE_MC40v02", "IA_RVRE_Dreadnought_Up", "IA_RVRE_Dreadnought_Up", "IA_RVRE_Liberator_Up", "IA_RVRE_Marauder_Missile", "IA_RVRE_Marauder_Missile", "IA_RVRE_R_CR_CVM", "IA_RVRE_R_CR_CVM", "IA_RVRE_R_CR_CVM", "IA_RVRE_Corellian_Gunboat", "IA_RVRE_Corellian_Gunboat", "IA_RVRE_Corellian_Gunboat", "IA_RVRE_Nebulon_B2R", "IA_RVRE_Nebulon_B2R" } 

end

function State_Init( message )
      if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		SpawnList(unit_list, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)

		GRTeam_1 = {"RVRE_Fleet_Tech_2"}
		
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





