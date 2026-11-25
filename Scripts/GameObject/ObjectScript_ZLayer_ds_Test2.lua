-- Zlayer by Pox, adapted by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")
require("PGMoveUnits")

function Definitions()

	Define_State("State_Init", State_Init);

	

end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		
		spawn_marker = Find_First_Object("DEATH_STAR_POSITION")	
		spawn_markerb = Find_First_Object("Posicion_Ataque_02")	
		Sleep(2)

		if spawn_markerb then
			Object.Prevent_All_Fire(true)

			Object.Cancel_Hyperspace()
			Object.Hide(true)
			Sleep(2)
			Object.Teleport_And_Face(spawn_markerb)
			Object.Cinematic_Hyperspace_In(1)
			Object.Prevent_All_Fire(false)
			Object.Make_Invulnerable(false)
			Object.Hide(false)
			Sleep(1)
			ScriptExit()
		end
		ScriptExit()
	end
end




