--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_Space_RebelvsEmpire = State_Batalla_de_Bakura_Space
	}
		

assault_list1 = {"NV_Ssi_ruukBattleCruiser", "NV_Ssi_ruukCarrier", "NV_Ssi_ruukCarrier", "NV_Ssi_ruukCarrier", "NV_Ssi_ruukCarrier"}
assault_list2 = {"Millennium_Falcon", "PicaroGC_Luke_Jedi_XWing", "Rogue_Squadron_Space" }

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
piratas = Find_Player("Pirates")
solnegro = Find_Player("Underworld")

end

function State_Batalla_de_Bakura_Space(message)
				
		if message == OnEnter then
				spawn_marker1 = Find_First_Object("Attacker Entry Position")
				
				if not spawn_marker1 then
					MessageBox("couldn't find needed markers")
					return
				end
				for k, unit in pairs(SpawnList(assault_list1, spawn_marker1, Find_Player("Pirates"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				Sleep(2)		
				for k, unit in pairs(SpawnList(assault_list2, spawn_marker1, Find_Player("Rebel"), false, false)) do
					unit.Guard_Target(spawn_marker1)
				end	
				
			
		end	
end