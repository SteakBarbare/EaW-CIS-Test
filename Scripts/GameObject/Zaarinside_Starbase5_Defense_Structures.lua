--3 Way GC Space Battles
--By Sidious Invader

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"E_GolanIII"}
assault_list2 = {"E_GolanIII"}
assault_list3 = {"E_GolanIII"}

Golan_Structure1 = {"E_GolanIII"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("EV_GolanIII_Defenses") then
				ScriptExit()

				end
		player = Object.Get_Owner()		
		if message == OnEnter then	
			Golanposition1 = Find_First_Object("Golan_Structure_1")
			Golanposition2 = Find_First_Object("Golan_Structure_2")
			Golanposition3 = Find_First_Object("Golan_Structure_3")
			if Golanposition1 then
				SpawnList(assault_list1, Golanposition1, player, true, true)
			end
			if Golanposition2 then
				SpawnList(assault_list1, Golanposition2, player, true, true)
			end
			if Golanposition3 then
				SpawnList(assault_list1, Golanposition3, player, true, true)
			end				
		end
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
				spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
				spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
                Sleep(1)
				SpawnList(assault_list1, spawn_marker1, player, true, true)
				SpawnList(assault_list2, spawn_marker2, player, true, true)
				SpawnList(assault_list3, spawn_marker3, player, true, true)
		end
end
