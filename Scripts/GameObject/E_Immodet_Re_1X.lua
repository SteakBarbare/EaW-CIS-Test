-- Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	unit_list = { "E_ATBT_Immodet_Re_1_Sq" } 

end


function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("Immodet_Marker")
		player = landing_zone.Get_Owner()
		ReinforceList(unit_list, landing_zone, player, false, false, true)
		Sleep(5)
	end
end




