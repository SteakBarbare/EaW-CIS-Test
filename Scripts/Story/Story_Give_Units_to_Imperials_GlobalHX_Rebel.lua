--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Spawn_Rebel_Units = State_Spawn_Rebel_Units
	}

unit_list1 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list2 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list3 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list4 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list5 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list6 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list7 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list8 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list9 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list10 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list11 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list12 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list13 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list14 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}
unit_list15 = {"Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad"}

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Pirates")

end
function State_Spawn_Rebel_Units(message)
			if message == OnEnter then
				Sleep(2)
				Planet00 = FindPlanet("Kalaan")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet00.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list1, Planet00, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then	
				Sleep(2)
				Planet01 = FindPlanet("Sullust")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet01.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list2, Planet01, Empire_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet02 = FindPlanet("Bespin")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet02.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list3, Planet02, Empire_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet03 = FindPlanet("Ord_Mantell")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet03.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list4, Planet03, Empire_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet04 = FindPlanet("Geonosis")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet04.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list5, Planet04, Empire_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet05 = FindPlanet("Bestine")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet05.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list6, Planet05, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet06 = FindPlanet("Duro")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet06.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list7, Planet06, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet07 = FindPlanet("Mhaeli")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet07.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list8, Planet07, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet08 = FindPlanet("Zhar")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet08.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list9, Planet08, Empire_Bando, false, false)
				end
				Sleep(2)
				Planet08b = FindPlanet("Kuat")
				
				poseedor_planeta = Planet08b.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list10, Planet08b, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet09 = FindPlanet("Toprawa")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet09.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list11, Planet09, Empire_Bando, false, false)
				end
				Sleep(2)
				Planet09b = FindPlanet("Fondor")
								
				poseedor_planeta = Planet09b.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list12, Planet09b, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet10 = FindPlanet("Fresia")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet10.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list13, Planet10, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)	
				Planet11 = FindPlanet("Jabiim")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet11.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list14, Planet11, Empire_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet12 = FindPlanet("Kamino")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Planet12.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list15, Planet12, Empire_Bando, false, false)
				end
			end
end
	