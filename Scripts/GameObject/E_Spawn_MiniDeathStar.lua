--Code by Nomada_Firefox
require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"DeathStar_Mini02"}

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()

				end

		if message == OnEnter then

				spawn_marker = Find_First_Object("Mini_Death_Star_05_Position")
				player = spawn_marker.Get_Owner()
                Sleep(1)
				SpawnList(assault_list1, spawn_marker, Find_Player("Empire"), true, true)
				
                Sleep(5)
        end
end
