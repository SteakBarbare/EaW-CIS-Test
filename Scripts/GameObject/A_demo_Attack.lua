--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = {"ClonObiwan_Team_Land_MP", "YodaRepublic_Team", "MACEWINDU_Advanced_Team", "AylaSecura_Advanced_Team", "Rep_Shaak_Ti_Team", "QuinLan_Vos_Team", "PLON_Team", "Rep_Jedi_Team", "ARC_Alpha_Phase2_Team_Land_MP", "Delta_Team_Land_MP"}  
	
end


function State_Init(message)

		if Object.Get_Owner().Is_Human() then
				Object.Despawn()	
				ScriptExit()
		end	
	if message == OnEnter then
		landing_zone = Find_First_Object("STORY_TRIGGER_ZONE_00")
		attack_zone = Find_First_Object("STORY_TRIGGER_ZONE_01")
		spawner_unit = Find_First_Object("REP_LAAT_ARC")
		spawner_unit.Attack_Move(attack_zone)
		player = Object.Get_Owner()
				
		ReinforceList(unit_list1, landing_zone, player, true, true, false, Move_Order1)
		Sleep(5)		
	end
end
function Move_Order1()
	landing_zone = Find_First_Object("STORY_TRIGGER_ZONE_00")
	attack_zone = Find_First_Object("STORY_TRIGGER_ZONE_01")
	player = landing_zone.Get_Owner()
	enemy_unit_list =  Find_All_Objects_Of_Type("Infantry | Vehicle | Air | Landhero")
		
	for k, unit in pairs(enemy_unit_list) do
		if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				if TestValid(enemy_unit_object) then
					unit.Attack_Move(attack_zone)
				end	
		end
	end	
	Sleep(5)
	ScriptExit()
end





