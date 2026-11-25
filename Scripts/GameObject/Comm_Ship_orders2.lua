--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

	ability_name_01 = "POWER_TO_WEAPONS"
	ability_name_02 = "BLAST"

end



function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		
        if message == OnEnter then
		
			if Object.Is_Ability_Ready(ability_name_01) then
				Object.Activate_Ability(ability_name_01, true)
			end
			if Object.Is_Ability_Ready(ability_name_02) then
				Object.Activate_Ability(ability_name_02, true)
			end
				
		spawn_marker = Find_First_Object("Comm_Ship_orders2")
		friendly_player = spawn_marker.Get_Owner()
		
		FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		Sleep(2)
						
		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | Corvette | Frigate | Transport | Spacehero | Antifrigate | Anticapital")
								
		enemy_bombers = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Spacehero")
		enemy_starships = Find_All_Objects_Of_Type("Capital | Frigate | Structure | Corvette | Super")
								
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
						if unit.Is_Category("Corvette") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_bombers)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Frigate") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_starships)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Spacehero") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_enemy)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Capital") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_enemy)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Super") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_starships)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
					end	
			end
		end		
	
		Sleep(5)
		ScriptExit()
	end
	
end




