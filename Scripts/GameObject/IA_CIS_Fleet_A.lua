--Code made by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = { "RepR17", "RepR02" } 
unit_list2 = { "RepR10", "Rep_Valiant", "REP_Procurator_II" } 

end

				
function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
				
	spawn_marker = Find_First_Object("IA_CIS_Fleet_A")
	player = spawn_marker.Get_Owner()				
	
	friendly_units = {}
		
	friendly_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Capital")
		
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == Object.Get_Owner() then
				table.insert( friendly_units,unit )
			end
		end
		
		if table.getn( friendly_units ) >= 15 then
               Game_Message("ARE_TOOMANY")
                ScriptExit()
        end
	
		if message == OnEnter then	
			if spawn_marker then
				grupo_01 = SpawnList(unit_list1, spawn_marker, player, true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
			end
			if spawn_marker then
				grupo_02 = SpawnList(unit_list2, spawn_marker, player, true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
			end
			
		end
		
		if Object.Get_Owner().Is_Human() then
			Object.Despawn()	
			ScriptExit()
		end
		
				
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) then
				friendly_units_object = friendly_unit_list[1]
				enemy_player = friendly_units_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(friendly_units_object, enemy_player, true)
				if TestValid(closest_enemy) then
					if unit.Is_Category("Corvette") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Frigate") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Capital") then
						unit.Attack_Move(closest_enemy)
					end
				end
			end
		end	
		
	end	
end
