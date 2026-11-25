--Edit by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = { "Dooku_Team", "Grievous_Team", "Ventress_Sith_Team", "General_Sevran_Team", "Sith_Team", "Jango_Fett_Team_Land_MP", "Durge_Team", "Aurra_Team_Land_MP", "Cad_Bane_Team_Land_MP", "CydonTank_Team" }  
	
end


function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("CIS_IA_Ground_Automatic_01_Unit")
		player = landing_zone.Get_Owner()
		
		Despliegue_de_unidades = SpawnList(unit_list1, landing_zone, player, true, true)
		if player.Is_Human() then
			ScriptExit()
		end
		Sleep(15)
		
		closest_enemy = Find_Nearest(Object, Find_Player("Republic"), true)
		for k, unit in pairs(Despliegue_de_unidades) do
			unit.Attack_Move(closest_enemy)
		end	
		Sleep(5)
		Object.Despawn()
	end
end







