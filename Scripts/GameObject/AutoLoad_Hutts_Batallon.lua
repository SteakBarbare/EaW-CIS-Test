-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = { "Hutt_SailBarge_Company", "Hutt_Pod_Walker_Team", "Hutt_Pod_Walker_Team", "Twilek_Commando_Company", "Hutt_Skiff_Team_Company", "Twilek_Commando_Company", "Hutt_PLEX_Soldier_Squad", "Hutt_PLEX_Soldier_Squad", "Hutt_Soldier_Squad", "Hutt_Soldier_Squad", "Hutt_Swamp_Speeder_Team", "Hutt_Field_Commander_Company" }

chances = nil
end

function State_Init(message)

				
				chances = GameRandom(1, 1)
		if chances == 1 then

                attack_ship_move_to_marker = Find_First_Object("Attacker Entry Position")
                spawn_marker = Find_First_Object("Defending Forces Position")
                Sleep(1)
                Rescue_fleet1 = SpawnList(assault_list1, spawn_marker, Find_Player("Piratas"), true, true)
				for k, unit in pairs(Rescue_fleet1) do
					unit.Attack_Move(attack_ship_move_to_marker)
				end	
                Sleep(5)
        end
		
		chances = nil
        ScriptExit()
end

