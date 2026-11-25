--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Mara_Blastboat"}


end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("Mara_Blastboat") then
				ScriptExit()
				end
				
				if Object.Get_Owner().Is_Human() then
				ScriptExit()
				end
		
		if message == OnEnter then

                spawn_marker1 = Find_First_Object("Attacker Entry Position")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)
                Sleep(5)
        end
end
