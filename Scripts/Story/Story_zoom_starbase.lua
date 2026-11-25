--// by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )
require("PGStoryMode")

function Definitions()
     DebugMessage("%s -- In Definitions", tostring(Script))
		
	StoryModeEvents = {
		Zoom_in_Planet_01 = State_Zoom_in_Planet_01,
		Zoom_out_Planet_01 = State_Zoom_out_Planet_01
	}
	
end

function State_Zoom_in_Planet_01(message)
    if message == OnEnter then
		
		local player = Find_Player("Fel")
		local some_planet = FindPlanet("Arkanis")
		local planet_owner = some_planet.Get_Owner()
		local planet_owner_name = planet_owner.Get_Faction_Name()
		local starbase_level = EvaluatePerception("Get_Starbase_Level", player, some_planet)
		local starbase_type = Find_Object_Type(planet_owner_name.."_STARBASE_LEVEL_"..tostring(starbase_level))
		local spawn_position = some_planet.Get_Bone_Position("STARBASE_ALT1") -- insert real bone name here
		local starbase = Create_Generic_Object(starbase_type, spawn_position, planet_owner)
	end
end
function State_Zoom_out_Planet_01(message)
    if message == OnEnter then


		Game_Message("ARE_TOOMANY")
		
	end
end




