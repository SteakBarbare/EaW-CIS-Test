--Code by Nomada_Firefox  O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "MT_AT_Furgan_Re", "MT_AT_Furgan_Re", "MT_AT_Furgan_Re", "MT_AT_Furgan_Re" } 
	
end
function State_Init(message)
	if message == OnEnter then
		landing_marker = Find_First_Object("Furgan_MTAT")
		player = landing_marker.Get_Owner()
		SpawnList(unit_list, landing_marker, player, true, false)
		Sleep(15)
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




