--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Hacer_Sarapin_Imperial_00 = State_Hacer_Sarapin_Imperial
	}
unit_list1 = {"Imperial_Heavy_Scout_Squad_Alliance", "Imperial_Stormtrooper_Squad", "Imperial_Stormtrooper_Squad", "E_Tech3_Field_Com_Empire_Team" }	
unit_list2 = {"Rebel_Speeder_Wing", "Rebel_Speeder_Wing", "R_Tech1_Field_Com_Rebel_Team", "Rebel_Tank_Buster_Squad", "Rebel_Artillery_Brigade", "Rebel_Fast_Tank_Brigade"}
unit_list3 = {"R_Fleet_Tech_1"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Hacer_Sarapin_Imperial(message)
			if message == OnEnter then
				Sleep(2)								
				Sarapin_Empire_Planet = FindPlanet("Sarapin")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Sarapin_Empire_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list1, Sarapin_Empire_Planet, Empire_Bando, true, false)
				end
			end
			if message == OnEnter then
				Sleep(2)								
				Sarapin_Rebel_Planet = FindPlanet("Sarapin")
				Rebel_Bando = Find_Player("Rebel")
				
				poseedor_planeta = Sarapin_Rebel_Planet.Get_Owner()
				if poseedor_planeta == Rebel_Bando then
					SpawnList(unit_list2, Sarapin_Rebel_Planet, Rebel_Bando, true, false)
					Sleep(2)	
					SpawnList(unit_list3, Sarapin_Rebel_Planet, Rebel_Bando, true, false)
				end
			end
end
	
