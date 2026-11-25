--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = { "Tarkin_Station_Sk"}

end

	
function State_Init(message)
	if message == OnEnter then
				
		spawn_marker = Find_First_Object("E_NordSK_Marker")
		player = spawn_marker.Get_Owner()				
		SpawnList(unit_list1, spawn_marker, player, true, true)

		
		commander = Find_First_Object("Colonel_Nord_Sk")
		commander.Despawn()	
		ScriptExit()
	end		
end





