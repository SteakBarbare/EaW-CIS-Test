--Code by Nomada_Firefox  O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")

function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "Z_Canderous_Assault_Tank_Company", "Z_AT_AT_Light_Walker_Company", "Z_UV_Avalanche_Tank_Squad", "Z_UV_Artillery_Tank_Company" } 
	unit_listIA = { "Z_UV_Avalanche_Tank_Squad" } 
	
	
	
end
function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("MZ8ARB")
		player = landing_zone.Get_Owner()
	
		friendly_units = {}
		friendly_unitsB = {}
	
		friendly_unit_list = Find_All_Objects_Of_Type("Air | Vehicle")
		friendly_unit_listB = Find_All_Objects_Of_Type("Structure")
	
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == Object.Get_Owner() then
				table.insert( friendly_units,unit )
			end
		end
		
		for k, unit in pairs(friendly_unit_listB) do
			if TestValid(unit) and unit.Get_Owner() == Object.Get_Owner() then
				table.insert( friendly_unitsB,unit )
			end
		end
		
		if table.getn( friendly_units ) >= 10 and table.getn( friendly_unitsB ) >= 3 and not Object.Get_Owner().Is_Human() then
				ReinforceList(unit_listIA, landing_zone, player, true, true, true, Move_Order1)
				Sleep(15)
                ScriptExit()
        end
	
		
		ReinforceList(unit_list, landing_zone, player, true, true, true, Move_Order1)
	end
end
function Move_Order1()
		Sleep(15)
		player = landing_zone.Get_Owner()
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		friendly_unit_list = Find_All_Objects_Of_Type(player)
		
		if Object.Get_Owner().Is_Human() then
			Object.DeSpawn()	
			ScriptExit()
		end
				
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) then
				friendly_units_object = friendly_unit_list[1]
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
end




