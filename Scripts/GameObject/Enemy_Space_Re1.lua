--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

starbase_CISre1 = {"CIS_Recusant_PSD", "CIS_Diamond"}
starbase_CISre2 = {"CIS_Munificent", "CIS_Diamond"}
starbase_CISre3 = {"CIS_Munificent", "CIS_Munificent"}

starbase_Repre1 = {"Rep_Dreadnought", "REP_Carrack"}
starbase_Repre2 = {"Rep_Dreadnought", "REP_AcclamatorI"}
starbase_Repre3 = {"Rep_Dreadnought", "Rep_Dreadnought"}

starbase_Rre1 = {"R_BulkCRU", "R_Carrack", "Mc80M"}
starbase_Rre2 = {"R_Dreadnought", "R_Carrack", "MC30_Frigate"}
starbase_Rre3 = {"R_Dreadnought", "R_Dreadnought", "Mc80c_EJ"}

starbase_Ere1 = {"E_Dreadnought", "E_Carrack", "Broadside_Class_Cruiser"}
starbase_Ere2 = {"BS_Marauder", "BS_CR_Patrol", "Harrow"}
starbase_Ere3 = {"E_Dreadnought", "E_Dreadnought", "Allegiance"}

starbase_Ure1 = {"BS_Protector", "BS_CR_Patrol"}
starbase_Ure2 = {"BS_Protector", "BS_Marauder"}
starbase_Ure3 = {"BS_Protector", "BS_Protector"}

starbase_CHre1 = {"VSD3X", "VSD3X"}
starbase_CHre2 = {"Ch_Cruiser", "VSD3X"}
starbase_CHre3 = {"VSD3X", "VSD3X"}

starbase_COre1 = {"Co_VSD", "Co_VSD"}
starbase_COre2 = {"Co_KDY_Frg", "Co_Mc80a"}
starbase_COre3 = {"Co_Mc80a", "Co_Mc80a"}

starbase_FELre1 = {"Ga_SaberTooth", "EVF_Shipping_Vessel"}
starbase_FELre2 = {"Ga_SaberTooth", "EVF_Shipping_Vessel"}
starbase_FELre3 = {"Ga_SaberTooth", "Ga_SaberTooth"}

starbase_KRre1 = {"EVK_Ardent", "EVK_Shipping_Vessel"}
starbase_KRre2 = {"EVK_Ardent", "EVK_Shipping_Vessel"}
starbase_KRre3 = {"EVK_Ardent", "EVK_Ardent"}

starbase_HAre1 = {"Hapan_Stella_Frigate", "Hapan_Stella_Frigate"}
starbase_HAre2 = {"Hapan_Battledragon", "Hapan_NovaCruiser"}
starbase_HAre3 = {"Hapan_NovaCruiser", "Hapan_NovaCruiser"}

starbase_HUre1 = {"Hu_Interceptor4", "Hu_Interceptor4"}
starbase_HUre2 = {"Hu_Krayt", "Hu_Hutt_CorvetteR"}
starbase_HUre3 = {"Hu_Hutt_CorvetteR", "Hu_Hutt_CorvetteR"}

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
		
		if table.getn( enemy_units ) >= 5 then
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
				Register_Timer(reinforcesCIS_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rep_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesRep_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == empire_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesE_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rebel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesR_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == underworld_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesU_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == gafel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesFEL_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == krayt_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesKR_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == hutts_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesHU_5, 5)
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
				grupo_02 = SpawnList(starbase_CISre2, starbaseRe_marker2, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CISre2, starbaseRe_marker2, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre3, starbaseRe_marker3, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_CISre1, starbaseRe_marker1, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CISre3, starbaseRe_marker3, Find_Player("CIS"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_02 = SpawnList(starbase_Repre2, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Repre1, starbaseRe_marker1, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre2, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Repre1, starbaseRe_marker1, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre2, starbaseRe_marker2, Find_Player("Republic"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_01 = SpawnList(starbase_Rre1, starbaseRe_marker1, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Rre2, starbaseRe_marker2, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Rre2, starbaseRe_marker2, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Rre3, starbaseRe_marker3, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Rre1, starbaseRe_marker1, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Rre3, starbaseRe_marker3, Find_Player("Rebel"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_01 = SpawnList(starbase_Ere1, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				closest_enemy = Find_Nearest(Object, unit.Get_Owner().Is_Enemy(hutts_player), true)
				grupo_02 = SpawnList(starbase_Ere2, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
					Sleep(2)
					unit.Attack_Move(closest_enemy)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Ere2, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ere3, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Ere1, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ere3, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_02 = SpawnList(starbase_Ure2, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_Ure2, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ure3, starbaseRe_marker3, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Ure1, starbaseRe_marker1, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Ure2, starbaseRe_marker2, Find_Player("Underworld"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_02 = SpawnList(starbase_HUre2, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_COre2, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_COre3, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_HUre1, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_HUe3, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 4 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_CHre2, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_CHre3, starbaseRe_marker3, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 5 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_HAre1, starbaseRe_marker1, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_HAre2, starbaseRe_marker2, Find_Player("Pirates"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
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
				grupo_02 = SpawnList(starbase_FELre2, starbaseRe_marker2, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_FELre2, starbaseRe_marker2, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_FELre3, starbaseRe_marker3, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_FELre1, starbaseRe_marker1, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_FELre3, starbaseRe_marker3, Find_Player("Fel"), true, true)
				for i,unit in pairs(grupo_02) do
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
				grupo_02 = SpawnList(starbase_KRre2, starbaseRe_marker2, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(1)
				grupo_01 = SpawnList(starbase_KRre2, starbaseRe_marker2, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_KRre3, starbaseRe_marker3, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_KRre1, starbaseRe_marker1, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_KRre3, starbaseRe_marker3, Find_Player("Krayt"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end