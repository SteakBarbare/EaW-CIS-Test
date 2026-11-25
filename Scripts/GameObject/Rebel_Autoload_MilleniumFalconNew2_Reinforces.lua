--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Millennium_Falcon"}
assault_list2 = {"RavensClaw"}
assault_list3 = {"Luke_Jedi_XWing"}
assault_list4 = {"Assault_Frigate_Dodonna"}
assault_list5 = {"NaveMara"}
rebel_units = nil

end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif Find_First_Object("Millennium_Falcon") then
				ScriptExit()
				elseif Find_First_Object("RavensClaw") then
				ScriptExit()
				elseif Find_First_Object("Luke_Jedi_XWing") then
				ScriptExit()
				elseif Find_First_Object("Assault_Frigate_Dodonna") then
				ScriptExit()
				elseif Find_First_Object("NaveMara") then
				ScriptExit()
				end
		
		if message == OnEnter then
				attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
                spawn_marker1 = Find_First_Object("Attacker Entry Position")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)
				SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), true, true)
				SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), true, true)
				rebel_units = SpawnList(assault_list4, spawn_marker1, Find_Player("Rebel"), true, true)
				for k, unit in pairs(rebel_units) do
					unit.Move_To(attack_ship_move_to_marker)
				end	
				SpawnList(assault_list5, spawn_marker1, Find_Player("Rebel"), true, true)
                Sleep(5)
        end
end
