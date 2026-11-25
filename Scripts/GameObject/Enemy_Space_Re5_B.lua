--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

starbase_E_SH1_A = {"Broadside_Class_Cruiser", "Bajonett", "Gladiator"}
starbase_E_SH1_B = {"Broadside_Class_Cruiser", "Broadside_Class_Cruiser", "Broadside_Class_Cruiser"}
starbase_E_SH1_C = {"Gladiator", "Bajonett", "Bajonett"}
starbase_E_SH1_D = {"Bajonett", "Bajonett", "Bajonett"}
starbase_E_SH1_E = {"TIE_Phantom_SquadronB"}
starbase_E_SH1_F = {"Gunboat_SquadronB"}
starbase_E_SH1_G = {"TIE_Defender_SquadronB"}
starbase_E_SH1_H = {"Missile_Gunboat_SquadronB"}
starbase_E_SH1_I = {"TIE_Cimitarra_SquadronB"}

starbase_R_SH1_A = {"MC30_Frigate", "Marauder_Missile_Cruiser", "MC40v02"}
starbase_R_SH1_B = {"MC30_Frigate", "MC30_Frigate", "MC30_Frigate"}
starbase_R_SH1_C = {"MC40v02", "Marauder_Missile_Cruiser", "Marauder_Missile_Cruiser"}
starbase_R_SH1_D = {"Marauder_Missile_Cruiser", "Marauder_Missile_Cruiser", "Marauder_Missile_Cruiser"}
starbase_R_SH1_E = {"Y-Wing_SquadronB"}
starbase_R_SH1_F = {"B6_BWing_SquadronB"}
starbase_R_SH1_G = {"B-Wing_SquadronS1B"}
starbase_R_SH1_H = {"B-Wing_SquadronS2B"}
starbase_R_SH1_I = {"R_XWingS1_SquadronB"}

starbase_PireA = {"BS_Bloodstar", "BS_CR_Lto_Frg"}
starbase_PireB = {"BS_CR_Frg", "BS_Thranta"}
starbase_PireC = {"CR_SDI", "BS_LucrehulkB"}

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
		
		if table.getn( enemy_units ) >= 60 then
               Game_Message("ARE_TOOMANYE")
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
		
		Game_Message("ARE_ENEMIS")	
				
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rebel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesAIP_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == empire_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesAIP_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rebel_player and unit.Get_Owner().Is_Enemy(player) and unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesR_5, 5)
			end
		end
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == empire_player and unit.Get_Owner().Is_Enemy(player) and unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesE_5, 5)
			end
		end
		
	end			
end
function reinforcesAIP_5()
		
		shield_station = Find_First_Object("Defending Forces Position")
		Pirate_marker1 = Find_First_Object("Pirate Fleet position")
				
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 12)
			if chances == 1 then	
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units1 = SpawnList(starbase_PireA, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units1) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
				end
				if chances == 2 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 3 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 4 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 5 then	
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units2 = SpawnList(starbase_PireB, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units2) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
				end
				if chances == 6 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 7 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 8 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 9 then	
					Sleep(2)
					ScriptExit()
				end
				if chances == 10 then
					Sleep(2)
					ScriptExit()
                end
				if chances == 11 then
					Sleep(2)
					ScriptExit()
                end
				if chances == 12 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units3 = SpawnList(starbase_PireC, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units3) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
			Sleep(2)
			ScriptExit()
		end

end
function reinforcesR_5()
		
		shield_station = Find_First_Object("Defending Forces Position")
		Pirate_marker1 = Find_First_Object("Pirate Fleet position")
				
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 12)
				if chances == 1 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_A = SpawnList(starbase_E_SH1_A, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_A) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 2 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_B = SpawnList(starbase_E_SH1_B, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_B) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 3 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_C = SpawnList(starbase_E_SH1_C, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_C) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 4 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_D = SpawnList(starbase_E_SH1_D, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_D) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 5 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_E = SpawnList(starbase_E_SH1_E, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_E) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 6 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_F = SpawnList(starbase_E_SH1_F, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_F) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 7 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_G = SpawnList(starbase_E_SH1_G, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_G) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 8 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_H = SpawnList(starbase_E_SH1_H, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_H) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 9 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_I = SpawnList(starbase_E_SH1_I, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_I) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 10 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units1 = SpawnList(starbase_PireA, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units1) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
				if chances == 11 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units2 = SpawnList(starbase_PireB, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units2) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
				if chances == 12 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units3 = SpawnList(starbase_PireC, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units3) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
			Sleep(2)
			ScriptExit()
		end

end
function reinforcesE_5()
		shield_station = Find_First_Object("Defending Forces Position")
		Pirate_marker1 = Find_First_Object("Pirate Fleet position")
					
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 12)
			if chances == 1 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_A = SpawnList(starbase_R_SH1_A, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_A) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 2 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_B = SpawnList(starbase_R_SH1_B, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_B) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 3 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_C = SpawnList(starbase_R_SH1_C, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_C) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 4 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_D = SpawnList(starbase_R_SH1_D, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_D) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 5 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_E = SpawnList(starbase_R_SH1_E, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_E) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 6 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_F = SpawnList(starbase_R_SH1_F, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_F) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 7 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_G = SpawnList(starbase_R_SH1_G, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_G) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 8 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_H = SpawnList(starbase_R_SH1_H, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_H) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 9 then	
					Game_Message("AENEMYSNEAKATTACK")				
					grupo_SH1_I = SpawnList(starbase_R_SH1_I, Pirate_marker1, Find_Player("Empire"), true, true)
					for i,unit in pairs(grupo_SH1_I) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end
				end
				if chances == 10 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units1 = SpawnList(starbase_PireA, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units1) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
				if chances == 11 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units2 = SpawnList(starbase_PireB, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units2) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
				if chances == 12 then
					Game_Message("APIRATE_ATTACK_INCOMING")				
					Pirate_Surprise_units3 = SpawnList(starbase_PireC, Pirate_marker1, Find_Player("Piratas"), true, true)
					for i, unit in pairs(Pirate_Surprise_units3) do
						unit.Cinematic_Hyperspace_In(1)
						Sleep(5)
						unit.Attack_Move(shield_station)
						Sleep(2)
						ScriptExit()
					end	
                end
			Sleep(2)
			ScriptExit()
		end

end
