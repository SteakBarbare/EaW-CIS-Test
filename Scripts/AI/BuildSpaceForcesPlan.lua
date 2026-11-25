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
-- Modded by Nomada_Firefox

require("pgevents")

-- Tell the script pooling system to pre-cache this number of scripts.
ScriptPoolCount = 4

function Definitions()
	Category = "Build_Space_Forces"
	IgnoreTarget = true
	
	--Fighters are omitted deliberately.  Since they're cheap, build fast and are quickly killed it's typically better
	--to build them as we need them to attack.  For defensive purposes we'll rely on space station garrisons for our fighter
	--needs
	TaskForce = {
	{
		"ReserveForce"
		,"DenyHeroAttach"
		,"Corvette = 0,4"
		,"Frigate = 0,5"
		,"Capital = 0,6"
	}
	}
	RequiredCategories = { "Corvette | Frigate | Capital" }
	AllowFreeStoreUnits = false
end

function ReserveForce_Thread()	
	ReserveForce.Set_As_Goal_System_Removable(false)
	BlockOnCommand(ReserveForce.Produce_Force())
	ReserveForce.Set_Plan_Result(true)
end

