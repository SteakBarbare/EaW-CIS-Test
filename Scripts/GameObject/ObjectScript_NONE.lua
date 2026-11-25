-- Edit by Nomada_Firefox trying avoid the load from other scripts

require("PGStateMachine")

function Definitions()

	ServiceRate = 1

	Define_State("State_Init", State_Init);
	
end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() == "Galactic" then
			ScriptExit()
		end
		
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		
		if Object.Get_Owner().Is_Human() then
			ScriptExit()
		else
			ScriptExit()
		end
	end
end
