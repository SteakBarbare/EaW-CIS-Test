--By Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Victoria_Imperial = State_Victoria_Imperial
		,Victoria_Rebelde = State_Victoria_Rebelde
	}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end
function State_Victoria_Imperial(message)
		if message == OnEnter then
		
				Defiance_Rebel = Find_First_Object("Defiance_Twin_Death_Stars")
				Defiance_Rebel.Despawn()
				Rogue_Squadron_Space_Futuro_Rebel = Find_First_Object("Rogue_Squadron_Space_Futuro")
				Rogue_Squadron_Space_Futuro_Rebel.Despawn()
				Millennium_Falcon_Rebel = Find_First_Object("Millennium_Falcon")
				Millennium_Falcon_Rebel.Despawn()

				Sleep(3)
		end
end
function State_Victoria_Rebelde(message)
		if message == OnEnter then
		
				Defiance_Rebel = Find_First_Object("Defiance_Twin_Death_Stars")
				Defiance_Rebel.Despawn()
				Rogue_Squadron_Space_Futuro_Rebel = Find_First_Object("Rogue_Squadron_Space_Futuro")
				Rogue_Squadron_Space_Futuro_Rebel.Despawn()
				Millennium_Falcon_Rebel = Find_First_Object("Millennium_Falcon")
				Millennium_Falcon_Rebel.Despawn()

				Sleep(3)
		end
end
	
