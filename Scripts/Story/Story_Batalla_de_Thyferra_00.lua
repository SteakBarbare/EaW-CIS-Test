--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Thyferra_Space = State_Batalla_de_Thyferra_Space
	}
		

assault_list1 = {"SSD"}
assault_list2 = {"EVENTOS_TACTICOS_LIBERTAD_ISD2_B", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "AssaultFighterCraft", "AssaultFighterCraft", "AssaultFighterCraft", "BS_Dreadnought"}
assault_list3 = {"A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Thyferra_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				
				spawn_marker2 = Find_First_Object("Defending Forces Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				if not spawn_marker2 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker2, Find_Player("Empire"), false, false)) do
					unit.Attack_Move(spawn_marker1)
				end	
				
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(spawn_marker2)
				end	
				Sleep(15)
				for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Attack_Move(spawn_marker2)
				end	
				
				
			
		end	
end