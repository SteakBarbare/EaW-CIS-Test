--// Single Unit Upgrade
--// Made by Tau and edited by Nomada_Firefox

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

        
        unit_type = "Astilleros_NoIA"

        
        
        
        upgrade_cost = 1

        
        upgrade_quantity = 1
end

function State_Init( message )
        if message ~= OnEnter then return end

        
        if Get_Game_Mode() ~= "Galactic" then ScriptExit() end

        
        units = Find_All_Objects_Of_Type( unit_type )

        
        units_in_orbit = {}
        for i,unit in pairs( units ) do
                
                if TestValid( unit ) and unit.Get_Planet_Location() == Object.Get_Planet_Location() then
                        
                        table.insert( units_in_orbit,unit )
                end
        end

        
        if table.getn( units ) < 1 or table.getn( units_in_orbit ) < 1 then
                Object.Get_Owner().Give_Money( upgrade_cost )
                Object.Despawn()
                Sleep( 1.0 )
                ScriptExit()
        end

        
        num_upgraded = 0
        for i,unit in pairs( units_in_orbit ) do
                
                if num_upgraded >= upgrade_quantity then break end

                
                unit.Despawn()

                
                num_upgraded = num_upgraded + 1
		
        end

        
	
        Object.Despawn()
        Sleep( 1.0 )
        ScriptExit()
end





