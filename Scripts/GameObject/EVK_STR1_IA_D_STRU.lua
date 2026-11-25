--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

unit_list1cis = { "Krayt_Star_Base_1", "Dummy_Flag" } 
unit_list2cis = { "Krayt_Star_Base_2", "Dummy_Flag" } 
unit_list3cis = { "Krayt_Star_Base_3", "Dummy_Flag" } 
unit_list4cis = { "Krayt_Star_Base_4", "Dummy_Flag" } 
unit_list5cis = { "Krayt_Star_Base_5", "Dummy_Flag" } 

assault_list1 = {"EVK_GolanV"}
assault_list2 = {"EVK_GolanV"}
assault_list3 = {"EVK_GolanV"}

assault_list4 = {"XQ9"}
assault_list5 = {"Nv_Golan_Coruscant_III"}
assault_list6 = {"EVK_GolanV"}

assault_list7 = {"XQ11"}
assault_list8 = {"Nv_Golan_Coruscant_III"}
assault_list9 = {"EVK_GolanV"}

assault_list10 = {"XQ10"}
assault_list11 = {"Nv_Golan_Coruscant_III"}
assault_list12 = {"EVK_GolanV"}

assault_list13 = {"XQ9"}
assault_list14 = {"Nv_Golan_Coruscant_III"}
assault_list15 = {"EVK_GolanV"}

chances = nil

Golan_Structure1 = {"EVK_GolanIV"}

list1 = {"Empire_Defense_Missile_Launcher"}
list2 = {"Empire_Defense_Satellite_Flak"}
list3 = {"Empire_Defense_Missile_Launcher"}
list4 = {"Empire_Satellite_Repair"}
list5 = {"SmallGolanIV"}
list6 = {"SmallGolanV"}
list7 = {"SmallGolanVI"}
starbase_reIA = {"EVK_Ardent_IAC"}

end

function State_Init(message)

		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("EVK_GolanIV_Defenses") then
				ScriptExit()
				elseif Find_First_Object("EVK_GolanV_Defenses") then
				ScriptExit()
				elseif Find_First_Object("EVK_GolanVI_Defenses") then
				ScriptExit()
		end
		if message == OnEnter then
			dummy_object_list = Find_All_Objects_Of_Type("Dummy_Flag")
			Sleep(5)
			dummy_object = dummy_object_list[1]
			
			if dummy_object then
				ScriptExit()		
			end		
		end			
		player = Object.Get_Owner()
		if message == OnEnter then	
			Golanposition1 = Find_First_Object("Golan_Structure_1")
			Golanposition2 = Find_First_Object("Golan_Structure_2")
			Golanposition3 = Find_First_Object("Golan_Structure_3")
			if Golanposition1 then
				SpawnList(Golan_Structure1, Golanposition1, player, true, true)
			end
			if Golanposition2 then
				SpawnList(Golan_Structure1, Golanposition2, player, true, true)
			end
			if Golanposition3 then
				SpawnList(Golan_Structure1, Golanposition3, player, true, true)
			end
		end
		if Object.Get_Owner().Is_Human() then
			ScriptExit()		
		end		
			
		
		if message == OnEnter then	
			if chances == nil then	
				chances = GameRandom(1, 5)
				if chances == 1 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
					Sleep(1)
					SpawnList(assault_list1, spawn_marker1, player, true, true)
					SpawnList(assault_list2, spawn_marker2, player, true, true)
					SpawnList(assault_list3, spawn_marker3, player, true, true)
				end	
				if chances == 2 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker4")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker5")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker6")
					Sleep(1)
					SpawnList(assault_list4, spawn_marker1, player, true, true)
					SpawnList(assault_list5, spawn_marker2, player, true, true)
					SpawnList(assault_list6, spawn_marker3, player, true, true)
				end	
				if chances == 3 then
					spawn_marker1 = Find_First_Object("Defense_Addition_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Addition_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Addition_Marker3")
					Sleep(1)
					SpawnList(assault_list7, spawn_marker1, player, true, true)
					SpawnList(assault_list8, spawn_marker2, player, true, true)
					SpawnList(assault_list9, spawn_marker3, player, true, true)
				end	
				if chances == 4 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
					Sleep(1)
					SpawnList(assault_list10, spawn_marker1, player, true, true)
					SpawnList(assault_list11, spawn_marker2, player, true, true)
					SpawnList(assault_list12, spawn_marker3, player, true, true)
				end	
				if chances == 5 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker4")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker5")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker6")
					Sleep(1)
					SpawnList(assault_list13, spawn_marker1, player, true, true)
					SpawnList(assault_list14, spawn_marker2, player, true, true)
					SpawnList(assault_list15, spawn_marker3, player, true, true)
				end
			end
		end	
		if message == OnEnter then	
			DS1 = Find_First_Object("Defense_1CSPad")
			DS2 = Find_First_Object("Defense_2CSPad")
			DS3 = Find_First_Object("Defense_3CSPad")
			DS4 = Find_First_Object("Defense_4CSPad")
			DS5 = Find_First_Object("Defense_5CSPad")
			if DS1 then
				SpawnList(list2, DS1, player, true, true)
				SpawnList(list2, DS2, player, true, true)
				SpawnList(list3, DS3, player, true, true)
				SpawnList(list4, DS4, player, true, true)
				--SpawnList(starbase_reIA, DS1, player, true, true)
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
						SpawnList(list2, DS5, player, true, true)
					end	
					if chances == 2 then
						SpawnList(list3, DS5, player, true, true)
					end	
					if chances == 3 then
						SpawnList(list3, DS5, player, true, true)
					end	
				end	
				Sleep(5)
			end
		end	
		if message == OnEnter then
			spawn_zone1 = Find_First_Object("Defending Forces Position")
			spawn_zone2 = Find_First_Object("Orbital Special Structure Position")
			structurea = Find_First_Object("Astilleros_IA4")
			Dummy_Object = Find_First_Object("Dummy_Flag")
			sb1_type = Find_First_Object("Max_Level_SB1")
			sb2_type = Find_First_Object("Max_Level_SB2")
			sb3_type = Find_First_Object("Max_Level_SB3")
			sb4_type = Find_First_Object("Max_Level_SB4")
			sb5_type = Find_First_Object("Max_Level_SB5")
			
			if Dummy_Object then
				ScriptExit()
			end
			if sb1_type then
			--	SpawnList(unit_list1cis, sb1_type, player, true, true)
				ScriptExit()
			end
			if sb2_type then
				SpawnList(unit_list2cis, sb2_type, player, true, true)
				ScriptExit()
			end
			if sb3_type then
				SpawnList(unit_list3cis, sb3_type, player, true, true)
				ScriptExit()
			end
			if sb4_type then
				SpawnList(unit_list4cis, sb4_type, player, true, true)
				ScriptExit()
			end
			if sb5_type then
				SpawnList(unit_list5cis, sb5_type, player, true, true)
				ScriptExit()
			end
		end	
		Sleep(5)
		ScriptExit()
end
