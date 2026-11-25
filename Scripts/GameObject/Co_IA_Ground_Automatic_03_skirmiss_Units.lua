--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

unit_list1 = {"Corporate_LAAT_Company", "Gallofree_HTT_Company", "Rebel_Y_WingLand_squadron", "Co_Scout_Airspeeder_squadron", "Rebel_Z95Land_squadron", "Co_Ird_Fighter_Land_Squadron"}  
	
end


function State_Init(message)

		if Object.Get_Owner().Is_Human() then
				Object.Despawn()	
				ScriptExit()
		end	
	if message == OnEnter then
		landing_zone = Find_First_Object("Corporate_Ground_Light_Vehicle_Factory_Build_Pad")
		spawner_unit = Find_First_Object("Co_IA_Ground_Automatic_03_Unit")
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





