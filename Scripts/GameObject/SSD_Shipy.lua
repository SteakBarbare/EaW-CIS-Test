--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1e = {"EV_MediumGolanI"}
assault_list2e = {"EV_MediumGolanII"}
assault_list3e = {"EV_MediumGolanIII"}
assault_list1r = {"RV_MediumGolanI"}
assault_list2r = {"RV_MediumGolanII"}
assault_list3r = {"RV_MediumGolanIII"}
assault_list1u = {"UV_MediumGolanI"}
assault_list2u = {"UV_MediumGolanII"}
assault_list3u = {"UV_MediumGolanIII"}
assault_list4 = {"HYPERGUNSPACE"}
assault_list5 = {"IONGUNSPACE"}
assault_list4u = {"NV_Defense_Outpost_Station"}
assault_list5u = {"Nv_Defense_Special"}

end

function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()
		
				Sleep(2)
				repeated = Find_First_Object("HYPERGUNSPACE")
				if repeated then
					ScriptExit()		
				end			
				repeatedu = Find_First_Object("NV_Defense_Outpost_Station")
				if repeatedu then
					ScriptExit()		
				end							
		
		if message == OnEnter then
			playerE = Find_Player("Empire")
			playerR = Find_Player("Rebel")
			playerU = Find_Player("Underworld")
			player = Object.Get_Owner()
			spawn_marker1 = Find_First_Object("Defense_SSDShipyard_Marker1")
			spawn_marker2 = Find_First_Object("Defense_SSDShipyard_Marker2")
			spawn_marker3 = Find_First_Object("Defense_SSDShipyard_Marker3")
			spawn_marker4 = Find_First_Object("Defense_SSDShipyard_Marker5")
			spawn_marker5 = Find_First_Object("Defense_SSDShipyard_Marker6")
			Sleep(5)
			if spawn_marker1 and player == playerE then
				SpawnList(assault_list1e, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerR then
				SpawnList(assault_list1r, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerU then
				SpawnList(assault_list1u, spawn_marker1, player, true, true)
			end
				
			if spawn_marker2 and player == playerE then
				SpawnList(assault_list2e, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerR then
				SpawnList(assault_list2r, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerU then
				SpawnList(assault_list2u, spawn_marker2, player, true, true)
			end
						
			if spawn_marker3 and player == playerE then
				SpawnList(assault_list3e, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerR then
				SpawnList(assault_list3r, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerU then
				SpawnList(assault_list3u, spawn_marker3, player, true, true)
			end
			
			if spawn_marker4 and player == playerE then
				SpawnList(assault_list4, spawn_marker4, player, true, true)
			end
			if spawn_marker4 and player == playerR then
				SpawnList(assault_list4, spawn_marker4, player, true, true)
			end
			
			if spawn_marker5 and player == playerE then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerR then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			
			if spawn_marker4 and player == playerU then
				SpawnList(assault_list4u, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerU then
				SpawnList(assault_list5u, spawn_marker4, player, true, true)
			end
		end	
		
end
