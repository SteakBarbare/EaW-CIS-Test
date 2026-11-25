-- Edited by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Kalast_00 = State_Spawn_Rebel_Units_Kalast_00
		,Spawn_Rebel_Units_Kalast_01 = State_Spawn_Rebel_Units_Kalast_01
		,Spawn_Rebel_Units_Kalast_02 = State_Spawn_Rebel_Units_Kalast_02
		,Spawn_Rebel_Units_Kalast_03 = State_Spawn_Rebel_Units_Kalast_03
		,Spawn_Rebel_Units_Kalast_04 = State_Spawn_Rebel_Units_Kalast_04
	}

	unit_list0 = {
		"Calamari_Cruiser"
		,"Mc80a"
		,"MC40"
	}
	unit_list1 = {
		"Nebulon_B2R"
		,"Mc80a"
		,"Mc80a"
		,"R_Strike"
	}
	unit_list2 = {
		"Mc85"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
		,"Nebulon_B_Frigate"
		,"Corellian_Corvette"
		,"Corellian_Corvette"
	}
	unit_list3 = {
		"Nebulon_B_Frigate"
		,"MC40"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
	}
	unit_list4 = {
		"Nebulon_B_Frigate"
		,"Nebulon_B_Frigate"
		,"Corellian_Corvette"
		,"Corellian_Corvette"
	}

end

function State_Spawn_Rebel_Units_Kalast_00(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Moncalimari_planet = FindPlanet("Moncalimari")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_listc = SpawnList(unit_list0, Moncalimari_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebel_Units_Kalast_01(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Sullust_planet = FindPlanet("Sullust")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_listc = SpawnList(unit_list1, Sullust_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebel_Units_Kalast_02(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Naboo_planet = FindPlanet("Naboo")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_listc = SpawnList(unit_list2, Naboo_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebel_Units_Kalast_03(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Taris_planet = FindPlanet("Taris")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_listc = SpawnList(unit_list3, Taris_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebel_Units_Kalast_04(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Yavin_Old_planet = FindPlanet("Yavin_Old")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_listc = SpawnList(unit_list4, Yavin_Old_planet, rebel_player, false, false)
	end
end
