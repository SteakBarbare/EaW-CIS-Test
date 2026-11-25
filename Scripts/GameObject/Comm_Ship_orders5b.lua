--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)



end



function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		
        if message == OnEnter then
				
			spawn_marker = Find_First_Object("Comm_Ship_orders5b")
			friendly_player = spawn_marker.Get_Owner()
			
			range = 605
			
			FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,2000)
			Sleep(2)
			
			enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | Corvette | Frigate | Transport | Spacehero | Antifrigate | Anticapital")
										
			enemy_bombers = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Spacehero")
			enemy_starships = Find_All_Objects_Of_Type("Capital | Frigate | Structure | Corvette | Antifrigate | Anticorvette | Anticapital")
									
			for k, unit in pairs(enemy_unit_list) do
				if TestValid(unit) then
						orders_distance = spawn_marker.Get_Distance(unit)
						enemy_unit_object = enemy_unit_list[1]
						enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
						enemy_bombers_object = enemy_bombers[1]
						enemy_starships_object = enemy_starships[1]
						local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
						local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
						local closest_starships = Find_Nearest(enemy_starships_object, enemy_player, true)
						if TestValid(closest_enemy) then
							if unit.Is_Category("Fighter") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_bombers)
							end
							if unit.Is_Category("Bomber") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Corvette") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Capital") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Super") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Structure") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Transport") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
							if unit.Is_Category("Spacehero") and orders_distance < range and unit.Get_Owner() == spawn_marker.Get_Owner() and unit.Get_Hull() < 0.99 then
								unit.Move(closest_starships)
							end
						end	
				end
			end		
	
			Sleep(5)
			Object.Despawn()	
			ScriptExit()
		end
	
end




