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
		
		
        if message == OnEnter then
		spawn_marker = Find_First_Object("Comm_Ship_orders3d")
		friendly_player = spawn_marker.Get_Owner()
		
		friendly_unit_list = Find_All_Objects_Of_Type("Spacehero | Corvette | Frigate | Antifrigate | Anticapital | Structure")
		
		range = 2000
						
			for k, unit in pairs(friendly_unit_list) do
				if TestValid(unit) then
							commship_distance = spawn_marker.Get_Distance(unit)
							if unit.Is_Category("Frigate") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								ScriptExit()
							end
							if unit.Is_Category("Corvette") and not unit.Is_Category("AntiFighter") and not unit.Is_Category("AntiBomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								ScriptExit()
							end
							if unit.Is_Category("AntiFrigate") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								ScriptExit()
							end
							if unit.Is_Category("AntiCapital") and not unit.Is_Category("Fighter") and not unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Are_Engines_Online() and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
								ScriptExit()
							end
							if unit.Is_Category("Structure") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range and unit.Get_Hull() > 0.25 and unit.Get_Shield() < 0.80 then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Boarded_Ship_Particles")
								Game_Message("BOARDING_SUCCESSFUL")
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




