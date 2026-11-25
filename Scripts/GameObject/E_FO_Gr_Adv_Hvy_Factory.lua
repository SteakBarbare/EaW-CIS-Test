--// Single Unit Upgrade
--// Made by Tau - www.alphabluemodding.com/forum
--// edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )
	
	unit_type = "EVFO_Ground_Advanced_Vehicle_Factory"	
	
	unit_list1 = { "EVFO_Ground_Advanced_Vehicle_Factory" } 

end

function State_Init( message )
        if message ~= OnEnter then return end 
		Sleep(5)
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		units = Find_All_Objects_Of_Type( unit_type )
        
        units_in_orbit = {}
        for i,unit in pairs( units ) do
                
                if TestValid( unit ) and unit.Get_Planet_Location() == Object.Get_Planet_Location() then
                        Object.Despawn() 
						Sleep( 1.0 )
						ScriptExit()
                end
        end
		
		SpawnList(unit_list1, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
	
	Object.Despawn() 
        Sleep( 1.0 )
	ScriptExit()
end





