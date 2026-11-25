-- Edited by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()
	
	StoryModeEvents = 
	{
		Spawn_Movimientos_DS_00 = State_Empire_ActIV_Mission_Twelve_01
	}

	Kalaan = nil
	Aquaris = nil
	Solem = nil
	Averam = nil
	Mhaeli = nil
	planet_table = nil
	empire_player = nil
end

function State_Empire_ActIV_Mission_Twelve_01(message)
	if message == OnEnter then
		--MessageBox("Empire_ActIV_Mission_Twelve_01")
		Kalaan = FindPlanet("Kalaan")
		Aquaris = FindPlanet("Aquaris")
		Solem = FindPlanet("Solem")
		Averam = FindPlanet("Averam")
		Mhaeli = FindPlanet("Mhaeli")
		empire_player = Find_Player("Empire")
		plot = Get_Story_Plot("Story_Campaign_Empire_Act_I.xml")
		if plot then
			event = plot.Get_Event("Empire_ActIV_Mission_Twelve_Stage_End_Game")
		end
		if not Kalaan or not Aquaris or not Solem or not Averam or not Mhaeli or not empire_player or not plot or not event then
			--MessageBox("error: didn't find all needed uservars")
		else
			planet_table = {[Kalaan] = false, 
							[Aquaris] = false,
							[Solem] = false,
							[Averam] = false,
							[Mhaeli] = false}
		end
	end
end

function Story_Mode_Service()

	if planet_table then
		--MessageBox("Story_Mode_Service")

		-- Update the table if any of the final planets have ever been conquered.
		-- Track the count of conquered planets and retain any unconquered planet.
		-- Note that we're ignoring if the Empire later lost the system.
		conquered_count = 0
		for planet, was_conquered in pairs(planet_table) do
			if was_conquered then
				conquered_count = conquered_count + 1
			else
				if planet.Get_Owner() == empire_player then
					planet_table[planet] = true
					conquered_count = conquered_count + 1
				else
					unconquered_planet = planet
				end
			end
		end
		
		-- If 4 of 5 systems have been conquered, the last planet stages the end game.
		if conquered_count == 4 then
			--MessageBox("Setting up end game system on: %s", tostring(unconquered_planet))
			event.Set_Event_Parameter(1, unconquered_planet)
			Story_Event("TRIGGER_MISSION_12_END_GAME")
			ScriptExit()
		end
	end
end