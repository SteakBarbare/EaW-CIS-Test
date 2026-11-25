--Edited by Nomada_Firefox
require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Spawn_Rebel_Units_Jabiim_00 = State_Spawn_Rebel_Units_Jabiim_00
	}
	
	jabiim_lista = {	"Mc80_EJ",
				"MC40",
				"MC40v02",
				"MC40v03",
				"R_Dreadnought_Up",
				"R_Dreadnought_Up",
				"R_Dreadnought_Up",
				"R_Dreadnought_Up",
				"Liberator",
				"Liberator",
				"Liberator",
				"Corellian_Gunboat",
				"Corellian_Gunboat",
				"Corellian_Gunboat",
				"Alliance_Assault_Frigate",
				"Alliance_Assault_Frigate",
				"Alliance_Assault_Frigate"
			}
	jabiim_listb = {	"Rebel_Tank_Buster_Squad"
				,"Rebel_Infantry_Squad"
				,"Rebel_Infantry_Squad"
				,"R_Tech3_Field_Com_Rebel_Team"
			}					
	
end

function State_Spawn_Rebel_Units_Jabiim_00(message)
	if message == OnEnter then
		Sleep(10)
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")
		jabiim_planet = FindPlanet("Jabiim")
		empire_player.Enable_Advisor_Hints("Space",false)
		empire_player.Enable_Advisor_Hints("Land",false)
		unit_list = SpawnList(jabiim_lista, jabiim_planet, rebel_player, false, false)
		Sleep(5)
		unit_listb = SpawnList(jabiim_listb, jabiim_planet, rebel_player, false, false)
	end
end


