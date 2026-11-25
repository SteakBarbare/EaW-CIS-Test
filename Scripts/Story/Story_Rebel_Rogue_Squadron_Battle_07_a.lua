--Reinforcement Marker by Sidious Invader y Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D


require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)
				
                assault_list1 = {
                "Calamari_Cruiser_Up"
				,"Calamari_Cruiser_Up"
                ,"Nebulon_B_Frigate"
                ,"Nebulon_B_Frigate"
                ,"Nebulon_B_Frigate"
				,"Skyhook"
				,"Quasar"
				,"Allegiance"
				,"Crynyd"
				,"Corellian_Corvette"
				,"Stellar_Web"
				,"Marauder_Missile_Cruiser"
                }
				empire_player = Find_Player("Empire")
				rebel_player = Find_Player("Rebel")
				Mon_Remonda_fleet = nil
     
end


function State_Init(message)
	
	empire_reveal = FogOfWar.Reveal_All(empire_player)
	rebel_reveal = FogOfWar.Reveal_All(rebel_player)

		 if message == OnEnter then
				attack_ship_move_to_marker = Find_First_Object("IronFist")
                spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
                Sleep(1)
                Mon_Remonda_fleet = SpawnList(assault_list1, spawn_marker, Find_Player("Rebel"), true, true)
				for k, unit in pairs(Mon_Remonda_fleet) do
					unit.Attack_Move(attack_ship_move_to_marker)
				end	
                Sleep(5)


        end
end
	
		



