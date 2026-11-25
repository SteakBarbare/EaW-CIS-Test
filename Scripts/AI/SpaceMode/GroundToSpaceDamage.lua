-- $Id: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/SpaceMode/GroundToSpaceDamage.lua#2 $
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
-- (C) Petroglyph Games, Inc.
--
--
--  *****           **                          *                   *
--  *   **          *                           *                   *
--  *    *          *                           *                   *
--  *    *          *     *                 *   *          *        *
--  *   *     *** ******  * **  ****      ***   * *      * *****    * ***
--  *  **    *  *   *     **   *   **   **  *   *  *    * **   **   **   *
--  ***     *****   *     *   *     *  *    *   *  *   **  *    *   *    *
--  *       *       *     *   *     *  *    *   *   *  *   *    *   *    *
--  *       *       *     *   *     *  *    *   *   * **   *   *    *    *
--  *       **       *    *   **   *   **   *   *    **    *  *     *   *
-- **        ****     **  *    ****     *****   *    **    ***      *   *
--                                          *        *     *
--                                          *        *     *
--                                          *       *      *
--                                      *  *        *      *
--                                      ****       *       *
--
--/////////////////////////////////////////////////////////////////////////////////////////////////
-- C O N F I D E N T I A L   S O U R C E   C O D E -- D O   N O T   D I S T R I B U T E
--/////////////////////////////////////////////////////////////////////////////////////////////////
--
--              $File: //depot/Projects/StarWars_Expansion/Run/Data/Scripts/AI/SpaceMode/GroundToSpaceDamage.lua $
--
--    Original Author: Steve_Copeland
--
--            $Author: James_Yarrow $
--
--            $Change: 55010 $
--
--          $DateTime: 2006/09/19 19:14:06 $
--
--          $Revision: #2 $
--
--/////////////////////////////////////////////////////////////////////////////////////////////////

require("pgevents")

function Definitions()
	DebugMessage("%s -- In Definitions", tostring(Script))

	Category = "Ground_To_Space_Damage"
	IgnoreTarget = true
	TaskForce = 
	{
		{
			"MainForce"
			,"DenySpecialWeaponAttach"
			,"DenyHeroAttach"
			,"Ground_Empire_Hypervelocity_Gun = 1"
			,"Hutts_Ground_LNR_I_Gun = 1"
			,"Krayt_Ground_LNR_II_Gun = 1"
			,"Fel_Ground_LNR_II_Gun = 1"
			,"Corporate_Ground_LNR_I_Gun = 1"
			,"CIS_Ground_LNR_I_Gun = 1"
			,"Republic_Ground_LNR_I_Gun = 1"
			,"Hapan_Ground_LNR_II_Gun = 1"
			,"Chiss_Ground_LNR_II_Gun = 1"
			,"EVFO_Ground_LNR_II_Gun = 1"
			,"RVRE_Ground_LNR_II_Gun = 1"
			,"GA_Ground_LNR_II_Gun = 1"
			,"GAC_Ground_LNR_II_Gun = 1"
		}
	}
	
	DebugMessage("%s -- Done Definitions", tostring(Script))
end

function MainForce_Thread()
	BlockOnCommand(MainForce.Produce_Force())

	-- Keep firing at the biggest (and probably slowest) enemy until it's dead
--	AITarget = FindTarget(MainForce, "Needs_Hypervelocity_Shot", "Enemy_Unit", 1.0)
--	DebugMessage("%s -- Found Target %s", tostring(Script), tostring(AITarget))

	-- Try to fire each variety this weapon might be
	--MainForce.Fire_Special_Weapon("Ground_Empire_Hypervelocity_Gun", AITarget)
	
	if PlayerObject.Get_Faction_Name() == "EMPIRE" then
		MainForce.Fire_Special_Weapon("Ground_Empire_Hypervelocity_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Hutts" then
		MainForce.Fire_Special_Weapon("Hutts_Ground_LNR_I_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Krayt" then
		MainForce.Fire_Special_Weapon("Krayt_Ground_LNR_II_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Fel" then
		MainForce.Fire_Special_Weapon("Fel_Ground_LNR_II_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Corporate" then
		MainForce.Fire_Special_Weapon("Corporate_Ground_LNR_I_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "CIS" then
		MainForce.Fire_Special_Weapon("CIS_Ground_LNR_I_Gun", AITarget)		
	elseif PlayerObject.Get_Faction_Name() == "Republic" then
		MainForce.Fire_Special_Weapon("Republic_Ground_LNR_I_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Hapan" then
		MainForce.Fire_Special_Weapon("Hapan_Ground_LNR_II_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "Chiss" then
		MainForce.Fire_Special_Weapon("Chiss_Ground_LNR_II_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "EVFO" then
		MainForce.Fire_Special_Weapon("EVFO_Ground_LNR_II_Gun", AITarget)
	elseif PlayerObject.Get_Faction_Name() == "RVRE" then
		MainForce.Fire_Special_Weapon("RVRE_Ground_LNR_II_Gun", AITarget)		
	elseif PlayerObject.Get_Faction_Name() == "GA" then
		MainForce.Fire_Special_Weapon("GA_Ground_LNR_II_Gun", AITarget)	
	elseif PlayerObject.Get_Faction_Name() == "GAC" then
		MainForce.Fire_Special_Weapon("GAC_Ground_LNR_II_Gun", AITarget)		
	end

	-- Rely on the Weapon Online event to fire the gun subsequent times
	while TestValid(AITarget) do
		Sleep(5)
	end
	
	ScriptExit()
end

function MainForce_Special_Weapon_Online(tf, special_weapon)
	if TestValid(AITarget) then
		special_weapon.Fire_Special_Weapon(AITarget, PlayerObject)
	else
		ScriptExit()
	end
end
