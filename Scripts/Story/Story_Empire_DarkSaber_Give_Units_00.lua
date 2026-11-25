--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Spawn_Units_00 = State_Spawn_Units_00
		,Spawn_Units_01 =State_Spawn_Units_01
		,Spawn_Units_01 =State_Spawn_Units_02
		,Spawn_Units_01 =State_Spawn_Units_03
		,Spawn_Units_01 =State_Spawn_Units_04
		,Spawn_Units_01 =State_Spawn_Units_05
	}

unit_list00 = { "ByssDestroyed_Empire_Fleet", "E_Tech5_Field_Com_Empire_Team" }
unit_list01 = { "Delvardus_Empire_Fleet", "E_Tech4_Field_Com_Empire_Team", "KnightHammer", "VSD13X", "Firestorm" }
unit_list02 = { "Harrsk_Empire_Fleet", "E_Tech5_Field_Com_Empire_Team" }
unit_list03 = { "Tedaroc_Empire_Fleet", "E_Tech3_Field_Com_Empire_Team" }
unit_list04 = { "TossBeacon_Empire_Fleet", "E_Tech5_Field_Com_Empire_Team" }
unit_list05 = { "EspadaOscura" }

end
function State_Spawn_Units_00(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		planet00 = FindPlanet("ByssDestroyed")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list00, planet00, empire_player, false, false)
	end
end
function State_Spawn_Units_01(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		planet01 = FindPlanet("Delvardus")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list01, planet01, empire_player, false, false)
	end
end
function State_Spawn_Units_02(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		planet02 = FindPlanet("Harrsk")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list02, planet02, empire_player, false, false)
	end
end
function State_Spawn_Units_03(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		planet03 = FindPlanet("Tedaroc")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list03, planet03, empire_player, false, false)
	end
end
function State_Spawn_Units_04(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		planet04 = FindPlanet("TossBeacon")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list04, planet04, empire_player, false, false)
	end
end
function State_Spawn_Units_05(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet05 = FindPlanet("Hoth")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list05, planet05, underworld_player, false, false)
	end
end






