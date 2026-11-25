--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Command_Admonitor"}
assault_list2 = {"Slave_I"}


end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				elseif object.Is_Human() then
				ScriptExit()
				elseif Find_First_Object("Command_Admonitor") then
				ScriptExit()
				elseif Find_First_Object("Slave_I") then
				ScriptExit()
				end
		
		if message == OnEnter then

			spawn_marker = Find_First_Object("Attacker Entry Position")
			player = object.Get_Owner()
			Sleep(1)
			SpawnList(assault_list1, spawn_marker, player, true, true)
			SpawnList(assault_list2, spawn_marker, player, true, true)
			Sleep(1)
					allied_unit_list = Find_All_Objects_Of_Type(player)
						attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
						if not allied_unit_list then
							return
						end
						for k, unit in pairs(allied_unit_list) do
							if TestValid(unit) then
								if TestValid(attack_ship_move_to_marker) then
									unit.Attack_Move(attack_ship_move_to_marker)
								end
							end
						end
				Sleep(5)
				Object.Despawn()	
				ScriptExit()
		end
end
