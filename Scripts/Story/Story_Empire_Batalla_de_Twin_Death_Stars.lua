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
		
				Home_One_Rebel = Find_First_Object("Home_One_Twin_Death_Stars")
				Home_One_Rebel.Despawn()
				Mon_Remonda_Rebel = Find_First_Object("Eventos_Tacticos_Mon_Remonda")
				Mon_Remonda_Rebel.Despawn()
				IRSDEMANCIPADOR_Rebel = Find_First_Object("IRSDEMANCIPADOR")
				IRSDEMANCIPADOR_Rebel.Despawn()
				IRSDLIBERADOR_Rebel = Find_First_Object("IRSDLIBERADOR")
				IRSDLIBERADOR_Rebel.Despawn()
				Rogue_Squadron_Space_Futuro_Rebel = Find_First_Object("Rogue_Squadron_Space_Futuro")
				Rogue_Squadron_Space_Futuro_Rebel.Despawn()
				Millennium_Falcon_Rebel = Find_First_Object("Millennium_Falcon")
				Millennium_Falcon_Rebel.Despawn()

				Sleep(3)
		end
end
function State_Victoria_Rebelde(message)
		if message == OnEnter then
		
				Home_One_Rebel = Find_First_Object("Home_One_Twin_Death_Stars")
				Home_One_Rebel.Despawn()
				Mon_Remonda_Rebel = Find_First_Object("EVENTOS_TACTICOS_MON_REMONDA")
				Mon_Remonda_Rebel.Despawn()
				IRSDEMANCIPADOR_Rebel = Find_First_Object("IRSDEMANCIPADOR")
				IRSDEMANCIPADOR_Rebel.Despawn()
				IRSDLIBERADOR_Rebel = Find_First_Object("IRSDLIBERADOR")
				IRSDLIBERADOR_Rebel.Despawn()
				Rogue_Squadron_Space_Futuro_Rebel = Find_First_Object("Rogue_Squadron_Space_Futuro")
				Rogue_Squadron_Space_Futuro_Rebel.Despawn()
				Millennium_Falcon_Rebel = Find_First_Object("Millennium_Falcon")
				Millennium_Falcon_Rebel.Despawn()

				Sleep(3)
		end
end
	
