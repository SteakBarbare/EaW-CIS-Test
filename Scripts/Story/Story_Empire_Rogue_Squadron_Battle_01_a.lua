--Auto cargador de unidades para eventos tacticos por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
require("PGStateMachine")
require("PGStoryMode")


function Definitions()

	-- Object isn't valid at this point so don't do any operations that
    -- would require it.  State_Init is the first chance you have to do
    -- operations on Object
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

	empire_player = Find_Player("Empire")
	rebel_player = Find_Player("Rebel")
	
end


function State_Init(message)
	
	if message == OnEnter then
			Nave1 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_10_LAND")
			Nave2 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_2_LAND")
			Nave3 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_4_LAND")
			Nave4 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_11_LAND")
			Nave5 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_LAND")
			Nave6 = Find_All_Objects_Of_Type("X_WING_FIGHTER_WEDGE_ROGUE_7_LAND")
			Nave7 = Find_All_Objects_Of_Type("Y_WING_LAND")
			attack_ship_move_to_marker_A = Find_First_Object("DEFENDER SETUP PHASE REVEAL")
			if TestValid(attack_ship_move_to_marker_A) then
				for k, unit in pairs(Nave1) do
					unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave2) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave3) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave4) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave5) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave6) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
				for k, unit in pairs(Nave7) do
						unit.Attack_Move(attack_ship_move_to_marker_A)
				end
			end
	end
		

end




