-- Edited by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_final_00 = State_Spawn_Rebeldes_final_00
		,Spawn_Rebel_Units_final_01 = State_Spawn_Rebeldes_final_01
		,Spawn_Rebel_Units_final_02 = State_Spawn_Rebeldes_final_02
		,Spawn_Rebel_Units_final_03 = State_Spawn_Rebeldes_final_03
		,Spawn_Rebel_Units_final_04 = State_Spawn_Rebeldes_final_04
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
	
	unit_typename_list4 = {
		"Rebel_Tank_Buster_Squad"
		,"Rebel_Infantry_Squad"
		,"Rebel_Infantry_Squad"
		,"R_Tech4_Field_Com_Rebel_Team"
	}	

end
function State_Spawn_Rebeldes_final_00(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Kalaan_planet = FindPlanet("Kalaan")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list4, Kalaan_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(unit_list0, Kalaan_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebeldes_final_01(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Aquaris_planet = FindPlanet("Aquaris")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list4, Aquaris_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(unit_list1, Aquaris_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebeldes_final_02(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Solem_planet = FindPlanet("Solem")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list4, Solem_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(unit_list2, Solem_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebeldes_final_03(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Averam_planet = FindPlanet("Averam")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list4, Averam_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(unit_list3, Averam_planet, rebel_player, false, false)
	end
end
function State_Spawn_Rebeldes_final_04(message)
	if message == OnEnter then
		
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		Mhaeli_planet = FindPlanet("Mhaeli")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_typename_list4, Mhaeli_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(unit_list4, Mhaeli_planet, rebel_player, false, false)
	end
end