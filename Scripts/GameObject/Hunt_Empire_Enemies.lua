-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);


end

function State_Init(message)

				if Get_Game_Mode() ~= "Space" then
				ScriptExit()
				end
			if message == OnEnter then
				attack_ship = Find_First_Object("Victory_Destroyer2_R_Thrawn2")
  		        Sleep(1)
				if not attack_ship then
					return
				end
				closest_enemy = Find_Nearest(Object, Find_Player("Rebel"), true)	
				if TestValid(closest_enemy) then
					attack_ship.Attack_Move(closest_enemy)
				end
			end	
end


