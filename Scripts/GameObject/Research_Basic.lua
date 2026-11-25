--Code made at a first place with the reinforcement Marker by Sidious Invader edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)
		
chances = nil

end



function State_Init(message)
	if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
	
	if message == OnEnter then
				Research_1 = Find_First_Object("Rebels_to_Tech_2")
				if Research_1 then
         				Research_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_2 = Find_First_Object("Rebels_to_Tech_3")
				if Research_2 then
         				Research_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_3 = Find_First_Object("Rebels_to_Tech_4")
				if Research_3 then
         				Research_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_4 = Find_First_Object("Rebels_to_Tech_5")
				if Research_4 then
         				Research_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				RepResearch_1 = Find_First_Object("Republic_To_Tech_2")
				if RepResearch_1 then
         				RepResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_2 = Find_First_Object("Republic_To_Tech_3")
				if RepResearch_2 then
         				RepResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_3 = Find_First_Object("Republic_To_Tech_4")
				if RepResearch_3 then
         				RepResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_4 = Find_First_Object("Republic_To_Tech_5")
				if RepResearch_4 then
         				RepResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				PirResearch_1 = Find_First_Object("Pirates_To_Tech_2")
				if PirResearch_1 then
         				PirResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				PirResearch_2 = Find_First_Object("Pirates_To_Tech_3")
				if PirResearch_2 then
         				PirResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				PirResearch_3 = Find_First_Object("Pirates_To_Tech_4")
				if PirResearch_3 then
         				PirResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				PirResearch_4 = Find_First_Object("Pirates_To_Tech_5")
				if PirResearch_4 then
         				PirResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				CISResearch_1 = Find_First_Object("CIS_To_Tech_2")
				if CISResearch_1 then
         				CISResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_2 = Find_First_Object("CIS_To_Tech_3")
				if CISResearch_2 then
         				CISResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_3 = Find_First_Object("CIS_To_Tech_4")
				if CISResearch_3 then
         				CISResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_4 = Find_First_Object("CIS_To_Tech_5")
				if CISResearch_4 then
         				CISResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Fel_To_Tech_2")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Fel_To_Tech_3")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Fel_To_Tech_4")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Fel_To_Tech_5")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				KraytResearch_1 = Find_First_Object("Krayt_To_Tech_2")
				if KraytResearch_1 then
         				KraytResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_2 = Find_First_Object("Krayt_To_Tech_3")
				if KraytResearch_2 then
         				KraytResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_3 = Find_First_Object("Krayt_To_Tech_4")
				if KraytResearch_3 then
         				KraytResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_4 = Find_First_Object("Krayt_To_Tech_5")
				if KraytResearch_4 then
         				KraytResearch_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Hutts_To_Tech_2")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Hutts_To_Tech_3")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Hutts_To_Tech_4")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Hutts_To_Tech_5")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Hapan_To_Tech_2")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Hapan_To_Tech_3")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Hapan_To_Tech_4")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Hapan_To_Tech_5")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Corporate_To_Tech_2")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Corporate_To_Tech_3")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Corporate_To_Tech_4")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Corporate_To_Tech_5")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Chiss_To_Tech_2")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Chiss_To_Tech_3")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Chiss_To_Tech_4")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Chiss_To_Tech_5")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	
	Sleep(5)
	ScriptExit()
end




