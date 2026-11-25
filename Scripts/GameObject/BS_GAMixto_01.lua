--Code by Nomada_Firefox  O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "BS_B1Droid_Sniper_Squad", "C_BattleDroid_Squad", "BS_PlexDroidB1_Squad", "C_Stap_Squad" } 
	
end
function State_Init(message)
	if message == OnEnter then
		
		if not Object.Get_Owner().Is_Human() then
			BU01 = Find_First_Object("U_Ground_Barracks")
			BU02 = Find_First_Object("U_Ground_Droid_Works")
			BU03 = Find_First_Object("U_Ground_Vehicle_Factory")
			BU04 = Find_First_Object("UXSoloIA_STR_01")
			Sleep(1)
			
			if BU01 then
				Object.DeSpawn()	
				ScriptExit()
			end
			if BU02 then
				Object.DeSpawn()	
				ScriptExit()
			end
			if BU03 then
				Object.DeSpawn()	
				ScriptExit()
			end
			if BU04 then
				Object.DeSpawn()	
				ScriptExit()
			end
		end	
		landing_zone = Find_First_Object("Squad_Droideka_Mk1")
		player = landing_zone.Get_Owner()
		SpawnList(unit_list, landing_zone, player, true, false)
		Sleep(15)
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
end




