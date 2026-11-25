--Edited by Nomada_Firefox 

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
        Define_State( "State_Init",State_Init )

	unit_list = { "Republic_Stormtrooper_Squad", "ClonPhase2Plex_Squad", "Republic_EWEB_troopers_Phase2_Squad", "Rep_Hovermoto_Phase2_Squad" }
		
end
function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("Rep_Unit_Mix02")
		player = landing_zone.Get_Owner()
		SpawnList(unit_list, landing_zone, player, true, false)
		Sleep(15)
		Nave1 = Find_All_Objects_Of_Type("Rep_Unit_Mix02")
		
		Sleep(5)
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		friendly_unit_list = Find_All_Objects_Of_Type(player)
		
		
		if Object.Get_Owner().Is_Human() then
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
end






