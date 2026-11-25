-- Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list = { "EV_AT_ATMKII_Sq_X_I" } 
	
end


function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Land" then
			ScriptExit()
		end
		landing_zone = Find_First_Object("Squad_E_Tech5_Field_Commander_Empire")
		player = landing_zone.Get_Owner()
		reveal_marker = Find_First_Object("Attacker Entry Position")
		FogOfWar.Temporary_Reveal(player,reveal_marker,12000)	
		ReinforceList(unit_list, landing_zone, player, true, true, true)
	end
end
