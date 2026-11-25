-- Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
			
	unit_list1 = { "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Heavy_Assault_Company", "Imperial_Armor_Group", "Imperial_Tie_Tank_Brigade", "Imperial_Artillery_Corp", "AT_RCT_Walker_Company", "Imperial_ATAR_Squad", "E_Air_Landing_T3", "LAVr_Transport_Group", "Ch_MTV_7_Company" }
			
end


function State_Init(message)
	
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("Squad_E_Tech3_Field_Commander_Empire")
		player = landing_zone.Get_Owner()
		SpawnList(unit_list1, landing_zone, player, true, false)
		Sleep(15)
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		FogOfWar.Temporary_Reveal(player,landing_zone,12000)
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





