-- $Id: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/GameObject/ProximitySpawnTrigger.lua#1 $

require("PGStateMachine")

--When player units move near this object its spawn behavior becomes enabled

function Definitions()

	Define_State("State_Init", State_Init)
end

function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		Object.Set_Garrison_Spawn(true)
	end
end
