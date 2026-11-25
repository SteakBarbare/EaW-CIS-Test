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
				Research_1RB = Find_First_Object("Rebels_to_Tech_2_RB")
				if Research_1RB then
         				Research_1RB.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_2RB = Find_First_Object("Rebels_to_Tech_3_RB")
				if Research_2RB then
         				Research_2RB.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_3RB = Find_First_Object("Rebels_to_Tech_4_RB")
				if Research_3RB then
         				Research_3RB.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Research_4RB = Find_First_Object("Rebels_to_Tech_5_RB")
				if Research_4RB then
         				Research_4RB.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				ResearchRB_RES = Find_First_Object("Rebels_to_Tech_RES_RB")
				if ResearchRB_RES then
         				ResearchRB_RES.Take_Damage(1000000)
				end
	end
	
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
				Research_RES = Find_First_Object("Rebels_to_Tech_RES")
				if Research_RES then
         				Research_RES.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				RVREResearch_1 = Find_First_Object("RVRE_To_Tech_2")
				if RVREResearch_1 then
         				RVREResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RVREResearch_2 = Find_First_Object("RVRE_To_Tech_3")
				if RVREResearch_2 then
         				RVREResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RVREResearch_3 = Find_First_Object("RVRE_To_Tech_4")
				if RVREResearch_3 then
         				RVREResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RVREResearch_4 = Find_First_Object("RVRE_To_Tech_5")
				if RVREResearch_4 then
         				RVREResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				RepResearch_1 = Find_First_Object("Republic_To_Tech_2_RB")
				if RepResearch_1 then
         				RepResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_2 = Find_First_Object("Republic_To_Tech_3_RB")
				if RepResearch_2 then
         				RepResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_3 = Find_First_Object("Republic_To_Tech_4_RB")
				if RepResearch_3 then
         				RepResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				RepResearch_4 = Find_First_Object("Republic_To_Tech_5_RB")
				if RepResearch_4 then
         				RepResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				EResearchRB_1 = Find_First_Object("Empire_To_Tech_2_RB")
				if EResearchRB_1 then
         				EResearchRB_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearchRB_2 = Find_First_Object("Empire_To_Tech_3_RB")
				if EResearchRB_2 then
         				EResearchRB_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearchRB_3 = Find_First_Object("Empire_To_Tech_4_RB")
				if EResearchRB_3 then
         				EResearchRB_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearchRB_4 = Find_First_Object("Empire_To_Tech_5_RB")
				if EResearchRB_4 then
         				EResearchRB_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearchRB_FO = Find_First_Object("Empire_To_Tech_FO_RB")
				if EResearchRB_FO then
         				EResearchRB_FO.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				EResearch_1 = Find_First_Object("Empire_To_Tech_2")
				if EResearch_1 then
         				EResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearch_2 = Find_First_Object("Empire_To_Tech_3")
				if EResearch_2 then
         				EResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearch_3 = Find_First_Object("Empire_To_Tech_4")
				if EResearch_3 then
         				EResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearch_4 = Find_First_Object("Empire_To_Tech_5")
				if EResearch_4 then
         				EResearch_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EResearch_FO = Find_First_Object("Empire_To_Tech_FO")
				if EResearch_FO then
         				EResearch_FO.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EVFOResearch_1 = Find_First_Object("EVFO_To_Tech_2")
				if EVFOResearch_1 then
         				EVFOResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EVFOResearch_2 = Find_First_Object("EVFO_To_Tech_3")
				if EVFOResearch_2 then
         				EVFOResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EVFOResearch_3 = Find_First_Object("EVFO_To_Tech_4")
				if EVFOResearch_3 then
         				EVFOResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				EVFOResearch_4 = Find_First_Object("EVFO_To_Tech_5")
				if EVFOResearch_4 then
         				EVFOResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				CISResearch_1 = Find_First_Object("CIS_To_Tech_2_RB")
				if CISResearch_1 then
         				CISResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_2 = Find_First_Object("CIS_To_Tech_3_RB")
				if CISResearch_2 then
         				CISResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_3 = Find_First_Object("CIS_To_Tech_4_RB")
				if CISResearch_3 then
         				CISResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				CISResearch_4 = Find_First_Object("CIS_To_Tech_5_RB")
				if CISResearch_4 then
         				CISResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				FelResearch_1 = Find_First_Object("Fel_To_Tech_2_RB")
				if FelResearch_1 then
         				FelResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_2 = Find_First_Object("Fel_To_Tech_3_RB")
				if FelResearch_2 then
         				FelResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_3 = Find_First_Object("Fel_To_Tech_4_RB")
				if FelResearch_3 then
         				FelResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				FelResearch_4 = Find_First_Object("Fel_To_Tech_5_RB")
				if FelResearch_4 then
         				FelResearch_4.Take_Damage(1000000)
				end
	end
	
	if message == OnEnter then
				KraytResearch_1 = Find_First_Object("Krayt_To_Tech_2_RB")
				if KraytResearch_1 then
         				KraytResearch_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_2 = Find_First_Object("Krayt_To_Tech_3_RB")
				if KraytResearch_2 then
         				KraytResearch_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_3 = Find_First_Object("Krayt_To_Tech_4_RB")
				if KraytResearch_3 then
         				KraytResearch_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				KraytResearch_4 = Find_First_Object("Krayt_To_Tech_5_RB")
				if KraytResearch_4 then
         				KraytResearch_4.Take_Damage(1000000)
				end
	end
	
	Sleep(5)
	ScriptExit()
end




