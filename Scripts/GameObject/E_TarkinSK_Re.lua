--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGMoveUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = { "Death_Star_Sk"}

end

	
function State_Init(message)
	if message == OnEnter then
				
		spawn_marker = Find_First_Object("DEATH_STAR_POSITION")
		spawn_markerB = Find_First_Object("E_TarkinSK_Marker")
		player = Object.Get_Owner()
		SpawnList(unit_list1, spawn_marker, player, true, true)

		If not spawn_marker then
			SpawnList(unit_list1, spawn_markerB, player, true, true)
		end

		
		commander = Find_First_Object("Allecto_Star_Destroyer")
		commander.Despawn()	
		ScriptExit()
	end		
end
