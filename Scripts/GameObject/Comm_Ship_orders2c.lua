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
				
		spawn_marker = Find_First_Object("Comm_Ship_orders2c")
		friendly_player = spawn_marker.Get_Owner()
		
		FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,22000)
		Sleep(2)
		
		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | AntiBomber | AntiTransport | Anticorvette | Antifrigate | AntiFighter | Anticapital")
						
		enemy_bombers = Find_All_Objects_Of_Type("Bomber")
		enemy_fighters = Find_All_Objects_Of_Type("Fighter")
		enemy_transports = Find_All_Objects_Of_Type("Transport")
		enemy_corvettes = Find_All_Objects_Of_Type("Corvette")
		enemy_frigates = Find_All_Objects_Of_Type("Frigate")
		enemy_capitals = Find_All_Objects_Of_Type("Capital")
				
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
				enemy_bombers_object = enemy_bombers[1]
				enemy_fighters_object = enemy_fighters[1]
				enemy_transports_object = enemy_transports[1]
				enemy_corvettes_object = enemy_corvettes[1]
				enemy_frigates_object = enemy_frigates[1]
				enemy_capitals_object = enemy_capitals[1]
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
				local closest_fighters = Find_Nearest(enemy_fighters_object, enemy_player, true)
				local closest_transports = Find_Nearest(enemy_transports_object, enemy_player, true)
				local closest_corvettes = Find_Nearest(enemy_corvettes_object, enemy_player, true)
				local closest_frigates = Find_Nearest(enemy_frigates_object, enemy_player, true)
				local closest_capitals = Find_Nearest(enemy_capitals_object, enemy_player, true)
					if TestValid(closest_enemy) then
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiFighter") then
							unit.Attack_Move(closest_fighters)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiBomber") then
							unit.Attack_Move(closest_bombers)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("Antifrigate") then
							unit.Attack_Move(closest_frigates)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("Anticorvette") then
							unit.Attack_Move(closest_corvettes)
							unit.Attach_Particle_Effect("Give_Orders_Particle")
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiTransport") then
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




