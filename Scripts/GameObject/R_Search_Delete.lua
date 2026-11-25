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
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end
	
	if message == OnEnter then
				Fleet_1 = Find_First_Object("E_Search_Heroes_A01")
				if Fleet_1 then
         				Fleet_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_2 = Find_First_Object("E_Search_Heroes_A02")
				if Fleet_2 then
         				Fleet_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_3 = Find_First_Object("E_Search_Heroes_A03")
				if Fleet_3 then
         				Fleet_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_4 = Find_First_Object("E_Search_Heroes_A04")
				if Fleet_4 then
         				Fleet_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_5 = Find_First_Object("E_Search_Heroes_A05")
				if Fleet_5 then
         				Fleet_5.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_6 = Find_First_Object("E_Search_Heroes_A06")
				if Fleet_6 then
         				Fleet_6.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_7 = Find_First_Object("E_Search_Heroes_A07")
				if Fleet_7 then
         				Fleet_7.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_8 = Find_First_Object("E_Search_Heroes_A08")
				if Fleet_8 then
         				Fleet_8.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_9 = Find_First_Object("E_Search_Heroes_A09")
				if Fleet_9 then
         				Fleet_9.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_10 = Find_First_Object("R_Search_Heroes_A01")
				if Fleet_10 then
         				Fleet_10.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_11 = Find_First_Object("R_Search_Heroes_A02")
				if Fleet_11 then
         				Fleet_11.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_12 = Find_First_Object("R_Search_Heroes_A03")
				if Fleet_12 then
         				Fleet_12.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_13 = Find_First_Object("R_Search_Heroes_A04")
				if Fleet_13 then
         				Fleet_13.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_14 = Find_First_Object("R_Search_Heroes_A05")
				if Fleet_14 then
         				Fleet_14.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_15 = Find_First_Object("R_Search_Heroes_A06")
				if Fleet_15 then
         				Fleet_15.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_16 = Find_First_Object("E_Search_Heroes_A10")
				if Fleet_16 then
         				Fleet_16.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_1MP = Find_First_Object("E_Search_Heroes_A01MP")
				if Fleet_1MP then
         				Fleet_1MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_2MP = Find_First_Object("E_Search_Heroes_A02MP")
				if Fleet_2MP then
         				Fleet_2MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_3MP = Find_First_Object("E_Search_Heroes_A03MP")
				if Fleet_3MP then
         				Fleet_3MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_4 = Find_First_Object("E_Search_Heroes_A04MP")
				if Fleet_4 then
         				Fleet_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_5MP = Find_First_Object("E_Search_Heroes_A05MP")
				if Fleet_5MP then
         				Fleet_5MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_6MP = Find_First_Object("E_Search_Heroes_A06MP")
				if Fleet_6MP then
         				Fleet_6MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_7MP = Find_First_Object("E_Search_Heroes_A07MP")
				if Fleet_7MP then
         				Fleet_7MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_8MP = Find_First_Object("E_Search_Heroes_A08MP")
				if Fleet_8MP then
         				Fleet_8MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_9MP = Find_First_Object("E_Search_Heroes_A09MP")
				if Fleet_9MP then
         				Fleet_9MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_10MP = Find_First_Object("R_Search_Heroes_A01MP")
				if Fleet_10MP then
         				Fleet_10MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_11MP = Find_First_Object("R_Search_Heroes_A02MP")
				if Fleet_11MP then
         				Fleet_11MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_12MP = Find_First_Object("R_Search_Heroes_A03MP")
				if Fleet_12MP then
         				Fleet_12MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_13MP = Find_First_Object("R_Search_Heroes_A04MP")
				if Fleet_13MP then
         				Fleet_13MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_14MP = Find_First_Object("R_Search_Heroes_A05MP")
				if Fleet_14MP then
         				Fleet_14MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_15MP = Find_First_Object("R_Search_Heroes_A06MP")
				if Fleet_15MP then
         				Fleet_15MP.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_16MP = Find_First_Object("E_Search_Heroes_A10MP")
				if Fleet_16MP then
         				Fleet_16MP.Take_Damage(1000000)
				end
	end
	
	Sleep(5)
	ScriptExit()
end




