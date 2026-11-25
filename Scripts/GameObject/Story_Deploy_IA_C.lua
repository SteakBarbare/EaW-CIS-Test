--//Single Unit Upgrade made by Tau edited by Nomada_Firefox

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

        
        unit_type = "Let_Astilleros"
		
		unit_typeH = "Astilleros"
        
        upgrade_typeIA = "IA2"
		
		upgrade_typeH = "NoIA"

        
        
end

function State_Init( message )
        if message ~= OnEnter then return end
	
        
        if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
			units = Find_All_Objects_Of_Type( unit_type )

        
			units_in_orbit = {}
			for i,unit in pairs( units ) do
					
					if TestValid( unit ) and unit.Get_Planet_Location() == Object.Get_Planet_Location() then
							
							table.insert( units_in_orbit,unit )
					end
			end
			for i,unit in pairs( units_in_orbit ) do
				if TestValid( unit ) then   
					Spawn_Unit( Find_Object_Type( unit_typeH .. "_" .. upgrade_typeH ),Object.Get_Planet_Location(),unit.Get_Owner() )
					unit.Despawn()
				end	

			end
			Object.Despawn()
			Sleep( 1.0 )
			ScriptExit()
		end
        
        units = Find_All_Objects_Of_Type( unit_type )

        
        units_in_orbit = {}
        for i,unit in pairs( units ) do
                
                if TestValid( unit ) and unit.Get_Planet_Location() == Object.Get_Planet_Location() then
                        
                        table.insert( units_in_orbit,unit )
                end
        end


        
        for i,unit in pairs( units_in_orbit ) do
            if TestValid( unit ) then   
                Spawn_Unit( Find_Object_Type( unit_typeH .. "_" .. upgrade_typeIA ),Object.Get_Planet_Location(),unit.Get_Owner() )
                unit.Despawn()
			end	

        end

        
        Object.Despawn()
        Sleep( 1.0 )
        ScriptExit()
end





