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
				Game_Message("TEXT_MESSAGE_INT_CAPTURE_INACTIVE")
					ScriptExit()
				end
			end
		end
		
        if message == OnEnter then
		spawn_marker = Find_First_Object("Comm_Ship_orders3")
		friendly_player = spawn_marker.Get_Owner()
		
		friendly_unit_list = Find_All_Objects_Of_Type("Spacehero | Corvette | Frigate | Antifrigate | Anticapital | Structure")
		
		range = 2000
						
			for k, unit in pairs(friendly_unit_list) do
				if TestValid(unit) then
							commship_distance = spawn_marker.Get_Distance(unit)
							if unit.Is_Category("Frigate") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
								unit.Hyperspace_Away()
								ScriptExit()
							end
							if unit.Is_Category("Corvette") and not unit.Is_Category("AntiFighter") and not unit.Is_Category("AntiBomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
								unit.Hyperspace_Away()
								ScriptExit()
							end
							if unit.Is_Category("AntiFrigate") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
								unit.Hyperspace_Away()
								ScriptExit()
							end
							if unit.Is_Category("AntiCapital") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Reinforce_Unit(unit.Get_Type(), spawn_marker.Get_Position(), spawn_marker.Get_Owner(),false,false)	
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								unit.Play_SFX_Event("Unit_Ship_Hyperspace_Exit")
								unit.Hyperspace_Away()
								ScriptExit()
							end
							if unit.Is_Category("Structure") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Get_Shield() < 0.80 then
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								Sleep(10)
								unit.Change_Owner(spawn_marker.Get_Owner())
								ScriptExit()
							end
							if unit.Is_Category("Structure") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() < 0.25 and unit.Get_Hull() > 0.25 then
								unit.Take_Damage(1000000)
								Game_Message("BOARDED_SHIP_DESTROYED")
								ScriptExit()
							end
							if unit.Is_Category("Frigate") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() < 0.25 and unit.Get_Hull() > 0.25 then
								unit.Take_Damage(1000000)
								Game_Message("BOARDED_SHIP_DESTROYED")
								ScriptExit()
							end
							if unit.Is_Category("Corvette") and not unit.Is_Category("AntiFighter") and not unit.Is_Category("AntiBomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() < 0.25 and unit.Get_Hull() > 0.25 then
								unit.Take_Damage(1000000)
								Game_Message("BOARDED_SHIP_DESTROYED")
								ScriptExit()
							end
							if unit.Is_Category("AntiFrigate") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() < 0.25 and unit.Get_Hull() > 0.25 then
								unit.Take_Damage(1000000)
								Game_Message("BOARDED_SHIP_DESTROYED")
								ScriptExit()
							end
							if unit.Is_Category("AntiCapital") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() < 0.25 and unit.Get_Hull() > 0.25 then
								unit.Take_Damage(1000000)
								Game_Message("BOARDED_SHIP_DESTROYED")
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




