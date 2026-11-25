-- Zlayer by Pox, adapted by Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")
require("PGMoveUnits")

function Definitions()

	Define_State("State_Init", State_Init);

	unit_list1 = { "Tarkin_Station_SkB"}

end

function State_Init(message)
	if message == OnEnter then

		-- prevent this from doing anything in galactic mode
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
		player = Object.Get_Owner()
		spawn_marker = Find_First_Object("DEATH_STAR_POSITION")	
		spawn_markerb = Find_First_Object("Team_00_Spawn_Point_Marker")	
		Sleep(2)
		if spawn_marker then
			Object.Despawn()	
			
			DS = SpawnList(unit_list1, spawn_marker, player, true, true)
			
				for i,unit in pairs(DS) do
					unit.Cinematic_Hyperspace_In(1)
				end
		
			
			Sleep(1)
			ScriptExit()
		end
		if not spawn_marker then
			Object.Despawn()	
			
			DS = SpawnList(unit_list1, spawn_markerb, player, true, true)
			
				for i,unit in pairs(DS) do
					unit.Cinematic_Hyperspace_In(1)
				end
			
			
			Sleep(1)
			ScriptExit()
		end
		ScriptExit()
	end
end




