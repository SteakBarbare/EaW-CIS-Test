--Edited by Nomada_Firefox
require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Geonosis_00 = State_Spawn_Rebel_Units_Geonosis_00
	}

	rfleet_list1 = { "R_Protector", "MC40v02", "Jedi_Cruiser_R", "Rep_AcclamatorII", "E_CR_CVM", "E_CR_CVM", "E_CR_CVM", "Quasar", "Quasar", "Corellian_Gunboat", "Corellian_Gunboat", "Corellian_Gunboat", "R_BulkCRU", "R_BulkCRU", "R_BulkCRU", "R_BulkCRU", "Nebulon_B_Frigate", "Nebulon_B_Frigate" } 
	
	unit_typename_list2 = {
		"Rebel_Tank_Buster_Squad"
		,"Rebel_Infantry_Squad"
		,"Rebel_Infantry_Squad"
		,"R_Tech2_Field_Com_Rebel_Team"
	}
	
end

function State_Spawn_Rebel_Units_Geonosis_00(message)
	if message == OnEnter then
		Sleep(10)
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		geonosis_planet = FindPlanet("Geonosis")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list2, geonosis_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(rfleet_list1, geonosis_planet, rebel_player, false, false)
	end
end


