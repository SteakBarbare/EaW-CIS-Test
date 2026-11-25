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
		spawn_marker = Find_First_Object("Comm_Ship_orders1c")
		friendly_player = spawn_marker.Get_Owner()
		
		ShipRetreating = Find_First_Object("Reprisal_ISD")
		
		range = 500
		if ShipRetreating then
			commship_distance = spawn_marker.Get_Distance(ShipRetreating)
			if commship_distance < range and ShipRetreating.Are_Engines_Online() then
				Reinforce_Unit(ShipRetreating.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
				ShipRetreating.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
				ShipRetreating.Hyperspace_Away()
			end
		end

	end
	
end




