--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Command_Quimera"}


end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("Command_Quimera") then
				ScriptExit()
				end
				
				if Object.Get_Owner().Is_Human() then
				ScriptExit()
				end
		
		if message == OnEnter then

                spawn_marker1 = Find_First_Object("Attacker Entry Position")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)
                Sleep(1)
				attack_ship1 = Find_First_Object("Command_Quimera")
				if not attack_ship1 then
					return
				end
				attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")	
				if TestValid(attack_ship_move_to_marker) then
					attack_ship1.Move_To(attack_ship_move_to_marker)
				end
                Sleep(5)
        end
end
