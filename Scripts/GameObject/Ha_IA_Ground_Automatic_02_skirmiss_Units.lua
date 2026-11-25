-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

unit_list1 = {"AT_BT_Company", "Ha_HAV_Company", "Ha_Specforce_Company", "Ha_Heavy_Tracked_Brigade", "Ha_Artillery_Brigade", "Ha_1H_Repulsor_Tank_Group"}  
	
end


function State_Init(message)

		if Object.Get_Owner().Is_Human() then
				Object.Despawn()	
				ScriptExit()
		end	
	if message == OnEnter then
		landing_zone = Find_First_Object("Hapan_Ground_Heavy_Vehicle_Factory_Build_Pad")
		spawner_unit = Find_First_Object("Ha_IA_Ground_Automatic_02_Unit")
		spawner_unit.Guard_Target(landing_zone)
		player = Object.Get_Owner()
				
		ReinforceList(unit_list1, landing_zone, player, true, true, false, Move_Order1)
		Sleep(5)		
	end
end
function Move_Order1()
	player = Object.Get_Owner()
	enemy_unit_list =  Find_All_Objects_Of_Type("Infantry | Vehicle | Structure | Air | Landhero")
	Nave1 = Find_All_Objects_Of_Type(player)
		
	for k, unit in pairs(Nave1) do
		if TestValid(unit) then
				enemy_unit_object = enemy_unit_list[1]
				enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
				if TestValid(closest_enemy) then
					unit.Attack_Move(closest_enemy)
				end	
		end
	end	
	Sleep(5)
	ScriptExit()		
end






