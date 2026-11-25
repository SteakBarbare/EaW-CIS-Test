--Code made  by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")
require("PGBaseDefinitions")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

end



function State_Init(message)
		Game_Message("BOARDING_UNSUCCESSFUL") 
        if message == OnEnter then
			spawn_marker = Find_First_Object("XDestruir_UnidadesSX1")
			friendly_player = spawn_marker.Get_Owner()
			neutral = Find_Player("Hutts")

			friendly_unit_list = Find_All_Objects_Of_Type("Capital | Frigate | Corvette")
			
			range = 20000
							
				for k, unit in pairs(friendly_unit_list) do
					if TestValid(unit) then
								commship_distance = spawn_marker.Get_Distance(unit)
								if unit.Is_Category("Capital") then
									unit.Take_Damage(1000000000)
								end
								if unit.Is_Category("Frigate") then
									unit.Take_Damage(1000000000)
								end
								if unit.Is_Category("Corvette") then
									unit.Take_Damage(1000000000)
								end
					end
				end		
			
			
			Sleep(5)
			Object.Despawn()	
			ScriptExit()
	end
	
end




