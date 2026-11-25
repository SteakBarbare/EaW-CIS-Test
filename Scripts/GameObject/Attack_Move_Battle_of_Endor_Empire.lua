-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);


end

function State_Init(message)

		if Get_Game_Mode() ~= "Space" then
		ScriptExit()
		end
		
		if message == OnEnter then

                attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")	
          
				attack_ship1 = Find_All_Objects_Of_Type("Executor_Endor")
				attack_ship2 = Find_All_Objects_Of_Type("Star_Destroyer")
				attack_ship3 = Find_All_Objects_Of_Type("ISD2_DEATHSTAR")
				for k, unit in pairs(attack_ship1) do
						unit.Attack_Move(attack_ship_move_to_marker)
				end
				for k, unit in pairs(attack_ship2) do
						unit.Attack_Move(attack_ship_move_to_marker)
				end
				for k, unit in pairs(attack_ship3) do
						unit.Attack_Move(attack_ship_move_to_marker)
				end
                Sleep(5)
        end
		
end
