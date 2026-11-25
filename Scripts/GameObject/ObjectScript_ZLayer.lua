-- Automatic AI Blast ability fire, modded por Nomada_Firefox
require("PGStateMachine")


function Definitions()

	Define_State("State_Init", State_Init);

	layer_manager = require("eaw-layerz/layermanager")

end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end

			layer_manager:update_unit_layer(Object)

		Sleep(1)
	end
end




