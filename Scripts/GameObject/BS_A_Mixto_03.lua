--Code by Nomada_Firefox  O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "C_BattleDroid_Squad", "C_PlexDroidB1_Squad", "MTT_Company", "Stap", "Stap", "Stap", "Stap", "Stap", "Droideka_Mk1", "Droideka_Mk1", "Droideka_Mk1", "Droideka_Mk1" } 
	
end


function State_Init(message)
	if message == OnEnter then
		spawn_marker = Find_First_Object("T1FC_Unit13BS")
		player = spawn_marker.Get_Owner()
		SpawnList(unit_list, spawn_marker, player, true, false)
		Sleep(15)
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		
		if Object.Get_Owner().Is_Human() then
			Object.Despawn()	
			ScriptExit()
		end
				
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				if TestValid(closest_enemy) then
					if unit.Is_Category("Air") and unit.Get_Owner() == spawn_marker.Get_Owner() then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Infantry") and unit.Get_Owner() == spawn_marker.Get_Owner() then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Vehicle") and unit.Get_Owner() == spawn_marker.Get_Owner() then
						unit.Attack_Move(closest_enemy)
					end
				end
			end
		end		
		
	end
end






