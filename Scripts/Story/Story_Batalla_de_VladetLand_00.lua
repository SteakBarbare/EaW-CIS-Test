--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_VladetLand_Land = State_Batalla_de_VladetLand_Land
	}
		

assault_list1 = {"X_WING_FIGHTER_WEDGE_ROGUE_10_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_2_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_4_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_11_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_LAND", "X_WING_FIGHTER_WEDGE_ROGUE_7_LAND"}
assault_list2 = {"Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND", "Y_WING_LAND"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_VladetLand_Land(message)
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("ATTACKER ENTRY POSITION")
				Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, false)
				zona_de_ataque1 = Find_First_Object("Defending Forces Position")
				for k, unit in pairs(Despliegue_de_unidades1) do
					unit.Attack_Move(zona_de_ataque1)
				end
				
				Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), true, false)
				
				for k, unit in pairs(Despliegue_de_unidades2) do
					unit.Guard_Target(zona_de_ataque1)
				end
												
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
        end
		
end