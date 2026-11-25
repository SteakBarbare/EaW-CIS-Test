--Edited by Nomada_Firefox
require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "Rep_Gr_Re_Station01", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Republic_AT_TE_Company", "Rep_Hovermoto_Phase1_Squad", "Rep_Hovermoto_Phase1_Squad", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_LAAT_Phase1", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_EWEB_troopers_Phase1_Squad", "Republic_Clon_Sniper_Phase1_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad", "Republic_CloneTrooper_Squad" } 
	
end


function State_Init(message)

	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("Rep_Plataforma_Mando_MKI")
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






