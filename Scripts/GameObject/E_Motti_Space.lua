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
		
				
		spawn_marker = Find_First_Object("Motti_S_Marker")
		friendly_player = spawn_marker.Get_Owner()
						
		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | Corvette | Frigate | Transport | Spacehero | Super | Structure")
				
		--FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		--FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
						
		enemy_bombers = Find_All_Objects_Of_Type("Bomber")
		enemy_fighters = Find_All_Objects_Of_Type("Bomber")
		enemy_corvette = Find_All_Objects_Of_Type("Corvette")
		enemy_frigate = Find_All_Objects_Of_Type("Frigate")
		enemy_capital = Find_All_Objects_Of_Type("Capital")
		enemy_transport = Find_All_Objects_Of_Type("Transport")
		enemy_structure = Find_All_Objects_Of_Type("Structure")
		enemy_super = Find_All_Objects_Of_Type("Super")
		enemy_spacehero = Find_All_Objects_Of_Type("Spacehero")
								
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
					enemy_unit_object = enemy_unit_list[1]
					enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
					enemy_bombers_object = enemy_bombers[1]
					enemy_fighters_object = enemy_fighters[1]
					enemy_corvette_object = enemy_corvette[1]
					enemy_frigate_object = enemy_frigate[1]
					enemy_capital_object = enemy_capital[1]
					enemy_transport_object = enemy_transport[1]
					enemy_structure_object = enemy_structure[1]
					enemy_super_object = enemy_super[1]
					enemy_spacehero_object = enemy_spacehero[1]
					
					local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
					local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
					local closest_fighters = Find_Nearest(enemy_fighters_object, enemy_player, true)
					local closest_corvette = Find_Nearest(enemy_corvette_object, enemy_player, true)
					local closest_frigate = Find_Nearest(enemy_frigate_object, enemy_player, true)
					local closest_capital = Find_Nearest(enemy_capital_object, enemy_player, true)
					local closest_transport = Find_Nearest(enemy_transport_object, enemy_player, true)
					local closest_structure = Find_Nearest(enemy_structure_object, enemy_player, true)
					local closest_super = Find_Nearest(enemy_super_object, enemy_player, true)
					local closest_spacehero = Find_Nearest(enemy_spacehero_object, enemy_player, true)
										
					if TestValid(closest_enemy) then
						if unit.Is_Category("Fighter") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_bombers)
						end
						if unit.Is_Category("Bomber") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_capital)
						end
						if unit.Is_Category("Corvette") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_corvette)
						end
						if unit.Is_Category("Frigate") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_frigate)
						end
						if unit.Is_Category("Spacehero") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_spacehero)
						end
						if unit.Is_Category("Capital") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_capital)
						end
						if unit.Is_Category("Transport") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_transport)
						end
						if unit.Is_Category("Super") and unit.Get_Owner() == spawn_marker.Get_Owner() then
							unit.Attack_Move(closest_capital)
						end
					end	
			end
		end		
	
		Sleep(5)
		ScriptExit()
	end
	
end




