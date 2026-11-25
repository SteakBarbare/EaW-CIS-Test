--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_TIEVXBOP_E_Shipyard_Attack_space = State_Inicio_mision
	}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")
neutral = Find_Player("Neutral")

end
function State_Inicio_mision(message)
				
		if message == OnEnter then
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
				black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
					
							
		end	
end
