-- Automatic AI autolaunch ability, modded por Nomada_Firefox
require("PGStateMachine")

function Definitions()
	ServiceRate = 1

	Define_State("State_Init", State_Init)
	
	ability_name = "WEAKEN_ENEMY"
	ability_ae_range = 2000
	ability_search_range = 5000
	ability_threat_threshold = 10
end

function State_Init(message)
	if message == OnEnter then
	
		if Object.Get_Owner().Is_Human() then
			ScriptExit()
		end
		
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		
		nearby_units = {}
		
		Register_Prox(Object, Corrupt_Systems_Prox, ability_search_range)
		
	elseif message == OnUpdate then
	
		if Object.Is_Ability_Ready("WEAKEN_ENEMY") then
			cast_position, threat = Find_Best_Local_Threat_Center(nearby_units, ability_ae_range)
			if threat ~= nil and threat > ability_threat_threshold then
				Object.Activate_Ability(ability_name, cast_position)
			end
		end
		
		nearby_units = {}
		
	end
end

function Corrupt_Systems_Prox(self_obj, trigger_obj)
	
	if nearby_units[trigger_obj] == nil then
		
		if not trigger_obj.Get_Owner().Is_Enemy(Object.Get_Owner()) then
			return
		end	
	
		--Don't waste corrupt systems on unshielded units unless we really don't like them
		if trigger_obj.Get_Shield() <= 0.0 then
			if trigger_obj ~= FindDeadlyEnemy(Object) then
				return
			end
		end
		
		nearby_units[trigger_obj] = trigger_obj
	end
			
end



