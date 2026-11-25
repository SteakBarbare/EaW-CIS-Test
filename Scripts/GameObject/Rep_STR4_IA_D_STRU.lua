--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Modular_Station"}
assault_list2 = {"Golan_II_Republic"}
assault_list3 = {"Golan_II_Republic"}

Golan_Structure1 = {"Golan_II_Republic"}
list1 = {"NV_LNR1_Space"}
list2 = {"Empire_Defense_Satellite_Flak"}
list3 = {"Empire_Defense_Missile_Launcher"}
list4 = {"Empire_Satellite_Repair"}
list5 = {"Rep_Outpost_Station_1"}
list6 = {"Rep_Outpost_Station_1"}
list7 = {"Rep_Outpost_Station_2"}
starbase_reIA = {"Rep_Legacy_IAC"}
chances = nil
end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
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
			spawn_marker1 = Find_First_Object("Defense_Addition_Marker1")
			spawn_marker2 = Find_First_Object("Defense_Addition_Marker2")
			spawn_marker3 = Find_First_Object("Defense_Addition_Marker3")
			Sleep(1)
			SpawnList(assault_list1, spawn_marker1, player, true, true)
			SpawnList(assault_list2, spawn_marker2, player, true, true)
			SpawnList(assault_list3, spawn_marker3, player, true, true)
			Sleep(5)
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
