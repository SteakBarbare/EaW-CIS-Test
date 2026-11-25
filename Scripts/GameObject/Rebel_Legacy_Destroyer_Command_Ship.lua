--Edited by Nomada_Firefox
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
		command_ship = Find_First_Object("Legacy_Destroyer_Reb")
		command_ship.Attach_Particle_Effect("Rebel_Force_Convert_Particles")
		spawn_marker = Find_First_Object("Rebel_Legacy_Destroyer_Command_Ship")
		republic_player = spawn_marker.Get_Owner()
		enemy_unit_list = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Frigate | Capital | Transport | Structure | Spacehero | Antifrigate | Anticorvette | Anticapital")
				
		reveal_marker = Find_First_Object("Defending Forces Position")
		
		FogOfWar.Temporary_Reveal(republic_player,reveal_marker,22000)
						
		republic_unit_list = Find_All_Objects_Of_Type(republic_player)
		enemy_bombers = Find_All_Objects_Of_Type("Bomber | Fighter | Corvette | Spacehero")
		enemy_starships = Find_All_Objects_Of_Type("Capital | Frigate | Structure | Corvette | Antifrigate | Anticorvette | Anticapital")
				
		for k, unit in pairs(republic_unit_list) do
			if TestValid(unit) then
					enemy_unit_object = enemy_unit_list[1]
					enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(republic_player)
					enemy_bombers_object = enemy_bombers[1]
					enemy_starships_object = enemy_starships[1]
					local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
					local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
					local closest_starships = Find_Nearest(enemy_starships_object, enemy_player, true)
					if TestValid(closest_enemy) then
						if unit.Is_Category("Capital") then
							unit.Attack_Move(closest_starships)
						end
						if unit.Is_Category("Frigate") then
							unit.Attack_Move(closest_starships)
						end
						if unit.Is_Category("Corvette") then
							unit.Attack_Move(closest_bombers)
						end
						if unit.Is_Category("Bomber") then
							unit.Attack_Move(closest_starships)
						end
						if unit.Is_Category("Fighter") then
							unit.Attack_Move(closest_bombers)
						end
						if unit.Is_Category("Spacehero") then
							unit.Attack_Move(closest_enemy)
						end
						if unit.Is_Category("AntiFrigate") then
							unit.Attack_Move(closest_enemy)
						end
						if unit.Is_Category("AntiCapital") then
							unit.Attack_Move(closest_starships)
						end
					end	
			end
		end		
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
	
end




