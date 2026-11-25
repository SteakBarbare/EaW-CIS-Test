-- Edited by Nomada_Firefox

require("PGStateMachine")

--Once this object has fully transitioned to a playable side it spits out vehicles for its owner

function Definitions()
	Define_State("State_Waiting_For_Control", State_Waiting_For_Control);
	Define_State("State_Controlled", State_Controlled);
end

function State_Waiting_For_Control(message)

	if message == OnEnter then
		-- Do Nothing
	elseif message == OnUpdate then
		faction = Object.Get_Owner().Get_Faction_Name()
		if faction == "REBEL" or faction == "EMPIRE" or faction == "UNDERWORLD" or faction == "REPUBLIC" or faction == "CIS" or faction == "CHISS" or faction == "CORPORATE" or faction == "HAPAN" or faction == "HUTTS" or faction == "FEL" or faction == "KRAYT" or faction == "EVFO" or faction == "RVRE" or faction == "GA" or faction == "GAC" then
			Set_Next_State("State_Controlled")
		end
	end
end

function State_Controlled(message)
	if message == OnEnter then
		Object.Get_Owner().Give_Money(1800)
		Object.Disable_Capture(true)
		Sleep(3)
	end
end

