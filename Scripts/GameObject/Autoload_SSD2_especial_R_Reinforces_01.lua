-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

unit_list1 = {"Command_Ship_Emp_Fleet_Dominance"}
unit_list2 = {"Command_Ship_Emp_Fleet_Assertor"}
unit_list3 = {"EV_Secutor_Destroyer"}
unit_list4= {"Predator_Destroyer"}
unit_list5 = {"EV_Bellator"}
unit_list6 = {"Warhammer"}
	
end


function State_Init(message)
	if message == OnEnter then
		player = Find_Player("Empire")
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





