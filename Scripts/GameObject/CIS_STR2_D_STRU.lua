--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"NV_Defense_Beacon_Station"}
assault_list2 = {"NV_CIS_Outpost_Station_2"}
assault_list3 = {"NV_Defense_CIS_Missile_Station"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("CIS_GolanI_Defenses") then
				ScriptExit()
				elseif Find_First_Object("CIS_GolanII_Defenses") then
				ScriptExit()
				elseif Find_First_Object("CIS_GolanIII_Defenses") then
				ScriptExit()
				end
		
		player = Object.Get_Owner()
		
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
		
end

