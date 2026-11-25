--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "MTT_Company", "MTT_Company", "MTT_Company", "C_AAT_Group", "C_AAT_Group", "C_AAT_Group", "C_AAT_Group", "C_Stap_Squad", "C_Stap_Squad", "C_HAG_Group", "C_HAG_Group", "C_CIS_walk_DW_Group", "C_CIS_walk_DW_Group", "C_Vulture_squadron", "C_Vulture_squadron", "C_Cis_MAF_team", "C_Cis_MAF_team", "C_OG_9_Group", "C_OG_9_Group", "C_Droideka_Mk1_Company", "C_Droideka_Mk1_Company", "C_Droideka_Mk1_Company", "C_Hailfire_Tank_Droid_Brigade", "C_Hailfire_Tank_Droid_Brigade", "C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad" } 
	
end


function State_Init(message)

	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("AAT_Command_Tank")
		player = landing_zone.Get_Owner()
		Despliegue_de_unidades = SpawnList(unit_list, landing_zone, player, true, true)
		Sleep(15)
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		reveal_marker = Find_First_Object("Attacker Entry Position")
		
		FogOfWar.Temporary_Reveal(player,reveal_marker,12000)
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





