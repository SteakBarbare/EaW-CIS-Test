--By Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStoryMode")
require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

	StoryModeEvents = 
	{
		Batalla_de_Thyferra_Space = State_Inicio_mision
	}

	assault_list1 = { "Eventos_Tacticos_Virulence_ISD2" }
	
	empire = Find_Player("Empire")
	rebel = Find_Player("Rebel")
	piratas = Find_Player("Pirates")
	solnegro = Find_Player("Underworld")
	neutral = Find_Player("Neutral")
	
end
function State_Inicio_mision(message)
	if message == OnEnter then
		empire_reveal = FogOfWar.Reveal_All(empire)
		rebel_reveal = FogOfWar.Reveal_All(rebel)
		black_sun_reveal = FogOfWar.Reveal_All(solnegro)		
				
		wave_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "wave1")
		Nave1 = Find_Hint("EV_SSDLUSANKYA", "ssd1")
		
		grupo_01 = SpawnList(assault_list1, wave_marker1, rebel, false, false)
		for i,unit in pairs(grupo_01) do
			unit.Cinematic_Hyperspace_In(1)
			unit.Attack_Target(Nave1)
		end
		Sleep(2)
		Game_Message("TEXT_STORY_ROGUE_SQUADRON_YAGDUL_08")
		Nave2 = Find_Hint("EVENTOS_TACTICOS_LIBERTAD_ISD2", "isdr1")
		Nave3 = Find_Hint("EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "ga1")
		Nave4 = Find_Hint("EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "ga2")
		Nave5 = Find_Hint("EVENTOS_TACTICOS_GALLOFREE_THYFERRA", "ga3")
		Nave6 = Find_Hint("EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "pf1")
		Nave7 = Find_Hint("EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "pf2")
		Nave8 = Find_Hint("EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "pf3")
		Sleep(2)
		if TestValid(Nave2) then
			Nave2.Attack_Target(Nave1)
		end
		
		if TestValid(Nave3) then
			Nave3.Attack_Target(Nave1)
		end
		if TestValid(Nave4) then
			Nave4.Attack_Target(Nave1)
		end
		if TestValid(Nave5) then
			Nave5.Attack_Target(Nave1)
		end
		if TestValid(Nave6) then
			Nave6.Attack_Target(Nave1)
		end
		if TestValid(Nave7) then
			Nave7.Attack_Target(Nave1)
		end
		if TestValid(Nave8) then
			Nave8.Attack_Target(Nave1)
		end
		
	end
	
end



