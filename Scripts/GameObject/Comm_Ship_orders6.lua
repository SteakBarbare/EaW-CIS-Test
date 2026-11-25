--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)



end



function State_Init(message)
		if not Get_Game_Mode() ~= "Land" then
				ScriptExit()
		end 
		
    if message == OnEnter then
				
		spawn_marker = Find_First_Object("Comm_Ship_orders6")
		friendly_player = spawn_marker.Get_Owner()
		
		FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,10000)
		Sleep(2)
						
		enemy_unit_list = Find_All_Objects_Of_Type("Vehicle | Air | Infantry | Landhero")
				
				
		enemy_air = Find_All_Objects_Of_Type("Air")
		enemy_vehicle = Find_All_Objects_Of_Type("Vehicle")
		enemy_infantry = Find_All_Objects_Of_Type("Infantry")
		enemy_landhero = Find_All_Objects_Of_Type("Landhero")
						
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
				friendly_units_object = enemy_unit_list[1]
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				if TestValid(closest_enemy) then
					if unit.Is_Category("Air") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Infantry") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Vehicle") then
						unit.Attack_Move(closest_enemy)
					end
				end
			end
		end		
	
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
	
end




