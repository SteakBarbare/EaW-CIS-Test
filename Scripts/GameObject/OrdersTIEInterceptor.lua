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
				
		spawn_marker = Find_First_Object("OrdersTIEInterceptor")
		friendly_player = spawn_marker.Get_Owner()
		
		FogOfWar.Temporary_Reveal(friendly_player,spawn_marker,25000)
		Sleep(2)
		--busqueda de todos los enemigos
		enemy_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber | Corvette | Frigate | Transport | Spacehero | Antifrigate | Anticapital")
		--los bombarderos enemigos como posible blanco especifico						
		enemy_bombers = Find_All_Objects_Of_Type("Bomber")
		--tipo de nave enemiga como posible blanco
		enemy_starships = Find_All_Objects_Of_Type("Frigate | Structure")
		
		escaramuza = Find_First_Object("Team_00_Base_Position_Marker")
		
		range = 150
								
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
					distancia = spawn_marker.Get_Distance(unit)
					enemy_unit_object = enemy_unit_list[1]
					enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(friendly_player)
					enemy_bombers_object = enemy_bombers[1]
					enemy_starships_object = enemy_starships[1]
					local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
					local closest_bombers = Find_Nearest(enemy_bombers_object, enemy_player, true)
					local closest_starships = Find_Nearest(enemy_starships_object, enemy_player, true)
					if TestValid(closest_enemy) then
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiBomber") and unit.Get_Owner() == spawn_marker.Get_Owner() and not escaramuza and distancia < range then
							unit.Attack_Target(Find_Nearest(unit, closest_bombers, enemy_player, false))
							--sacado de unit.Attack_Target(Find_Nearest(unit, "Fighter", empire_player, false))
						end
						if unit.Is_Category("Fighter") and unit.Is_Category("AntiBomber") and unit.Get_Owner() == spawn_marker.Get_Owner() and distancia < range then
							unit.Attack_Move(Find_Nearest(unit, closest_bombers, enemy_player, false))
							--sacado de unit.Attack_Target(Find_Nearest(unit, "Fighter", empire_player, false))
						end
					end	
			end
		end		
	
		Sleep(5)
		ScriptExit()
	end
	
end




