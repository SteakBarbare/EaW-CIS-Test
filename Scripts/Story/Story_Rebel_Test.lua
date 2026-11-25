--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"DS_II_Endor_R"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end

function State_Init(message)
				

		if message == OnEnter then
                --spawn_marker0 = Find_Hint("STORY_TRIGGER_ZONE", "deathstar")
				--SpawnList(assault_list0, spawn_marker0, Find_Player("Empire"), true, true)
				
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
        end
		
		
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("ISD2")
				Nave2 = Find_All_Objects_Of_Type("TECTOR")
				Nave3 = Find_All_Objects_Of_Type("STAR_DESTROYER")
				Nave4 = Find_All_Objects_Of_Type("Generic_Star_Destroyer")
				Nave5 = Find_All_Objects_Of_Type("ISD2_NoFighters")
				Nave6 = Find_All_Objects_Of_Type("Executor_Endor")
				
				zona_de_ataque1 = Find_Hint("STORY_TRIGGER_ZONE", "combate1")
				
				for k, unit in pairs(Nave1) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave2) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave3) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave4) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave5) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave6) do
						unit.Guard_Target(zona_de_ataque1)
				end
				
				
				Sleep(5)
		end
		
end

	
