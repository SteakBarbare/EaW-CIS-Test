--Code made at a first place with the reinforcement Marker by Sidious Invader 
-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

		

end

function State_Init(message)

		if Object.Get_Owner().Is_Human() then
				Object.Despawn()	
				ScriptExit()
		end	
		
	if message == OnEnter then
		player = Object.Get_Owner()
		units_List = Find_All_Objects_Of_Type("Air | Vehicle | Infantry | Landhero")
		
		for k, unit in pairs(units_List) do
			if TestValid(unit) then
					units_List_object = units_List[1]
					enemy_player = units_List_object.Get_Owner().Is_Enemy(player)
					local closest_enemy = Find_Nearest(units_List_object, enemy_player, true)
					if TestValid(closest_enemy) then
						if unit.Is_Category("Air") or unit.Is_Category("Vehicle") or unit.Is_Category("Infantry") or unit.Is_Category("Landhero") then
							unit.Attack_Move(closest_bombers)
						end
					end	
			end
		end	
	end	

end
