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

unit_list1 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list2 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list3 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list4 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list5 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list6 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list7 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list8 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list9 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list10 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}
unit_list11 = {"Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad"}


Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Pirates")

end
function State_Spawn_Rebel_Units(message)
			if message == OnEnter then
				Sleep(2)
				Planet00 = FindPlanet("MonCalimari")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet00.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list1, Planet00, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then	
				Sleep(2)
				Planet01 = FindPlanet("Bestine")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet01.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list2, Planet01, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet02 = FindPlanet("Sluis_Van")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet02.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list3, Planet02, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet03 = FindPlanet("Bespin")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet03.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list4, Planet03, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet04 = FindPlanet("Malastare")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet04.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list5, Planet04, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet05 = FindPlanet("RocheAsteroids")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet05.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list6, Planet05, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet06 = FindPlanet("Tynna")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet06.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list7, Planet06, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet07 = FindPlanet("Taanab")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet07.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list8, Planet07, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet08 = FindPlanet("Commenor")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet08.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list9, Planet08, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet08b = FindPlanet("Yagdul")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet08b.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list10, Planet08b, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet09 = FindPlanet("Denon")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet09.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list11, Planet09, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet10 = FindPlanet("Bakura")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet10.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list11, Planet10, Rebel_Bando, false, false)
				end
			end
end
