--modded por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

list1 = {"GC_Walls"}

end

function State_Init(message)


		if message == OnEnter then
				player = Find_Player("Rebel")
				spawn_marker1 = Find_First_Object("AWall_Position")
				Sleep(1)
				SpawnList(list1, spawn_marker1, player, true, true)
				
				Sleep(5)
        end
end
