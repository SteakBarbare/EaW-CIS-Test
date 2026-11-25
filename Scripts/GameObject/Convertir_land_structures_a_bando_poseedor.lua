--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Pirates_Bando = Find_Player("Pirates")
BlackSun_Bando = Find_Player("Underworld")
CIS_Bando = Find_Player("CIS")
Republic_Bando = Find_Player("Republic")
Krayt_Bando = Find_Player("Krayt")
Fel_Bando = Find_Player("Fel")
Hapan_Bando = Find_Player("Hapan")
Corporate_Bando = Find_Player("Corporate")
Chiss_Bando = Find_Player("Chiss")
Hutts_Bando = Find_Player("Hutts")
		
chances = nil

end



function State_Init(message)
		if Get_Game_Mode() == "Galactic" then
				ScriptExit()
		end
		
		
    if message == OnEnter then
				
		friendly_player = Object.Get_Owner()
		neutral_side = Find_Player("Structuras")
							
		neutral_unit_list = Find_All_Objects_Of_Type(neutral_side)

		Sleep(2)						
				
		for k, unit in pairs(neutral_unit_list) do
			unit.Change_Owner(friendly_player)
		end		
		
		for i, unit in pairs(neutral_unit_list) do
			if TestValid(unit) then
				if unit.Get_Owner() == neutral_side then
					unit.Change_Owner(friendly_player)
				end
			end
		end
		
	end
	Sleep(5)
	ScriptExit()
end




