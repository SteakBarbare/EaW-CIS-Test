--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)
	

end



function State_Init(message)
		if Get_Game_Mode() ~= "Land" then
				ScriptExit()
		end 
		
		if message == OnEnter then
				
		spawn_marker = Find_First_Object("Motti_Gr_Marker")
		friendly_player = spawn_marker.Get_Owner()
						
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Vehicle | Infantry | Landhero | Structure")
				
		--FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		--FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		
		enemy_airunits = Find_All_Objects_Of_Type("Air")
		enemy_vehicles = Find_All_Objects_Of_Type("Vehicle")
		enemy_infantry = Find_All_Objects_Of_Type("Infantry")
		enemy_landhero = Find_All_Objects_Of_Type("Landhero")
		enemy_structure = Find_All_Objects_Of_Type("Structure")
								
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
					enemy_unit_object = enemy_unit_list[1]
					enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
					enemy_airunits_object = enemy_airunits[1]
					enemy_vehicles_object = enemy_vehicles[1]
					enemy_infantry_object = enemy_infantry[1]
					enemy_landhero_object = enemy_landhero[1]
					enemy_structure_object = enemy_structure[1]
					
					local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
					local closest_airunits = Find_Nearest(enemy_airunits_object, enemy_player, true)
					local closest_vehicles = Find_Nearest(enemy_vehicles_object, enemy_player, true)
					local closest_infantry = Find_Nearest(enemy_infantry_object, enemy_player, true)
					local closest_landhero = Find_Nearest(enemy_landhero_object, enemy_player, true)
					local closest_structure = Find_Nearest(enemy_structure_object, enemy_player, true)
					if TestValid(closest_enemy) then
						
						if unit.Is_Category("Air") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_airunits)
						end
						if unit.Is_Category("Vehicle") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_vehicles)
						end
						if unit.Is_Category("Infantry") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_infantry)
						end
						if unit.Is_Category("Landhero") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_structure)
						end
					end	
			end
		end		
	
		Sleep(5)
		ScriptExit()
	end
	
end




