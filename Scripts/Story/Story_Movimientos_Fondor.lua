--Edited by Nomada_Firefox
require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Fondor_00 = State_Spawn_Rebel_Units_Fondor_00
	}
	
	unit_typename_list = {
		"Y-Wing_Squadron"
		,"Y-Wing_Squadron"
		,"Rebel_Tank_Buster_Squad"
		,"Rebel_Infantry_Squad"
		,"Rebel_Infantry_Squad"
		,"R_Tech1_Field_Com_Rebel_Team"
	}
	
	rfleet_list1 = { "R_Protector", "MC40v02", "Jedi_Cruiser_R", "Rep_AcclamatorII", "E_CR_CVM", "E_CR_CVM", "E_CR_CVM", "Quasar", "Quasar", "Corellian_Gunboat", "Corellian_Gunboat", "Corellian_Gunboat", "R_BulkCRU", "R_BulkCRU", "R_BulkCRU", "R_BulkCRU", "Nebulon_B_Frigate", "Nebulon_B_Frigate" } 
		
end

function State_Spawn_Rebel_Units_Fondor_00(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		fondor_planet = FindPlanet("Fondor")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list, fondor_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(rfleet_list1, fondor_planet, rebel_player, false, false)
	end
end
