--Edited by Nomada_Firefox
require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = { "Imperial_Guard_Company_E", "Republic_EWEB_troopers_Phase2_Squad", "Republic_Clon_Sniper_Phase2_Squad", "Rep_Hovermoto_Phase2_Squad", "Republic_Assault_Flame_Squad", "Republic_Assault_Squad", "Republic_StormCommando_Squad", "ClonPhase2Plex_Squad", "Republic_Stormtrooper_Squad", "ClonPhase1Plex_Squad" }  
	
end


function State_Init(message)
	if message == OnEnter then
		spawn_zone1 = Find_First_Object("CLONOBIWAN_X")
		player = spawn_zone1.Get_Owner()
		
		if player.Is_Human() then
			ScriptExit()
		end
		
		 ReinforceList(unit_list1, spawn_zone1, player, true, true, false, Move_Order1)
		
		
		Sleep(5)
	end
end
function Move_Order1()
	Nave1 = Find_All_Objects_Of_Type("Imp_Guard_Team")
	Nave2 = Find_All_Objects_Of_Type("Republic_EWEB_troopers_Phase2")
	Nave3 = Find_All_Objects_Of_Type("Clon_Sniper_Phase2")
	Nave4 = Find_All_Objects_Of_Type("Rep_Hovermoto_Phase2")
	Nave5 = Find_All_Objects_Of_Type("Clone_Assault_Flame_Team")
	Nave6 = Find_All_Objects_Of_Type("Clone_Assault_Team")
	Nave7 = Find_All_Objects_Of_Type("Storm_Commando")
	Nave8 = Find_All_Objects_Of_Type("ClonPhase2Plex_Team")
	Nave9 = Find_All_Objects_Of_Type("Clontrooper_Team")
	Nave10 = Find_All_Objects_Of_Type("ClonPhase1Plex_Team")
	
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo01)
		end
		for k, unit in pairs(Nave10) do
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo02)
		end
		for k, unit in pairs(Nave10) do
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo03)
		end
		for k, unit in pairs(Nave10) do
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo04)
		end
		for k, unit in pairs(Nave10) do
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo05)
		end
		for k, unit in pairs(Nave10) do
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
		for k, unit in pairs(Nave9) do
				unit.Attack_Move(enemigo06)
		end
		for k, unit in pairs(Nave10) do
				unit.Attack_Move(enemigo06)
		end
	end	
end





