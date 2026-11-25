--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

	unit_list1 = { "Star_Destroyer", "Star_Destroyer", "Star_Destroyer", "Victory_Destroyer", "Victory_Destroyer" }
	unit_list2 = { "ISD2", "ISD2", "ISD2", "VSD2", "VSD2" }

end


function State_Init(message)
		spawn_marker = Find_First_Object("DSs_Marker")
		spawn_marker2 = Find_First_Object("Death_Star_Position")
		player = spawn_marker.Get_Owner()			
		DS1 = Find_First_Object("Death_StarB")
		DS2 = Find_First_Object("Death_Star_II_Full")
		DS3 = Find_First_Object("Tarkin_Station")
		
		ISDds1 = Find_First_Object("Allecto_Star_Destroyer")
		
		friendly_unit_list = Find_All_Objects_Of_Type("Transport | Spacehero | Corvette | Frigate | Antifrigate | Anticapital")
		friendly_unit_object = friendly_unit_list[1]
			if friendly_unit_object.Get_Owner() == player then				
			ScriptExit()
			end
		 if message == OnEnter then
			if TestValid(DS1) then
				ISDds1.Teleport(spawn_marker2)
				ReinforceList(unit_list1, spawn_marker2, player, false, false, false, Move_Order1)
				Sleep(5)
			end
		end	
		if message == OnEnter then
			if TestValid(DS2) then
				ISDds1.Teleport(spawn_marker2)
				ReinforceList(unit_list2, spawn_marker2, player, false, false, false, Move_Order1)
				Sleep(5)
			end
		end
		if message == OnEnter then	
			if TestValid(DS3) then
				ISDds1.Teleport(spawn_marker2)
				ReinforceList(unit_list1, spawn_marker2, player, false, false, false, Move_Order1)
				Sleep(5)
			end
		end		

end
function Move_Order1()
	Sleep(5)
	player = spawn_marker.Get_Owner()			
	if player.Is_Human() then
		ScriptExit()
	end
	
	
	enemy_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Transport | Structure | Spacehero")
	
	ia_unit_list = Find_All_Objects_Of_Type(player)
		
	for k, unit in pairs(ia_unit_list) do
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

