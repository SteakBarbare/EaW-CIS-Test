--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"R_GolanI"}
assault_list2 = {"R_GolanI"}
assault_list3 = {"R_GolanI"}

assault_list4 = {"Nv_Golan_Coruscant_III"}
assault_list5 = {"Rebel_Plattform_III"}
assault_list6 = {"R_GolanI"}

assault_list7 = {"XQ7"}
assault_list8 = {"Rebel_Plattform_IV"}
assault_list9 = {"R_GolanI"}

assault_list10 = {"XQ8"}
assault_list11 = {"Rebel_Plattform_III"}
assault_list12 = {"R_GolanI"}

assault_list13 = {"R_GolanI"}
assault_list14 = {"XQ9"}
assault_list15 = {"R_GolanI"}

chances = nil

Golan_Structure1 = {"R_GolanI"}
list1 = {"NV_LNR1_Space"}
list2 = {"Empire_Defense_Satellite_Flak"}
list3 = {"Empire_Defense_Missile_Launcher"}
list4 = {"Empire_Satellite_Repair"}
list5 = {"SmallGolanI"}
list6 = {"SmallGolanII"}
list7 = {"SmallGolanIII"}
starbase_reIA = {"R_MC40IAC"}
end

function State_Init(message)

	
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
		if message == OnEnter then
			dummy_object_list = Find_All_Objects_Of_Type("Dummy_Flag")
			Sleep(5)
			dummy_object = dummy_object_list[1]
			
			if dummy_object then
				ScriptExit()		
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
					chances = 7
				end	
				if chances == 2 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker4")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker5")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker6")
					Sleep(1)
					SpawnList(assault_list4, spawn_marker1, player, true, true)
					SpawnList(assault_list5, spawn_marker2, player, true, true)
					SpawnList(assault_list6, spawn_marker3, player, true, true)
					chances = 7
				end	
				if chances == 3 then
					spawn_marker1 = Find_First_Object("Defense_Addition_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Addition_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Addition_Marker3")
					Sleep(1)
					SpawnList(assault_list7, spawn_marker1, player, true, true)
					SpawnList(assault_list8, spawn_marker2, player, true, true)
					SpawnList(assault_list9, spawn_marker3, player, true, true)
					chances = 7
				end	
				if chances == 4 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
					Sleep(1)
					SpawnList(assault_list10, spawn_marker1, player, true, true)
					SpawnList(assault_list11, spawn_marker2, player, true, true)
					SpawnList(assault_list12, spawn_marker3, player, true, true)
					chances = 7
				end	
				if chances == 5 then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker4")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker5")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker6")
					Sleep(1)
					SpawnList(assault_list13, spawn_marker1, player, true, true)
					SpawnList(assault_list14, spawn_marker2, player, true, true)
					SpawnList(assault_list15, spawn_marker3, player, true, true)
					chances = 7
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
				SpawnList(list1, DS1, player, true, true)
				SpawnList(list2, DS2, player, true, true)
				SpawnList(list3, DS3, player, true, true)
				SpawnList(list4, DS4, player, true, true)
				--SpawnList(starbase_reIA, DS1, player, true, true)
				chances = nil
				if chances == nil then	
					chances = GameRandom(1, 3)
					if chances == 1 then
						SpawnList(list5, DS5, player, true, true)
						chances = 7
					end	
					if chances == 2 then
						SpawnList(list6, DS5, player, true, true)
						chances = 7
					end	
					if chances == 3 then
						SpawnList(list7, DS5, player, true, true)
						chances = 7
					end	
				end	
				Sleep(5)
				ScriptExit()
			end
		end	
end
