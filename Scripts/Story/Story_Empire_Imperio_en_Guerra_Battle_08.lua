--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"DEATH_STAR_II"}

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
				Nave1 = Find_All_Objects_Of_Type("MC80A_Up")
				Nave2 = Find_All_Objects_Of_Type("NEBULON_B_FRIGATE")
				Nave3 = Find_All_Objects_Of_Type("CORELLIAN_CORVETTE")
				Nave4 = Find_All_Objects_Of_Type("R_CR_CVM")
				Nave5 = Find_All_Objects_Of_Type("GALLOFREE_TRANSPORT")
				Nave6 = Find_All_Objects_Of_Type("MC120")
				Nave7 = Find_All_Objects_Of_Type("Quasar")
				Nave8 = Find_All_Objects_Of_Type("CALAMARI_CRUISER_Up")
				Nave9 = Find_All_Objects_Of_Type("CORELLIAN_GUNBOAT")
				Nave10 = Find_All_Objects_Of_Type("R_DREADNOUGHT")
				Nave11 = Find_All_Objects_Of_Type("PIRATE_FRIGATE")
				Nave12 = Find_All_Objects_Of_Type("R_BulkCRU")
				Nave13 = Find_All_Objects_Of_Type("LandoMFalcon_Endor")
				Nave14 = Find_All_Objects_Of_Type("Rogue_Squadron_Space")
				Nave15 = Find_All_Objects_Of_Type("A_Wing_Dodonna_Squadron")
				
				zona_de_ataque1 = Find_First_Object("Executor_Endor")	
				zona_de_ataque2 = Find_First_Object("Death_Star_II")	
				
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
				for k, unit in pairs(Nave7) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave8) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave9) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave10) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave11) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave12) do
						unit.Guard_Target(zona_de_ataque1)
				end
				for k, unit in pairs(Nave13) do
						unit.Guard_Target(zona_de_ataque2)
				end
				for k, unit in pairs(Nave14) do
						unit.Guard_Target(zona_de_ataque2)
				end
				for k, unit in pairs(Nave15) do
						unit.Guard_Target(zona_de_ataque1)
				end
				
				Sleep(5)
		end
		
end

	
