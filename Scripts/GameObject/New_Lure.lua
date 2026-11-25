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
				
		spawn_marker = Find_First_Object("New_Lure")
		friendly_player = spawn_marker.Get_Owner()

		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber")
						
		enemy_bombers = Find_All_Objects_Of_Type("Bomber")
		enemy_fighters = Find_All_Objects_Of_Type("Fighter")
		
				
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
				enemy_bombers_object = enemy_bombers[1]
				enemy_fighters_object = enemy_fighters[1]

				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
				local closest_fighters = Find_Nearest(enemy_fighters_object, enemy_player, true)

					if TestValid(closest_enemy) then
						if unit.Is_Category("Bomber") and unit.Is_Category("Antibomber") then
							unit.Attack_Move(closest_bombers)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiFighter") then
							unit.Attack_Move(closest_fighters)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
					end	
			end
		end		
	
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
	
end




