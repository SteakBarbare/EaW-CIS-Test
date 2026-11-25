-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	
	unit_list1 = { "Venator_Utapau"}
	unit_list2 = { "Venator_Utapau"}
	
end

function State_Init(message)
	if message == OnEnter then
		guard = Find_First_Object("Guardia_Mission_Utapau")
		player = guard.Get_Owner()
		landing_zone1 = Find_First_Object("STORY_TRIGGER_ZONE_13")
		landing_zone2 = Find_First_Object("STORY_TRIGGER_ZONE_14")
		Despliegue_de_unidades1 = SpawnList(unit_list1, landing_zone1, player, true, true)
		Despliegue_de_unidades2 = SpawnList(unit_list2, landing_zone2, player, true, true)
		Sleep(5)
		Object.Despawn()
	end
end





