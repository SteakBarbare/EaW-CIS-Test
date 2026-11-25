--modded por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")

function Definitions()

	ServiceRate = 1

	Define_State("State_Init", State_Init);
	Define_State("State_AI_Autofire", State_AI_Autofire)
	Define_State("State_Human_No_Autofire", State_Human_No_Autofire)
	Define_State("State_Human_Autofire", State_Human_Autofire)
	
	ability_name = "DEFEND"
	ability_name2 = "FULL_SALVO"
end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		
		if Object.Get_Owner().Is_Human() then
			ScriptExit()
		else
			Set_Next_State("State_AI_Autofire")
		end
				
	end
end
function State_AI_Autofire(message)
	if message == OnUpdate then
		if Object.Get_Rate_Of_Damage_Taken() > 20.0 then
			if Object.Is_Ability_Ready(ability_name) then
				Object.Activate_Ability(ability_name, true)
				Object.Activate_Ability(ability_name2, true)
			end
		end
	end		
end
function State_Human_No_Autofire(message)
	if message == OnUpdate then
		if Object.Is_Ability_Active(ability_name) then
			Object.Activate_Ability(ability_name2, true)
		end
	end
end
function State_Human_Autofire(message)
	if message == OnUpdate then
	
		if Object.Is_Ability_Autofire(ability_name) then
			if Object.Get_Rate_Of_Damage_Taken() > 20.0 then
				if Object.Is_Ability_Ready(ability_name) then
					Object.Activate_Ability(ability_name, true)
					Object.Activate_Ability(ability_name2, true)
				end
			end
		else
			ScriptExit()
		end
			
	end				
end