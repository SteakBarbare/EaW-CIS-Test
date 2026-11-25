-- Edit by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Empire_Units_final_01 = State_Spawn_Empire_Units_final_01
		,Spawn_Empire_Units_final_02 = State_Spawn_Empire_Units_final_02
		,Spawn_Empire_Units_final_03 = State_Spawn_Empire_Units_final_03
		,Spawn_Empire_Units_final_04 = State_Spawn_Empire_Units_final_04
		,Spawn_Empire_Units_final_05 = State_Spawn_Empire_Units_final_05
	}
	
	unit_list1 = {
		"Star_Destroyer"
		,"Victory_Destroyer"
		,"Acclamator_Assault_Ship"
	}
	unit_list2 = {
		"Nebulon_B2E"
		,"Star_Destroyer"
		,"Tector"
		,"E_Strike"
	}
	unit_list3 = {
		"ISD2"
		,"Bajonett"
		,"Bajonett"
		,"E_Nebulon_B"
		,"E_Carrack"
		,"E_Carrack"
	}
	unit_list4 = {
		"E_Nebulon_B"
		,"Victory_Destroyer"
		,"Bajonett"
		,"Bajonett"
	}
	unit_list5 = {
		"E_Nebulon_B"
		,"Nebulon_B2E"
		,"E_Strike"
		,"E_Strike"
	}
	
	flag_mothma_params_set = false
end
function State_Spawn_Empire_Units_final_01(message)
			if message == OnEnter then
				rebel_player = Find_Player("Rebel")
				empire_player = Find_Player("Empire")
				wayland_planet = FindPlanet("Wayland")
				empire_player.Enable_Advisor_Hints("Space",false)
				empire_player.Enable_Advisor_Hints("Land",false)
				unit_list = SpawnList(unit_list1, wayland_planet, empire_player, false, false)
			end
end
function State_Spawn_Empire_Units_final_02(message)
			if message == OnEnter then
				rebel_player = Find_Player("Rebel")
				empire_player = Find_Player("Empire")
				kessel_planet = FindPlanet("Kessel")
				empire_player.Enable_Advisor_Hints("Space",false)
				empire_player.Enable_Advisor_Hints("Land",false)
				unit_list = SpawnList(unit_list2, kessel_planet, empire_player, false, false)
			end
end
function State_Spawn_Empire_Units_final_03(message)
			if message == OnEnter then
				rebel_player = Find_Player("Rebel")
				empire_player = Find_Player("Empire")
				carida_planet = FindPlanet("Carida")
				empire_player.Enable_Advisor_Hints("Space",false)
				empire_player.Enable_Advisor_Hints("Land",false)
				unit_list = SpawnList(unit_list3, carida_planet, empire_player, false, false)
			end
end
function State_Spawn_Empire_Units_final_04(message)
			if message == OnEnter then
				rebel_player = Find_Player("Rebel")
				empire_player = Find_Player("Empire")
				kuat_planet = FindPlanet("Kuat")
				empire_player.Enable_Advisor_Hints("Space",false)
				empire_player.Enable_Advisor_Hints("Land",false)
				unit_list = SpawnList(unit_list4, kuat_planet, empire_player, false, false)
			end
end
function State_Spawn_Empire_Units_final_05(message)
			if message == OnEnter then
				rebel_player = Find_Player("Rebel")
				empire_player = Find_Player("Empire")
				kashyyyk_planet = FindPlanet("Kashyyyk")
				empire_player.Enable_Advisor_Hints("Space",false)
				empire_player.Enable_Advisor_Hints("Land",false)
				unit_list = SpawnList(unit_list5, kashyyyk_planet, empire_player, false, false)
			end
end


