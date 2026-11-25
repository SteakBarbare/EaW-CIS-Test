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
		spawn_marker = Find_First_Object("Comm_Ship_orders1b")
		friendly_player = spawn_marker.Get_Owner()
		
		friendly_unit_list = Find_All_Objects_Of_Type("Spacehero | Corvette | Frigate | Antifrigate | Anticapital")
		
		range = 1250
		
				
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) then
						commship_distance = spawn_marker.Get_Distance(unit)
						if unit.Is_Category("Frigate") and unit.Get_Owner() == spawn_marker.Get_Owner() and commship_distance < range and unit.Are_Engines_Online() and unit.Get_Hull() > 0.90 and unit.Get_Shield() > 0.90 then
							Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
							unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
							unit.Hyperspace_Away()
						end
						if unit.Is_Category("Corvette") and not unit.Is_Category("AntiFighter") and not unit.Is_Category("AntiBomber") and unit.Get_Hull() > 0.90 and unit.Get_Shield() > 0.90 and unit.Get_Owner() == spawn_marker.Get_Owner() and commship_distance < range and unit.Are_Engines_Online() then
							Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
							unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
							unit.Hyperspace_Away()
						end
						if unit.Is_Category("AntiFrigate") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Hull() > 0.90 and unit.Get_Shield() > 0.90 and unit.Get_Owner() == spawn_marker.Get_Owner() and commship_distance < range and unit.Are_Engines_Online() then
							Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
							unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
							unit.Hyperspace_Away()
						end
						if unit.Is_Category("AntiCapital") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Hull() > 0.90 and unit.Get_Shield() > 0.90 and unit.Get_Owner() == spawn_marker.Get_Owner() and commship_distance < range and unit.Are_Engines_Online() then
							Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
							unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
							unit.Hyperspace_Away()
						end
						if unit.Is_Category("Spacehero") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Hull() > 0.90 and unit.Get_Shield() > 0.90 and unit.Get_Owner() == spawn_marker.Get_Owner() and commship_distance < range and unit.Are_Engines_Online() then
							Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
							unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
							unit.Hyperspace_Away()
						end
			end
		end		
	end
	
end




