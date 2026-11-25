-- $Id: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/GameObject/ProximitySpawnTrigger.lua#1 $

require("PGStateMachine")

--When player units move near this object its spawn behavior becomes enabled

function Definitions()
	object_trap_size = 15000
	Define_State("State_Init", State_Init)
end

function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		if Object.Get_Owner().Is_Human() then
			ScriptExit()
		end
		Object.Set_Garrison_Spawn(false)
		Object.Event_Object_In_Range(Object_In_Range_Callback, object_trap_size)
	end
end

function Object_In_Range_Callback(my_object, nearby_object)
	if nearby_object.Get_Owner().Is_Human() then
		my_object.Set_Garrison_Spawn(true)
		my_object.Cancel_Event_Object_In_Range(Object_In_Range_Callback)
	end
end