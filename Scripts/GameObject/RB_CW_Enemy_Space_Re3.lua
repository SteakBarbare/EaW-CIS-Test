--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

starbase_CISre1 = {"CIS_TU_SD", "CIS_LucrehulkC02"}
starbase_CISre2 = {"CIS_Munificent", "CIS_MunificentClan"}
starbase_CISre3 = {"CIS_TU_SD", "CIS_TU_SD"}
starbase_CISre1b = {"CIS_Munificent", "CIS_LucrehulkC02"}
starbase_CISre2b = {"CIS_MunificentClan", "CIS_LucrehulkC02"}
starbase_CISre3b = {"CIS_MunificentClan", "CIS_Munificent"}
starbase_CISre1c = {"CIS_Recusant_PSD", "CIS_Diamond"}
starbase_CISre2c = {"CIS_Hardcell", "CIS_Diamond"}
starbase_CISre3c = {"CIS_Hardcell", "CIS_Hardcell"}

starbase_Repre1 = {"Rep_AcclamatorII", "REP_AcclamatorI"}
starbase_Repre2 = {"Rep_Trireme", "Rep_VictorII"}
starbase_Repre3 = {"Rep_AcclamatorII", "Rep_AcclamatorII"}
starbase_Repre1b = {"Rep_Dreadnought", "REP_Carrack"}
starbase_Repre2b = {"Rep_Dreadnought", "REP_AcclamatorI"}
starbase_Repre3b = {"Rep_Dreadnought", "Rep_Dreadnought"}
starbase_Repre1c = {"Rep_VictorII", "REP_AcclamatorI"}
starbase_Repre2c = {"Rep_Trireme", "REP_AcclamatorI"}
starbase_Repre3c = {"Rep_Trireme", "Rep_VictorII"}

starbase_Rre1 = {"MC40", "Quasar", "Corellian_Gunboat"}
starbase_Rre2 = {"Nebulon_B_Frigate", "Nebulon_B2R"}
starbase_Rre3 = {"MC40v02", "MC40v03"}
starbase_Rre1b = {"Nebulon_B_Frigate", "Quasar"}
starbase_Rre2b = {"Nebulon_B2R", "Quasar"}
starbase_Rre3b = {"Nebulon_B2R", "Nebulon_B_Frigate"}
starbase_Rre1c = {"R_BulkCRU", "R_Carrack"}
starbase_Rre2c = {"R_Dreadnought", "R_Carrack"}
starbase_Rre3c = {"R_Dreadnought", "R_Dreadnought"}

starbase_Ere1 = {"Acclamator_Assault_Ship", "E_Carrier"}
starbase_Ere2 = {"Nebulon_B2E", "E_Nebulon_B"}
starbase_Ere3 = {"E_AcclamatorII", "E_AcclamatorII"}
starbase_Ere1b = {"E_Dreadnought", "E_Carrack"}
starbase_Ere2b = {"BS_Bloodstar", "BS_CR_Lto_Frg"}
starbase_Ere3b = {"E_Dreadnought", "E_Dreadnought"}
starbase_Ere1c = {"E_Nebulon_B", "E_Carrier"}
starbase_Ere2c = {"Nebulon_B2E", "E_Carrier"}
starbase_Ere3c = {"Nebulon_B2E", "E_Nebulon_B"}

starbase_Ure1 = {"BS_Protector", "BS_Marauder"}
starbase_Ure2 = {"BS_Protector", "Nebulon_B_Underworld"}
starbase_Ure3 = {"BS_Invincible", "BS_Invincible"}
starbase_Ure1b = {"BS_VSD", "Interceptor4_Frigate"}
starbase_Ure2b = {"BS_VSD", "BS_Marauder"}
starbase_Ure3b = {"BS_VSD", "BS_VSD"}
starbase_Ure1c = {"Nebulon_B_Underworld", "BS_Marauder"}
starbase_Ure2c = {"BS_Protector", "BS_Marauder"}
starbase_Ure3c = {"BS_Protector", "Nebulon_B_Underworld"}

starbase_CHre1 = {"VSD3X", "VSD3X"}
starbase_CHre2 = {"Ch_Cruiser", "VSD3X"}
starbase_CHre3 = {"VSD3X", "VSD3X"}
starbase_CHre1b = {"Ch_Cruiser", "Ch_Patrol"}
starbase_CHre2b = {"Ch_Cruiser", "Ch_Hvy_Cruiser"}
starbase_CHre3b = {"Ch_Cruiser", "Ch_Cruiser"}
starbase_CHre1c = {"Ch_Patrol", "Ch_Hvy_Cruiser"}
starbase_CHre2c = {"Ch_SDI", "Ch_Hvy_Cruiser"}
starbase_CHre3c = {"Ch_SDI", "Ch_Patrol"}

