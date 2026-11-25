--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_The_Maw_Space = State_Batalla_de_The_Maw_Space
	}
		

assault_list1 = {"NEBULON_B_FRIGATE", "CORELLIAN_CORVETTE", "CORELLIAN_CORVETTE", "CORELLIAN_CORVETTE", "Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron", "Gunboat_Squadron"}
assault_list2 = {"MILLENNIUM_FALCON"}
assault_list3 = {"Gorgona_The_Maw"}
assault_list4 = {"DEATHSTARPROTO"}
assault_list5 = {"Suncrusher_Rebel"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_The_Maw_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				spawn_marker2 = Find_First_Object("Defending Forces Position")
				falcon = Find_First_Object("MILLENNIUM_FALCON")
				gorgona = Find_First_Object("Gorgona")
				protodeathstar = Find_First_Object("DEATHSTARPROTO")
				suncruser = Find_First_Object("Suncrusher")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				if not spawn_marker2 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker2, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker2)
				end	
				if not falcon then
					for k, unit in pairs(SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), false, false)) do
						unit.Guard_Target(spawn_marker2)
					end	
				end
				if not protodeathstar then
					for k, unit in pairs(SpawnList(assault_list4, spawn_marker1, Find_Player("Empire"), false, false)) do
						unit.Attack_Move(spawn_marker2)
					end	
				end
				Sleep(90)
				if not suncruser then
					for k, unit in pairs(SpawnList(assault_list5, spawn_marker1, Find_Player("Rebel"), false, false)) do
						unit.Attack_Move(spawn_marker2)
					end	
				end
				Sleep(10)
				if not gorgona then
					for k, unit in pairs(SpawnList(assault_list3, spawn_marker1, Find_Player("Empire"), false, false)) do
						unit.Attack_Move(spawn_marker2)
					end	
				end
				
				
				
			
		end	
end