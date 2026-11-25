--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

grbase_re1 = {"Rebel_Artillery_Brigade", "Rebel_T5B_Brigade"}
grbase_re2 = {"Rebel_AAC-1_Tank_Brigade", "RV_ULAV_Company"}
grbase_re3 = {"LHTC9_Company", "Rebel_T6B_Brigade"}
grbase_re1b = {"Rebel_T8B_Brigade", "Rebel_MonCalFighter_Squad"}
grbase_re2b = {"RV_MPTLII_Brigade", "LHTC9_2_Company"}
grbase_re3b = {"R_S_Attack_Tank_Squad", "Rebel_V_Wing_airspeeder_squadron"}
grbase_re1c = {"Rebel_Attack_Tank_Company", "Rebel_B_WingLand_squadron"}
grbase_re2c = {"Rebel_K_WingLand_squadron", "KAAC_FreeRunner_Brigade"}
grbase_re3c = {"LIGHT_SCOUT_SPEEDER_Company", "Rebel_Z95Land_squadron"}
grbase_re1d = {"Rebel_Hovernaut", "Rebel_Sniper_Team"}
grbase_re2d = {"RV_Tachyon_Speeder_squadron", "RV_MPTLII_Brigade"}
grbase_re3d = {"Rebel_X_Wing_Land_squadron", "RV_WookieGunship_Squad"}
grbase_re1e = {"T2BAA_Brigade", "RV_WookieGunship_Squad"}
grbase_re2e = {"Gallofree_Assault_Company", "Rebel_A_Wing_Land_squadron"}
grbase_re3e = {"Rebel_Heavy_Tank_Brigade", "Rebel_T3B_Brigade"}

chances = nil


end

function State_Init(message)
		if Get_Game_Mode() ~= "Land" then
				ScriptExit()
		end 
		if Object.Get_Owner().Is_Human() then
			ScriptExit()		
		end		
		
		
		player = Object.Get_Owner()
		Sleep(15)		
		spawn_marker1 = Find_First_Object("BASE SHIELD STRUCTURE POSITION")
		spawn_marker2 = Find_First_Object("POWER GENERATOR STRUCTURE POSITION")
		spawn_marker3 = Find_First_Object("TURBOLASER STRUCTURE POSITION")
		spawn_marker4 = Find_First_Object("Defending Forces Position")
		spawn_marker5 = Find_First_Object("Garrison Position")
		spawn_marker6 = Find_First_Object("Out Base Special Structure Position")
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 15)
			if chances == 1 then
				SpawnList(grbase_re1, spawn_marker1, player, true, true)
			end	
			if chances == 2 then
				SpawnList(grbase_re1b, spawn_marker2, player, true, true)
				ScriptExit()
			end	
			if chances == 3 then
				SpawnList(grbase_re1c, spawn_marker3, player, true, true)
				ScriptExit()
			end	
			if chances == 4 then
				SpawnList(grbase_re1d, spawn_marker4, player, true, true)
				ScriptExit()
			end	
			if chances == 5 then
				SpawnList(grbase_re1e, spawn_marker5, player, true, true)
				ScriptExit()
			end	
			if chances == 6 then
				SpawnList(grbase_re1, spawn_marker1, player, true, true)
				ScriptExit()
			end	
			if chances == 7 then
				SpawnList(grbase_re1b, spawn_marker2, player, true, true)
				ScriptExit()
			end	
			if chances == 8 then
				SpawnList(grbase_re1c, spawn_marker3, player, true, true)
				ScriptExit()
			end	
			if chances == 9 then
				SpawnList(grbase_re1d, spawn_marker4, player, true, true)
				ScriptExit()
			end	
			if chances == 10 then
				SpawnList(grbase_re1e, spawn_marker5, player, true, true)
				ScriptExit()
			end	
			if chances == 11 then
				SpawnList(grbase_re1, spawn_marker1, player, true, true)
				ScriptExit()
			end	
			if chances == 12 then
				SpawnList(grbase_re1b, spawn_marker2, player, true, true)
				ScriptExit()
			end	
			if chances == 13 then
				SpawnList(grbase_re1c, spawn_marker3, player, true, true)
				ScriptExit()
			end	
			if chances == 14 then
				SpawnList(grbase_re1d, spawn_marker4, player, true, true)
				ScriptExit()
			end	
			if chances == 15 then
				SpawnList(grbase_re1e, spawn_marker5, player, true, true)
				ScriptExit()
			end	
		end	
		
end
