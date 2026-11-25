--Edited by Nomada_Firefox
require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Kashyyyk_00 = State_Spawn_Rebel_Units_Kashyyyk_00
	}
	
	rfleet_list2 = { "Mc120", "Mc80a_EJ", "Mc80_EJ", "Mc80b_EJ", "MC40v03", "MC40v02", "R_Dreadnought_Up", "R_Dreadnought_Up", "Liberator", "Marauder_Missile_Cruiser", "Marauder_Missile_Cruiser", "E_CR_CVM", "E_CR_CVM", "E_CR_CVM", "CR_Hvy_Gunboat", "CR_Hvy_Gunboat", "CR_Hvy_Gunboat", "Nebulon_B_Frigate", "Nebulon_B_Frigate" } 
	
end

function State_Spawn_Rebel_Units_Kashyyyk_00(message)
	if message == OnEnter then
		Sleep(10)
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Kashyyyk_planet = FindPlanet("Kashyyyk")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(rfleet_list2, Kashyyyk_planet, rebel_player, false, false)
		Sleep(5)
	end
end

