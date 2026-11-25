-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
unit_list1 = {"Mc80c_05_EJ"}
unit_list2 = {"Mc80c_gold"}
unit_list3 = {"Mc90_Cruiser"}
unit_list4 = {"Mc80c_EJ"}
unit_list5 = {"Mc80AJM_Up_90", "R_BulwarkII"}
unit_list6 = {"COLOSSUS"}
	
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("Rebel")
		spawn_zone1 = Find_First_Object("Attacker Entry Position")
		spawn_zone2 = Find_First_Object("Attacker Entry Position")
		spawn_zone3 = Find_First_Object("Attacker Entry Position")
		spawn_zone4 = Find_First_Object("Attacker Entry Position")
		spawn_zone5 = Find_First_Object("Attacker Entry Position")
		spawn_zone6 = Find_First_Object("Attacker Entry Position")
		Despliegue_de_unidades1 = SpawnList(unit_list1, spawn_zone1, player, true, true)
		Despliegue_de_unidades2 = SpawnList(unit_list2, spawn_zone2, player, true, true)
		Despliegue_de_unidades3 = SpawnList(unit_list3, spawn_zone3, player, true, true)
		Despliegue_de_unidades4 = SpawnList(unit_list4, spawn_zone4, player, true, true)
		Despliegue_de_unidades5 = SpawnList(unit_list5, spawn_zone5, player, true, true)
		Despliegue_de_unidades6 = SpawnList(unit_list6, spawn_zone6, player, true, true)
		Sleep(15)
		zona_de_ataque1 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades1) do
			unit.Guard_Target(zona_de_ataque1)
		end	
		zona_de_ataque2 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades2) do
			unit.Guard_Target(zona_de_ataque2)
		end	
		zona_de_ataque3 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades3) do
			unit.Guard_Target(zona_de_ataque3)
		end	
		zona_de_ataque4 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades4) do
			unit.Guard_Target(zona_de_ataque4)
		end	
		zona_de_ataque5 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades5) do
			unit.Guard_Target(zona_de_ataque5)
		end	
		zona_de_ataque6 = Find_First_Object("Defending Forces Position")
		for k, unit in pairs(Despliegue_de_unidades6) do
			unit.Guard_Target(zona_de_ataque6)
		end	
		Sleep(5)
		Object.Despawn()
	end
end





