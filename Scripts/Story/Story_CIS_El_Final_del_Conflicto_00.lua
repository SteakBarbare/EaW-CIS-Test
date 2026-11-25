--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list0 = {"CIS_LucrehulkB", "CIS_LucrehulkB02", "Mano_Invisible", "CIS_Recusant", "CIS_Munificent"}
assault_list1 = {"CIS_Vulture_Squadron", "Sheathipede_Shuttle"}
assault_list2 = {"REP_VWing_Squadron", "REP_VWing_Squadron", "REP_VWing_Squadron", "REP_VWing_Squadron"}


empire = Find_Player("Republic")
rebel = Find_Player("CIS")

end

function State_Init(message)
				
	if not Get_Game_Mode() == "Space" then
		ScriptExit()

	end
	if message == OnEnter then
                spawn_marker0 = Find_First_Object("STORY_TRIGGER_ZONE_02")
                SpawnList(assault_list0, spawn_marker0, Find_Player("CIS"), true, true)
        end
	if message == OnEnter then
                spawn_marker1 = Find_First_Object("STORY_TRIGGER_ZONE_01")
                Despliegue_de_unidades1 = SpawnList(assault_list1, spawn_marker1, Find_Player("CIS"), true, true)
		Sleep(1)
		Story_Event("MISSION_00_DIALOGUE_GO")
		zona_de_ataque1 = Find_First_Object("STORY_TRIGGER_ZONE_02")	
		for k, unit in pairs(Despliegue_de_unidades1) do
			unit.Move_To(zona_de_ataque1)
		end
        end
	if message == OnEnter then
                spawn_marker2 = Find_First_Object("STORY_TRIGGER_ZONE_00")
                Despliegue_de_unidades2 = SpawnList(assault_list2, spawn_marker2, Find_Player("Republic"), true, true)
		
		Sleep(1)
		Story_Event("MISSION_01_DIALOGUE_GO")
		
		zona_de_ataque2 = Find_First_Object("STORY_TRIGGER_ZONE_03")	
		for k, unit in pairs(Despliegue_de_unidades2) do
			unit.Attack_Move(zona_de_ataque2)
		end
		
        	empire_reveal = FogOfWar.Reveal_All(Republic)
		rebel_reveal = FogOfWar.Reveal_All(CIS)
		Sleep(1)
        end
	
		
end

	
