-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")

function Definitions()

	Define_State("State_Init", State_Init);
	Define_State("State_Autofire", State_Autofire)
	
	ability_name_00 = "WEAKEN_ENEMY"
	ability_ae_range = 2000
	ability_search_range = 5000
	ability_threat_threshold = 1000
	
	unit_trigger_number = 1
	divert_range = 4050
	threat_trigger_number = 10
	ability_range = 4000

	ability_name_02 = "BLAST"
			
end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		
		if Object.Get_Owner().Is_Human() then
			ScriptExit()
		end
		
		nearby_unit_count = 0
		recent_enemy_units = {}
		nearby_units = {}
		
		
		if Object.Get_Owner().Is_Human() then
			Set_Next_State("State_Autofire")
			Register_Prox(Object, Unit_Prox, ability_range)
		else
			Set_Next_State("State_Autofire")
			Register_Prox(Object, Unit_Prox, divert_range)
		end
			
	end
	
end

function State_Autofire(message)
	if message == OnUpdate then
		if not Object.Get_Owner().Is_Human() and Object.Is_Ability_Ready("WEAKEN_ENEMY") then
			cast_position, threat = Find_Best_Local_Threat_Center(nearby_units, ability_ae_range)
			if threat ~= nil and threat > ability_threat_threshold then
				Object.Activate_Ability(ability_name_00, cast_position)
				Sleep(5)
				Object.Activate_Ability(ability_name_02, true)
			end
		end
		
	end	
	if message == OnUpdate then
		if (nearby_unit_count >= unit_trigger_number) then
			ConsiderDivertAndAOE(Object, ability_name_02, ability_range, recent_enemy_units, threat_trigger_number)
		end
		
	end		
	nearby_unit_count = 0
	recent_enemy_units = {}
	nearby_units = {}
end

function Unit_Prox(self_obj, trigger_obj)
	
	if not trigger_obj.Is_Category("Fighter") then
		return
	end
	
	if not trigger_obj.Get_Owner().Is_Enemy(Object.Get_Owner()) then
		return
	end

	if recent_enemy_units[trigger_obj] == nil then
		nearby_unit_count = nearby_unit_count + 1
		recent_enemy_units[trigger_obj] = trigger_obj
	end
end

function Corrupt_Systems_Prox(self_obj, trigger_obj)
	
	if nearby_units[trigger_obj] == nil then
		
		if not trigger_obj.Get_Owner().Is_Enemy(Object.Get_Owner()) then
			return
		end	
	
		if trigger_obj.Get_Shield() <= 0.0 then
			if trigger_obj ~= FindDeadlyEnemy(Object) then
				return
			end
		end
		
		nearby_units[trigger_obj] = trigger_obj
	end
			
end



