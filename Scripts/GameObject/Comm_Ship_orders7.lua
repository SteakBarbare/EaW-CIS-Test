--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

ability_name = "POWER_TO_WEAPONS"

end



function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		
        if message == OnEnter then
				
		spawn_marker = Find_First_Object("Comm_Ship_orders7")
		friendly_player = spawn_marker.Get_Owner()
		
		FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		Sleep(2)
						
		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | Corvette | Frigate | Transport | Spacehero | Antifrigate | Anticapital")
								
		enemy_bombers = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Spacehero")
		enemy_starships = Find_All_Objects_Of_Type("Capital | Frigate | Structure | Corvette | Antifrigate | Anticorvette | Anticapital")
		
		Object.Activate_Ability(ability_name, true)
								
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
					enemy_unit_object = enemy_unit_list[1]
					enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
					enemy_bombers_object = enemy_bombers[1]
					enemy_starships_object = enemy_starships[1]
					local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
					local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
					local closest_starships = Find_Nearest(enemy_starships_object, enemy_player, true)
					if TestValid(closest_enemy) then
						if unit.Is_Category("Fighter") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_bombers)
						end
						if unit.Is_Category("Bomber") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_starships)
						end
					end	
			end
		end		
	
		Sleep(5)
		ScriptExit()
	end
	
end




