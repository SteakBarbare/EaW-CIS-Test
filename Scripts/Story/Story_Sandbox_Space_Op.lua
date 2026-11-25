--Reinforcement Marker by Sidious Invader y Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D


require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

     
end


function State_Init(message)
	empire_player = Find_Player("Empire")
	rebel_player = Find_Player("Rebel")
	underworld_player = Find_Player("Underworld")
	
	empire_reveal = FogOfWar.Reveal_All(empire_player)
	rebel_reveal = FogOfWar.Reveal_All(rebel_player)
	underworld_reveal = FogOfWar.Reveal_All(underworld_player)
	
	start_camera_marker = Find_Hint("GENERIC_MARKER_SPACE", "start")

	Point_Camera_At(start_camera_marker)
	ScriptExit()
end
	
		



