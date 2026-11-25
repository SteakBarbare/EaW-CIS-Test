--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")



function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

StoryModeEvents = 
	{
		Spawn_Sol_Negro_Units_00 = State_Spawn_Sol_Negro_Units_00
		,Spawn_Sol_Negro_Units_01 = State_Spawn_Sol_Negro_Units_01
		,Spawn_Sol_Negro_Units_02 = State_Spawn_Sol_Negro_Units_02
		,Spawn_Sol_Negro_Units_03 = State_Spawn_Sol_Negro_Units_03
		,Spawn_Sol_Negro_Units_04 = State_Spawn_Sol_Negro_Units_04
		,Spawn_Sol_Negro_Units_05 = State_Spawn_Sol_Negro_Units_05
		,Spawn_Sol_Negro_Units_06 = State_Spawn_Sol_Negro_Units_06
	}

unit_list00 = { "StarViper_Squadron", "StarViper_Squadron", "Skipray_Squadron", "Skipray_Squadron", "Fragata_Venganza", "Fragata_Venganza", "Crusader_Gunship", "Crusader_Gunship", "Underworld_Merc_Squad" }
unit_list01 = { "StarViper_Squadron", "StarViper_Squadron", "Skipray_Squadron", "Skipray_Squadron", "Fragata_Venganza", "Fragata_Venganza", "Crusader_Gunship", "Crusader_Gunship", "Underworld_Merc_Squad" }
unit_list02 = { "StarViper_Squadron", "Fragata_Venganza", "Underworld_Merc_Squad", "Underworld_Merc_Squad" }
unit_list03 = { "StarViper_Squadron", "Fragata_Venganza", "Krayt_Class_Destroyer", "Underworld_Merc_Squad" }
unit_list04 = { "BS_Providence", "BS_LucrehulkB" }
unit_list05 = { "BS_Recusant", "BS_Munificent" }
unit_list06 = { "StarViper_Squadron", "Fragata_Venganza", "Krayt_Class_Destroyer", "Underworld_Merc_Squad" }

end
function State_Spawn_Sol_Negro_Units_00(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet00 = FindPlanet("NarShadda")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list00, planet00, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_01(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet01 = FindPlanet("Abregado_Rae")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list01, planet01, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_02(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet02 = FindPlanet("Ord_Mantell")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list02, planet02, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_03(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet03 = FindPlanet("Myrkr")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list03, planet03, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_04(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet04 = FindPlanet("Bonadan")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list04, planet04, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_05(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet05 = FindPlanet("Kessel")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list05, planet05, underworld_player, false, false)
	end
end
function State_Spawn_Sol_Negro_Units_06(message)
	if message == OnEnter then
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		underworld_player = Find_Player("Underworld")
		planet06 = FindPlanet("VergessoAsteroids")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		rebel_player.Enable_Advisor_Hints("Space",false)
		rebel_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(unit_list06, planet06, underworld_player, false, false)
	end
end
		






