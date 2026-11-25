--Edited by Nomada_Firefox
require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Sarapin_00 = State_Spawn_Rebel_Units_Sarapin_00
	}
	
	unit_typename_list = {"R_Tech3_Field_Com_Rebel_Team"}
	
	rfleet_list1 = {"Mc80AJM_Up", "Calamari_Cruiser_Up", "Mc80a_Up", "R_Dreadnought_Up", "R_Dreadnought_Up", "MC40v02", "MC40v03", "MC40" } 
		
end

function State_Spawn_Rebel_Units_Sarapin_00(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Intervention_planet = FindPlanet("Sarapin")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list, Intervention_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(rfleet_list1, Intervention_planet, rebel_player, false, false)
	end
end

