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
-- 					O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   
--               P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N
--//////////////////////////////////////////////////////////////////////////////////////////////////////

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = { "C_BattleDroid_Squad", "C_PlexDroidB1_Squad", "C_Super_BattleDroidB2_Squad", "C_Air_BattledroidsB1_Squad", "C_Stap_Squad", "C_Super_BattleDroid_Squad", "B1Droid_Sniper_Squad", "MAGNAGUARD_Company" }  
	
end


function State_Init(message)
	if message == OnEnter then
		spawn_zone1 = Find_First_Object("Dooku_X")
		player = spawn_zone1.Get_Owner()
		
		if player.Is_Human() then
			ScriptExit()
		end
		
		 ReinforceList(unit_list1, spawn_zone1, player, true, true, false, Move_Order1)
				
		Sleep(5)
	end
end
function Move_Order1()
	Nave1 = Find_All_Objects_Of_Type("Battledroid_Team")
	Nave2 = Find_All_Objects_Of_Type("Plex_DroidB1_Team")
	Nave3 = Find_All_Objects_Of_Type("Super_Battledroid_Team")
	Nave4 = Find_All_Objects_Of_Type("Air_BattledroidsB1")
	Nave5 = Find_All_Objects_Of_Type("Stap")
	Nave6 = Find_All_Objects_Of_Type("Super_BattledroidB3_Team")
	Nave7 = Find_All_Objects_Of_Type("B1Droid_Sniper")
	Nave8 = Find_All_Objects_Of_Type("MAGNAGUARD_Team")
	
	enemigo01 = Find_Player("Empire")
	if enemigo01.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo01)
		end
	end	
	enemigo02 = Find_Player("Rebel")
	if enemigo02.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo02)
		end
	end	
	enemigo03 = Find_Player("Underworld")
	if enemigo03.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo03)
		end
	end
	enemigo04 = Find_Player("Pirates")
	if enemigo04.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo04)
		end
	end	
	enemigo05 = Find_Player("Republic")
	if enemigo05.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo05)
		end
	end	
	enemigo06 = Find_Player("CIS")
	if enemigo06.Is_Human() then
		for k, unit in pairs(Nave1) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave2) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave3) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave4) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave5) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave6) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave7) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave8) do
				unit.Attack_Move(enemigo06)
		end
	end	
end






