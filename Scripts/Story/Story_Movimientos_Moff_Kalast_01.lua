-- Edited by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()
	
	StoryModeEvents = 
	{
		Spawn_Units_Kalast = State_Initial_Falast_Spawn
	}
						
	falast_spawn_list =	{
							"Moff_Falast_Star_Destroyer",
							"Nebulon_B_Frigate",
							"Nebulon_B_Frigate",
							"Marauder_Missile_Cruiser",
							"Corellian_Corvette",
							"Corellian_Corvette",
							"Corellian_Corvette",
							"Rebel_X-Wing_Squadron",
							"Rebel_X-Wing_Squadron",
							"Rebel_X-Wing_Squadron",
							"Rebel_X-Wing_Squadron",
							"Rebel_X-Wing_Squadron",
							"Y-Wing_Squadron",
							"Y-Wing_Squadron"
						}
	
	--Memory pooling hints
	falast = nil
	fleet = nil
	rebel_player = nil
	falast_despawn_time = 0
	falast_spawn_time = 0
	planet_highlight = false
	falast_destroyed = false
end

function State_Initial_Falast_Spawn(message)

	if message == OnEnter then
		
		atzerri = FindPlanet("Atzerri")
		if not atzerri then
			--MessageBox("couldn't find Atzerri")
		end
		
		-- Simply place Falast at Atzerri
		rebel_player = Find_Player("REBEL")
		fleet = SpawnList(falast_spawn_list, atzerri, rebel_player, false, false)
--		falast_spawn_time = GetCurrentTime()

	end

end