starbase_COre1 = {"Co_VSD", "Co_VSD"}
starbase_COre2 = {"Co_KDY_Frg", "Co_Mc80a"}
starbase_COre3 = {"Co_Mc80a", "Co_Mc80a"}
starbase_COre1b = {"Co_Nebulon", "Co_CR_Gunboat"}
starbase_COre2b = {"Co_Nebulon", "Co_KDY_Frg_Up"}
starbase_COre3b = {"Co_Nebulon", "Co_Nebulon"}
starbase_COre1c = {"Co_BulkCruiser", "Co_KDY_Frg_Up"}
starbase_COre2c = {"Co_Mc85", "Co_KDY_Frg_Up"}
starbase_COre3c = {"Co_Mc85", "Co_BulkCruiser"}

starbase_FELre1 = {"EVF_Ardent", "EVF_Shipping_Vessel", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette", "Ga_SaberTooth_M", "Ga_SaberTooth_M"}
starbase_FELre2 = {"Ga_SaberTooth_H", "Ga_SaberTooth_H", "GA_Ionizer_Squadron", "GA_Ionizer_Squadron", "Ga_SaberTooth_M", "Ga_SaberTooth_M"}
starbase_FELre3 = {"GA_Sha_Shore", "EVF_Ardent", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "Ga_Twighlight", "Ga_Twighlight"}
starbase_FELre1b = {"Ga_SaberTooth", "EVF_Shipping_Vessel", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette", "GA_B22_Squadron", "GA_B22_Squadron"}
starbase_FELre2b = {"Ga_SaberTooth", "EVF_Shipping_Vessel", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_B22_Squadron", "GA_B22_Squadron"}
starbase_FELre3b = {"Ga_SaberTooth", "Ga_SaberTooth", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron"}
starbase_FELre1c = {"Ga_SaberTooth_H", "EVF_Shipping_Vessel", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette", "GA_B22_Squadron", "GA_B22_Squadron"}
starbase_FELre2c = {"Ga_SaberTooth_H", "EVF_Shipping_Vessel", "GA_Crossfire_Squadron", "GA_Crossfire_Squadron", "GA_B22_Squadron", "GA_B22_Squadron"}
starbase_FELre3c = {"Ga_SaberTooth_H", "Ga_SaberTooth_H", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette", "EVF_Assassin_Corvette"}

starbase_KRre1 = {"EVK_Ardent", "EVK_Shipping_Vessel"}
starbase_KRre2 = {"EVK_Assassin_Corvette_H", "EVK_Assassin_Corvette_H"}
starbase_KRre3 = {"EVK_Ardent", "EVK_Ardent"}
starbase_KRre1b = {"EVK_Ardent", "EVK_Shipping_Vessel"}
starbase_KRre2b = {"EVK_Ardent", "EVK_Shipping_Vessel"}
starbase_KRre3b = {"EVK_Ardent", "EVK_Ardent"}
starbase_KRre1c = {"EVK_Assassin_Corvette_H", "EVK_Shipping_Vessel"}
starbase_KRre2c = {"EVK_Assassin_Corvette_H", "EVK_Shipping_Vessel"}
starbase_KRre3c = {"EVK_Assassin_Corvette_H", "EVK_Assassin_Corvette_H"}

starbase_HAre1 = {"Hapan_Stella_Frigate", "Hapan_Stella_Frigate"}
starbase_HAre2 = {"Hapan_Battledragon", "Hapan_NovaCruiser"}
starbase_HAre3 = {"Hapan_NovaCruiser", "Hapan_NovaCruiser"}
starbase_HAre1b = {"Hapan_Star_Destroyer", "Hapan_Victory_Destroyer"}
starbase_HAre2b = {"Hapan_Star_Destroyer", "Hapan_Battledragon_Up"}
starbase_HAre3b = {"Hapan_Star_Destroyer", "Hapan_Star_Destroyer"}
starbase_HAre1c = {"Hapan_BetaCruiserII", "Hapan_Battledragon_Up"}
starbase_HAre2c = {"Hapan_Patrolship", "Hapan_Battledragon_Up"}
starbase_HAre3c = {"Hapan_Patrolship", "Hapan_BetaCruiserII"}

starbase_HUre1 = {"Hu_Interceptor4", "Hu_Interceptor4"}
starbase_HUre2 = {"Hu_Krayt", "Hu_Hutt_CorvetteR"}
starbase_HUre3 = {"Hu_Hutt_CorvetteR", "Hu_Hutt_CorvetteR"}
starbase_HUre1b = {"Hu_Kedalbe", "Hutts_Cruiser"}
starbase_HUre2b = {"Hu_Kedalbe", "Hu_Krayt_Up"}
starbase_HUre3b = {"Hu_Kedalbe", "Hu_Kedalbe"}
starbase_HUre1c = {"Hu_BloodstarII", "Hu_Krayt_Up"}
starbase_HUre2c = {"Hu_Balrus", "Hu_Krayt_Up"}
starbase_HUre3c = {"Hu_Balrus", "Hu_BloodstarII"}


chances = nil


end

function State_Init(message)
	if message == OnEnter then	
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()
		cis_player = Find_Player("CIS")
		rep_player = Find_Player("Republic")
		empire_player = Find_Player("Empire")
		rebel_player = Find_Player("Rebel")
		underworld_player = Find_Player("Underworld")
		gafel_player = Find_Player("Fel")
		krayt_player = Find_Player("Krayt")
		hutts_player = Find_Player("Pirates")
		Sleep(70)
		
		enemy_units = {}
		
		enemy_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Capital")
		
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then
				table.insert( enemy_units,unit )
			end
		end
		
		if table.getn( enemy_units ) >= 7 then
               --Game_Message("ARE_TOOMANYE")
                ScriptExit()
        end
		
		Sleep(2)				
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
				any_active = false
				for i,interdictor in pairs(interdictor_table) do
					if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") and interdictor.Get_Owner().Is_Human() then
						any_active = true
						if any_active then
						Game_Message("TEXT_MESSAGE_INTERDICTOR_ACTIVE2")
							ScriptExit()
						end
					end
				end
		
		--Game_Message("ARE_ENEMIS")	
		
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == cis_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesCIS_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rep_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesRep_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == empire_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesE_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rebel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesR_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == underworld_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesU_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == gafel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesFEL_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == krayt_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesKR_5, 1)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == hutts_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesHU_5, 1)
			end
		end
	end
end
function reinforcesCIS_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CISre1, starbaseRe_marker1, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre1b, starbaseRe_marker2, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre1c, starbaseRe_marker3, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre1, starbaseRe_marker4, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CISre2, starbaseRe_marker1, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre2b, starbaseRe_marker2, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre2c, starbaseRe_marker3, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre2, starbaseRe_marker4, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_CISre3, starbaseRe_marker1, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre3b, starbaseRe_marker2, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre3c, starbaseRe_marker3, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre3, starbaseRe_marker4, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
function reinforcesRep_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Repre1, starbaseRe_marker1, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre1b, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre1c, starbaseRe_marker3, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre1, starbaseRe_marker4, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Repre2, starbaseRe_marker1, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre2b, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre2c, starbaseRe_marker3, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre2, starbaseRe_marker4, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Repre3, starbaseRe_marker1, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre3b, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre3c, starbaseRe_marker3, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre3, starbaseRe_marker4, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
function reinforcesR_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CISre1, starbaseRe_marker1, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre1b, starbaseRe_marker2, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre1c, starbaseRe_marker3, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre1, starbaseRe_marker4, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CISre2, starbaseRe_marker1, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre2b, starbaseRe_marker2, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre2c, starbaseRe_marker3, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre2, starbaseRe_marker4, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_CISre3, starbaseRe_marker1, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre3b, starbaseRe_marker2, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CISre3c, starbaseRe_marker3, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CISre3, starbaseRe_marker4, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
function reinforcesE_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Repre1, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre1b, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre1c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre1, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Repre2, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				closest_enemy = Find_Nearest(Object, unit.Get_Owner().Is_Enemy(hutts_player), true)
				grupo_02 = SpawnList(starbase_Repre2b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
					Sleep(2)
					unit.Attack_Move(closest_enemy)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre2c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre2, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Repre3, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre3b, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre3c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre3, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end
		
		

end
function reinforcesU_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Ure1, starbaseRe_marker1, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ure1b, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Ure1c, starbaseRe_marker3, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Ure1, starbaseRe_marker4, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Ure2, starbaseRe_marker1, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ure2b, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Ure2c, starbaseRe_marker3, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Ure2, starbaseRe_marker4, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Ure3, starbaseRe_marker1, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ure3b, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Ure3c, starbaseRe_marker3, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Ure3, starbaseRe_marker4, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
function reinforcesHu_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 5)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_HUre1, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_HUre1b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_HUre1c, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_HUre1, starbaseRe_marker4, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_COre2, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_COre2b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_COre2c, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_COre2, starbaseRe_marker4, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_HUre3, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_HUre3b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_HUre3c, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_HUre3, starbaseRe_marker4, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 4 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CHre1, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CHre1b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_CHre1c, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_CHre1, starbaseRe_marker4, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 5 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_HAre2, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_HAre2b, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_HAre2c, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_HAre2, starbaseRe_marker4, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
		end

end
function reinforcesFEL_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_FELre1, starbaseRe_marker1, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_FELre1b, starbaseRe_marker2, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_FELre1c, starbaseRe_marker3, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_FELre1, starbaseRe_marker4, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_FELre2, starbaseRe_marker1, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_FELre2b, starbaseRe_marker2, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_FELre2c, starbaseRe_marker3, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_FELre2, starbaseRe_marker4, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_FELre3, starbaseRe_marker1, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_FELre3b, starbaseRe_marker2, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_FELre3c, starbaseRe_marker3, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_FELre3, starbaseRe_marker4, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
function reinforcesKR_5()

		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_KRre1, starbaseRe_marker1, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_KRre1b, starbaseRe_marker2, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_KRre1c, starbaseRe_marker3, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_KRre1, starbaseRe_marker4, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_KRre2, starbaseRe_marker1, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_KRre2b, starbaseRe_marker2, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_KRre2c, starbaseRe_marker3, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_KRre2, starbaseRe_marker4, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_KRre3, starbaseRe_marker1, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_KRre3b, starbaseRe_marker2, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_KRre3c, starbaseRe_marker3, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_KRre3, starbaseRe_marker4, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end