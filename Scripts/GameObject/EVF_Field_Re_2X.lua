-- Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
			
	unit_list = { "EVF_AT_AHTH_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_AT_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVK_AT_AA_Walker_Squad", "EVK_AT_AA_Walker_Squad", "EVF_AT_ST_Walker_Squad", "EVF_AT_MP_Squad", "EVF_AT_MP_Squad", "EVF_AT_AHT_Squad", "EVF_AT_SE_Walker_Squad", "EVF_AT_SE_Walker_Squad", "EVF_TIE_Neutralizer_Squadron_Land", "EVF_TIE_Neutralizer_Squadron_Land", "EVF_TIE_Predator_Squadron_Land", "EVF_TIE_Predator_Squadron_Land", "Fel_PlexTrooper_Squad", "EVF_Hvy_Artillery_Squad", "Fel_EWEB_troopers_Squad", "Fel_Assault_Squad", "Fel_Light_Scout_Squad", "Fel_Sniper_Squad", "Fel_Engineer_Squad" } 
	
end


function State_Init(message)
	
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("Squad_Fel_Field_Commander")
		player = landing_zone.Get_Owner()
		SpawnList(unit_list, landing_zone, player, true, false)
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





