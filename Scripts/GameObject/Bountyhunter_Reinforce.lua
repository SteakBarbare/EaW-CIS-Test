--//////////////////////////////////////////////////////////////////////////////////////////////////////
--									
--    								**** **** ****
--									**   *  * *
--                 					*    **** ****
--    *********** *   *   *** *********** **         * *********** ***********
--    *         * *   *    *  *         * * *        * *           *
--    *         * *   *    *  *         * *  *       * *           *
--    *         * *   *    *  *         * *   *      * *           *
--    *         * *   *    *  *         * *    *     * *           *
--    *********** *   *    *  *********** *     *    * *           *********** 
--    *         * *   *    *  *         * *      *   * *           *
--    *         * *   *    *  *         * *       *  * *           *
--    *         * *   *    *  *         * *        * * *           *
--    *         * *** *** *** *         * *         ** *********** ***********
--                                  *   * **** ***
--                        			** ** *  * *  *
--                                  * * * **** ***
--                        
--                        
--
--//////////////////////////////////////////////////////////////////////////////////////////////////////
-- C O N F I D E N T I A L   S O U R C E   C O D E -- D O   N O T   D I S T R I B U T E
--//////////////////////////////////////////////////////////////////////////////////////////////////////
-- O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   AND   BY   ALPHA   BLUE   GROUP   MEMBERS
--               P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N
--//////////////////////////////////////////////////////////////////////////////////////////////////////
--Reinforcement Marker by Sidious Invader.

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = { "Mist_Hunter", "Labansat_Fighter" }

end



function State_Init(message)
		if message == OnEnter then
                spawn_marker = Find_First_Object("Bountyhunter_Marker")
                Sleep(1)
                ReinforceList(unit_list1, spawn_marker, Find_Player("Empire"), false, true, false, Move_Order1)
                Sleep(5)
        end
end
function Move_Order1()
	Nave1 = Find_All_Objects_Of_Type("Mist_Hunter")
	Nave2 = Find_All_Objects_Of_Type("Labansat_Fighter")
	
	attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
		
	for k, unit in pairs(Nave1) do
			unit.Attack_Move(attack_ship_move_to_marker)
	end
	for k, unit in pairs(Nave2) do
			unit.Attack_Move(attack_ship_move_to_marker)
	end
end




