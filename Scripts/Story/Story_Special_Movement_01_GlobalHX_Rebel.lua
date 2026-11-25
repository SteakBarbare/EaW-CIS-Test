--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Special_Movement_01 = State_Hacer_Pirata_Myrkr
		,Special_Movement_01b = State_Hacer_Wayland_Imperial
		,Special_Movement_01c = State_Give_Rebels_NR
		}
		
unit_list1 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}
unit_list2 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}
unit_list3 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}
unit_list4 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}
unit_list5 = {"R_Fleet_Corellian", "R_Tech3_Field_Com_Rebel_Team"}
unit_list6 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}
unit_list7 = {"R_Tech3_Field_Com_Rebel_Team"}
unit_list8 = {"R_Fleet_Tech_3", "R_Tech3_Field_Com_Rebel_Team"}

unit_list13 = { "BS_Fleet_Hu", "Field_Com_Hutts_Team" }
unit_list14 = { "Imperial_Heavy_Scout_Squad_Alliance", "Imperial_Heavy_Scout_Squad_Alliance", "Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad" }


Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Underworld_Bando = Find_Player("Underworld")
Pirate_Bando = Find_Player("Pirates")

end

function State_Hacer_Pirata_Myrkr(message)
			if message == OnEnter then
				Sleep(2)								
				Myrkr_Pirate_Planet = FindPlanet("Myrkr")
				Pirate_Bando = Find_Player("Pirates")
				
				poseedor_planeta = Myrkr_Pirate_Planet.Get_Owner()
				if poseedor_planeta == Pirate_Bando then
					SpawnList(unit_list13, Myrkr_Pirate_Planet, Pirate_Bando, true, false)
				end
			end
end
function State_Hacer_Wayland_Imperial(message)
			if message == OnEnter then
				Sleep(2)								
				Wayland_Empire_Planet = FindPlanet("Wayland")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Wayland_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list14, Wayland_Empire_Planet, Empire_Bando, true, false)
				end
			end
end
function State_Give_Rebels_NR(message)
			if message == OnEnter then
				Sleep(2)
				Planet00 = FindPlanet("Ord_Pardron")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet00.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list1, Planet00, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then	
				Sleep(2)
				Planet01 = FindPlanet("Qat_Chrystac")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet01.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list2, Planet01, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet02 = FindPlanet("Woostri")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet02.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list3, Planet02, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet03 = FindPlanet("Generis")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet03.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list4, Planet03, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)	
				Planet04 = FindPlanet("Corellia")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet04.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list5, Planet04, Rebel_Bando, false, false)
				end
			end	
			if message == OnEnter then
				Sleep(2)
				Planet05 = FindPlanet("Brentaal")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet05.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list6, Planet05, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet06 = FindPlanet("Kashyyyk")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet06.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list7, Planet06, Rebel_Bando, false, false)
				end
			end
			if message == OnEnter then
				Sleep(2)
				Planet07 = FindPlanet("Coruscant")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Planet07.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list8, Planet07, Rebel_Bando, false, false)
				end
			end
			
end		
