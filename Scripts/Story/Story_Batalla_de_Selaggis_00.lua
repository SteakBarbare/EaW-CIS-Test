--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space = State_Batalla_de_Selaggis_Space
	}
		

assault_list1 = {
		 "Mon_Remonda"
                ,"Calamari_Cruiser_Up"
		,"Calamari_Cruiser_Up"
                ,"Nebulon_B_Frigate"
                ,"Nebulon_B_Frigate"
                ,"Nebulon_B_Frigate"
		,"Skyhook"
		,"Quasar"
		,"RAllegiance"
		,"Crynyd"
		,"Corellian_Corvette"
		,"Stellar_Web"
		,"Marauder_Missile_Cruiser"
                }
assault_list2 = {"IronFist", "Star_Destroyer", "Zsinj_Quasar", "E_CARRACK", "E_DREADNOUGHT", "E_DREADNOUGHT", "LANCER", "VICTORY_DESTROYER"}


empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Selaggis_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				
				spawn_marker2 = Find_First_Object("Defending Forces Position")
				
				spawn_marker3 = Find_First_Object("STORY_TRIGGER_ZONE_00")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				if not spawn_marker2 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(spawn_marker2)
				end	
				
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker2, Find_Player("Empire"), false, false)) do
					unit.Attack_Move(spawn_marker3)
				end	
		
				
			
		end	
end