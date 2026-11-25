--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Hacer_Bakura_Imperial_00 = State_Hacer_Bakura_Imperial
	}
		
unit_list12 = { "E_Dreadnought", "E_Carrack", "Imperial_Stormtrooper_Squad", "Imperial_Heavy_Scout_Squad_Alliance", "Imperial_Stormtrooper_Squad" }
empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Hacer_Bakura_Imperial(message)
			if message == OnEnter then
				Sleep(23)								
				Bakura_Empire_Planet = FindPlanet("Bakura")
				Empire_Bando = Find_Player("Empire")
				
				poseedor_planeta = Bakura_Rebel_Planet.Get_Owner()
				if poseedor_planeta == Empire_Bando then
					SpawnList(unit_list12, Bakura_Empire_Planet, Empire_Bando, true, false)
				end
			end
end
