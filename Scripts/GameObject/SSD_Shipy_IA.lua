--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);
-- Imperial
assault_list1e = {"EV_MediumGolanI"}
assault_list2e = {"EV_MediumGolanII"}
assault_list3e = {"EV_MediumGolanIII"}
--Republica
assault_list1rep = {"Rep_Outpost_Station_2"}
assault_list2rep = {"Rep_Outpost_Station_2"}
assault_list3rep = {"Rep_Outpost_Station_2"}
--CIS
assault_list1cis = {"NV_CIS_Outpost_Station_2"}
assault_list2cis = {"NV_CIS_Outpost_Station_2"}
assault_list3cis = {"NV_CIS_Outpost_Station_2"}
--Rebelde
assault_list1r = {"RV_MediumGolanI"}
assault_list2r = {"RV_MediumGolanII"}
assault_list3r = {"RV_MediumGolanIII"}
--Sol Negro
assault_list1u = {"UV_MediumGolanI"}
assault_list2u = {"UV_MediumGolanII"}
assault_list3u = {"UV_MediumGolanIII"}	
--Chiss
assault_list1ch = {"Ch_MediumGolanIII"}
assault_list2ch = {"Ch_MediumGolanIII"}
assault_list3ch = {"Ch_MediumGolanIII"}	
--Corporate
assault_list1co = {"Co_MediumGolanIII"}
assault_list2co = {"Co_MediumGolanIII"}
assault_list3co = {"Co_MediumGolanIII"}	
--Hapan
assault_list1ha = {"Ha_MediumGolanIII"}
assault_list2ha = {"Ha_MediumGolanIII"}
assault_list3ha = {"Ha_MediumGolanIII"}
--Hutts
assault_list1hu = {"Hu_MediumGolanIII"}
assault_list2hu = {"Hu_MediumGolanIII"}
assault_list3hu = {"Hu_MediumGolanIII"}
--EVFO
assault_list1evfo = {"EVFO_MediumGolanIII"}
assault_list2evfo = {"EVFO_MediumGolanIII"}
assault_list3evfo = {"EVFO_MediumGolanIII"}
--RVRE
assault_list1rvre = {"RVRE_MediumGolanIII"}
assault_list2rvre = {"RVRE_MediumGolanIII"}
assault_list3rvre = {"RVRE_MediumGolanIII"}
--GA
assault_list1ga = {"GA_MediumGolanIII"}
assault_list2ga = {"GA_MediumGolanIII"}
assault_list3ga = {"GA_MediumGolanIII"}
--GAC
assault_list1gac = {"GAC_MediumGolanIII"}
assault_list2gac = {"GAC_MediumGolanIII"}
assault_list3gac = {"GAC_MediumGolanIII"}
--Hypergun y IonGun Rebelde/Imperial
assault_list4 = {"HYPERGUNSPACE"}
assault_list5 = {"IONGUNSPACE"}
assault_list4cis = {"NV_Defense_CIS_Missile_Station"}
assault_list5cis = {"Golan_III_CIS"}
assault_list4rep = {"NV_Defense_Rep_Missile_Station"}
assault_list5rep = {"Golan_III_Republic"}
--Hypergun Sol Negro
assault_list4u = {"NV_Defense_Outpost_Station"}
--Estación Hangar
assault_list5u = {"Nv_Defense_Special"}
assault_list5cis = {"Nv_Defense_Special"}	
assault_list5rep = {"NV_Defense_Hangar_Station_Rep"}
assault_list5ch = {"Ch_Defense_Hangar_Station"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
					ScriptExit()
				end
				if Object.Get_Owner().Is_Human() then
					ScriptExit()		
				end		
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
			playerCIS = Find_Player("CIS")
			playerRep = Find_Player("Republic")
			playerEVF = Find_Player("Fel")
			playerEVK = Find_Player("Krayt")
			playerCh = Find_Player("Chiss")
			playerCo = Find_Player("Corporate")
			playerHa = Find_Player("Hapan")
			playerHu = Find_Player("Hutts")
			playerEVFO = Find_Player("EVFO")
			playerRVRE = Find_Player("RVRE")
			playerGA = Find_Player("GA")
			playerGAC = Find_Player("GAC")
			shipyard = Find_First_Object("Astilleros_IA")
			player = Object.Get_Owner()
			Sleep(2)
			spawn_marker1 = Find_First_Object("Defense_SSDShipyard_Marker1")
			Sleep(2)
			spawn_marker2 = Find_First_Object("Defense_SSDShipyard_Marker2")
			Sleep(2)
			spawn_marker3 = Find_First_Object("Defense_SSDShipyard_Marker3")
			Sleep(2)
			spawn_marker4 = Find_First_Object("Defense_SSDShipyard_Marker5")
			Sleep(2)
			spawn_marker5 = Find_First_Object("Defense_SSDShipyard_Marker6")
			
			Sleep(5)
			-- Marca 1
			if spawn_marker1 and player == playerE then
				SpawnList(assault_list1e, spawn_marker1, player, true, true)
				SpawnList(assault_list2e, spawn_marker2, player, true, true)
				SpawnList(assault_list3e, spawn_marker3, player, true, true)
				SpawnList(assault_list4, spawn_marker4, player, true, true)
				SpawnList(assault_list5, spawn_marker5, player, true, true)
				Sleep(5)
				ScriptExit()
			end
			if spawn_marker1 and player == playerR then
				SpawnList(assault_list1r, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerU then
				SpawnList(assault_list1u, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerCIS then
				SpawnList(assault_list1cis, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerRep then
				SpawnList(assault_list1rep, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerEVF then
				SpawnList(assault_list1evf, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerEVK then
				SpawnList(assault_list1evk, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerCh then
				SpawnList(assault_list1ch, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerCo then
				SpawnList(assault_list1co, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerHa then
				SpawnList(assault_list1ha, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerHu then
				SpawnList(assault_list1hu, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerEVFO then
				SpawnList(assault_list1evfo, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerRVRE then
				SpawnList(assault_list1rvre, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerGA then
				SpawnList(assault_list1ga, spawn_marker1, player, true, true)
			end
			if spawn_marker1 and player == playerGAC then
				SpawnList(assault_list1gac, spawn_marker1, player, true, true)
			end
			-- Marca 2	
			if spawn_marker2 and player == playerR then
				SpawnList(assault_list2r, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerU then
				SpawnList(assault_list2u, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerCIS then
				SpawnList(assault_list2cis, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerRep then
				SpawnList(assault_list2rep, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerEVF then
				SpawnList(assault_list2evf, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerEVK then
				SpawnList(assault_list2evk, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerCh then
				SpawnList(assault_list2ch, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerCo then
				SpawnList(assault_list2co, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerHa then
				SpawnList(assault_list2ha, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerHu then
				SpawnList(assault_list2hu, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerEVFO then
				SpawnList(assault_list2evfo, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerRVRE then
				SpawnList(assault_list2rvre, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerGA then
				SpawnList(assault_list2ga, spawn_marker2, player, true, true)
			end
			if spawn_marker2 and player == playerGAC then
				SpawnList(assault_list2gac, spawn_marker2, player, true, true)
			end
			-- Marca 3	
			if spawn_marker3 and player == playerR then
				SpawnList(assault_list3r, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerU then
				SpawnList(assault_list3u, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerCIS then
				SpawnList(assault_list3cis, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerRep then
				SpawnList(assault_list3rep, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerEVF then
				SpawnList(assault_list3evf, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerEVK then
				SpawnList(assault_list3evk, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerCh then
				SpawnList(assault_list3ch, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerCo then
				SpawnList(assault_list3co, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerHa then
				SpawnList(assault_list3ha, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerHu then
				SpawnList(assault_list3hu, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerEVFO then
				SpawnList(assault_list3evfo, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerRVRE then
				SpawnList(assault_list3rvre, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerGA then
				SpawnList(assault_list3ga, spawn_marker3, player, true, true)
			end
			if spawn_marker3 and player == playerGAC then
				SpawnList(assault_list3gac, spawn_marker3, player, true, true)
			end
			-- Marca 4	
			if spawn_marker4 and player == playerR then
				SpawnList(assault_list4, spawn_marker4, player, true, true)
			end
			if spawn_marker4 and player == playerU then
				SpawnList(assault_list4u, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerCIS then
				SpawnList(assault_list4cis, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerRep then
				SpawnList(assault_list4rep, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerEVF then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerEVK then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerCh then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerCo then
				SpawnList(assault_list4u, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerHa then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerHu then
				SpawnList(assault_list4u, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerEVFO then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerRVRE then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerGA then
				SpawnList(assault_list4, spawn_marker5, player, true, true)
			end
			if spawn_marker4 and player == playerGAC then
				SpawnList(assault_list4u, spawn_marker5, player, true, true)
			end
			-- Marca 5
			if spawn_marker5 and player == playerR then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerU then
				SpawnList(assault_list5u, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerCIS then
				SpawnList(assault_list5cis, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerRep then
				SpawnList(assault_list5rep, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerEVF then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerEVK then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerCh then
				SpawnList(assault_list5ch, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerCo then
				SpawnList(assault_list5u, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerHa then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerHu then
				SpawnList(assault_list5u, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerEVFO then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerRVRE then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerGA then
				SpawnList(assault_list5, spawn_marker5, player, true, true)
			end
			if spawn_marker5 and player == playerGAC then
				SpawnList(assault_list5u, spawn_marker5, player, true, true)
			end
		end	
		
end
