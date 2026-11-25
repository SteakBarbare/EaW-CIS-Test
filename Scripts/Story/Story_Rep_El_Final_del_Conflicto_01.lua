--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Coruscant_Space = State_Batalla_de_Coruscant_Space
		,Grupo_de_naves_enemigas_destruido_02 = State_Malevolence_Destruido
		,Refuerzo_de_naves_enemigas = State_Refuerzo_de_naves_enemigas
		,Refuerzo_de_naves_amigas_01 = State_Refuerzo_de_naves_amigas_01
		,Refuerzo_de_naves_amigas_02 = State_Refuerzo_de_naves_amigas_02
	}
		

assault_list1 = {"Mano_Invisible_Mision_Coruscant"}
assault_list2 = {"VenatorCody_Mision_Coruscant", "Anakin_Eta2", "ClonObiwanETA_2"}
assault_list3 = {"CIS_Wavecrest_Mision_Coruscant"}
assault_list4 = {"Rep_Trireme_Mision_Coruscant"}	
assault_list5 = {"Jedi_Cruiser_REP_Mision_Coruscant"}
empire = Find_Player("Republic")
rebel = Find_Player("CIS")

end

function State_Batalla_de_Coruscant_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "separatist1")
				spawn_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "republic1")
				if not spawn_marker1 or not spawn_marker2  then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("CIS"), false, true)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
				
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker2, Find_Player("Republic"), false, true)) do
					unit.Guard_Target(spawn_marker2)
				end	
				
			
		end	
end
function State_Malevolence_Destruido(message)
	
	Anakin = Find_All_Objects_Of_Type("Anakin_Eta2")
		for j, unit in pairs(Anakin) do
			unit.Despawn()
		end
	Obiwan = Find_All_Objects_Of_Type("ClonObiwanETA_2")
		for j, unit in pairs(Obiwan) do
			unit.Despawn()
		end	

end
function State_Refuerzo_de_naves_enemigas(message)
				
		if message == OnEnter then
				
				spawn_marker3 = Find_Hint("STORY_TRIGGER_ZONE", "separatist3")
				if not spawn_marker3  then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker3, Find_Player("CIS"), false, true)) do
					unit.Guard_Target(spawn_marker3)
				end	
		
		end	
end
function State_Refuerzo_de_naves_amigas_01(message)
				
		if message == OnEnter then
		
				spawn_marker4 = Find_Hint("STORY_TRIGGER_ZONE", "republic3")
				if not spawn_marker4  then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list4, spawn_marker4, Find_Player("Republic"), false, true)) do
					unit.Guard_Target(spawn_marker4)
				end	
		
		end	
end
function State_Refuerzo_de_naves_amigas_02(message)
				
		if message == OnEnter then
		
				spawn_marker5 = Find_Hint("STORY_TRIGGER_ZONE", "republic6")
				if not spawn_marker5  then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list5, spawn_marker5, Find_Player("Republic"), false, true)) do
					unit.Guard_Target(spawn_marker5)
				end	
		
		end	
end	
