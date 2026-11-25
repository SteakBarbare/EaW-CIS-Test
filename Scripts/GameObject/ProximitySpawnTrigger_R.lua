-- Edited by Nomada_Firefox

require("PGStateMachine")

--When player units move near this object its spawn behavior becomes enabled

function Definitions()
	object_trap_size = 2000
	Define_State("State_Init", State_Init)
	flag_structure_alive = true
	rebel = Find_Player("Rebel")
end

function State_Init(message)
	if message == OnEnter then
		Object.Set_Garrison_Spawn(false)
		Object.Event_Object_In_Range(Object_In_Range_Callback, object_trap_size)
	end
end

function Object_In_Range_Callback(my_object, nearby_object)
	if nearby_object.Get_Owner().Is_Human() then
		my_object.Set_Garrison_Spawn(true)
		facility_loc = my_object.Get_Position()
		script_marker = Find_Object_Type("Rebel_Training_Script_Marker")
		Create_Generic_Object (script_marker, facility_loc, rebel)
		my_object.Cancel_Event_Object_In_Range(Object_In_Range_Callback)
	end
end
