--By Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Empire_Batalla_de_Twin_Death_Stars_Begin = State_Spawn_Units
		,Victoria_Imperial = State_Victoria_Imperial
		,Victoria_Rebelde = State_Victoria_Rebelde
	}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

rebel_list_04x = { "Defiance_Twin_Death_Stars"	}


end
function State_Spawn_Units(message)
		if message == OnEnter then
				spawn_zone1 = Find_First_Object("Attacker Entry Position")
				Despliegue_de_unidades1 = SpawnList(unit_list1, spawn_zone1, rebel, true, true)
				Sleep(3)
				zona_de_ataque1 = Find_First_Object("Defending Forces Position")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end	
		end
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
	
