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
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end 
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
		any_active = false
		for i,interdictor in pairs(interdictor_table) do
			if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") then
				any_active = true
				if any_active then
				Game_Message("TEXT_MESSAGE_REB_INTERDICTOR_ACTIVE")
					ScriptExit()
				end
			end
		end
		
        if message == OnEnter then
		spawn_marker = Find_First_Object("Comm_Ship_orders3c")
		friendly_player = spawn_marker.Get_Owner()
		neutral = Find_Player("Neutral")
		friendly_unit_list = Find_All_Objects_Of_Type("Katana_Dreadnought")
		
		range = 1000
						
			for k, unit in pairs(friendly_unit_list) do
				if TestValid(unit) then
							commship_distance = spawn_marker.Get_Distance(unit)
							if unit.Get_Owner() == neutral and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() then
								unit.Change_Owner(spawn_marker.Get_Owner())
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								ScriptExit()
							end
				end
			end		
		Game_Message("BOARDING_UNSUCCESSFUL") 
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
	
end




