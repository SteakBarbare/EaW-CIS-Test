--3 Way GC Space Battles
--By Sidious Invader

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1a = {"NV_Defense_Mining_Station"}
assault_list2a = {"NV_Defense_Mining_Station"}
assault_list3a = {"NV_Defense_Mining_Station"}

assault_list1b = {"HA_Defense_Station"}
assault_list2b = {"HA_Defense_Station"}
assault_list3b = {"HA_Defense_Station"}

assault_list1c = {"NV_Asteroid_Mine_Station"}
assault_list2c = {"NV_Asteroid_Mine_Station"}
assault_list3c = {"NV_Asteroid_Mine_Station"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end

		if message == OnEnter then
				Star_Base_1a = Find_First_Object("Corporate_Star_Base_5")
				Star_Base_1b = Find_First_Object("Hapan_Star_Base_5")

				
				if Star_Base_1a then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
					Sleep(1)
					SpawnList(assault_list1a, spawn_marker1, Find_Player("Corporate_Sector_Authority"), true, true)
					SpawnList(assault_list2a, spawn_marker2, Find_Player("Corporate_Sector_Authority"), true, true)
					SpawnList(assault_list3a, spawn_marker3, Find_Player("Corporate_Sector_Authority"), true, true)
				end
				if Star_Base_1b then
					spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
					spawn_marker2 = Find_First_Object("Defense_Structure_Marker2")
					spawn_marker3 = Find_First_Object("Defense_Structure_Marker3")
					Sleep(1)
					SpawnList(assault_list1b, spawn_marker1, Find_Player("Hapan"), true, true)
					SpawnList(assault_list2b, spawn_marker2, Find_Player("Hapan"), true, true)
					SpawnList(assault_list3b, spawn_marker3, Find_Player("Hapan"), true, true)
				end
				
			
				
				
                Sleep(5)
		Object.Despawn()	
		ScriptExit()
		end
end
