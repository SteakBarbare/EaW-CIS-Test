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
			spawn_marker = Find_First_Object("XCambiar_UnidadesX1")
			friendly_player = spawn_marker.Get_Owner()
			neutral = Find_Player("Hutts")

			friendly_unit_list = Find_All_Objects_Of_Type("Infantry | Vehicle | Air | Landhero")
			
			range = 20000
							
				for k, unit in pairs(friendly_unit_list) do
					if TestValid(unit) then
								commship_distance = spawn_marker.Get_Distance(unit)
								if unit.Is_Category("Infantry") then
									unit.Change_Owner(spawn_marker.Get_Owner())
								end
								if unit.Is_Category("Vehicle") then
									unit.Change_Owner(spawn_marker.Get_Owner())
								end
								if unit.Is_Category("Air") then
									unit.Change_Owner(spawn_marker.Get_Owner())
								end
								if unit.Is_Category("Landhero") then
									unit.Change_Owner(spawn_marker.Get_Owner())
								end
					end
				end		
			
			
			Sleep(5)
			Object.Despawn()	
			ScriptExit()
	end
	
end




