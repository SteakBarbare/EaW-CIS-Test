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
				Fleet_1 = Find_First_Object("Stormtrooper_Regiment")
				if Fleet_1 then
         				Fleet_1.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_2 = Find_First_Object("Imperial_Army_Regiment")
				if Fleet_2 then
         				Fleet_2.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_3 = Find_First_Object("Imperial_Army_RegimentB")
				if Fleet_3 then
         				Fleet_3.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_4 = Find_First_Object("Imperial_Army_RegimentC")
				if Fleet_4 then
         				Fleet_4.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_5 = Find_First_Object("Imperial_Army_RegimentD")
				if Fleet_5 then
         				Fleet_5.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_6 = Find_First_Object("Imperial_Fleet_Regiment")
				if Fleet_6 then
         				Fleet_6.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_7 = Find_First_Object("Darktrooper_Regiment")
				if Fleet_7 then
         				Fleet_7.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_8 = Find_First_Object("War_Droid_Regiment")
				if Fleet_8 then
         				Fleet_8.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_9 = Find_First_Object("Imperial_Fleet_RegimentA")
				if Fleet_9 then
         				Fleet_9.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_10 = Find_First_Object("Storm_Commando_Regiment")
				if Fleet_10 then
         				Fleet_10.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_11 = Find_First_Object("Imperial_Army_RegimentUp")
				if Fleet_11 then
         				Fleet_11.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_12 = Find_First_Object("Imperial_Hvy_Army_Regiment")
				if Fleet_12 then
         				Fleet_12.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_13 = Find_First_Object("Imperial_Hvy_Army_RegimentB")
				if Fleet_13 then
         				Fleet_13.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_14 = Find_First_Object("Doomgiver_Regiment")
				if Fleet_14 then
         				Fleet_14.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_15 = Find_First_Object("WorldDevastator_Regiment")
				if Fleet_15 then
         				Fleet_15.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_16 = Find_First_Object("WorldDevastator_Regiment2")
				if Fleet_16 then
         				Fleet_16.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_17 = Find_First_Object("DeathTroopers_Regiment")
				if Fleet_17 then
         				Fleet_17.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_18 = Find_First_Object("Imperial_VHvy_Army_Regiment")
				if Fleet_18 then
         				Fleet_18.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_19 = Find_First_Object("Imperial_VHvy_Scout_Regiment")
				if Fleet_19 then
         				Fleet_19.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_20 = Find_First_Object("Imperial_Hvy_Artillery_Regiment")
				if Fleet_20 then
         				Fleet_20.Take_Damage(1000000)
				end
	end
	if message == OnEnter then
				Fleet_21 = Find_First_Object("Imperial_VHvy_Artillery_Regiment")
				if Fleet_21 then
         				Fleet_21.Take_Damage(1000000)
				end
	end	
	
	
	Sleep(5)
	ScriptExit()
end




