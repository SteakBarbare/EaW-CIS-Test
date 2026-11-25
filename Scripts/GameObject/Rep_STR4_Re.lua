--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

starbase_re1 = {"IA_REP_Procurator", "IA_REP_AcclamatorII", "IA_REP_CR_CVM", "IA_REP_CR_CVM", "IA_Rep_Venator"}
starbase_re2 = {"IA_REP_AcclamatorII", "IA_REP_AcclamatorII", "IA_Rep_Med_CRU", "IA_Rep_Med_CRU", "IA_Rep_Venator"}
starbase_re3 = {"IA_REP_Procurator", "IA_REP_Procurator", "IA_REP_CR_CVM", "IA_REP_CR_CVM", "IA_Rep_Trireme"}
starbase_re1b = {"IA_Rep_Dreadnought", "IA_REP_Carrack", "IA_Rep_Thranta", "IA_Rep_Thranta", "IA_Rep_Med_CRU"}
starbase_re2b = {"IA_Rep_Dreadnought", "IA_REP_AcclamatorI", "IA_Rep_Lt_CRU", "IA_Rep_Lt_CRU", "IA_Rep_Med_CRU"}
starbase_re3b = {"IA_Rep_Dreadnought", "IA_Rep_Dreadnought", "IA_Rep_Lt_CRU", "IA_Rep_Lt_CRU", "IA_Rep_Lt_CRU"}
starbase_re1c = {"IA_Rep_Vainglorious", "IA_REP_AcclamatorI", "IA_Rep_Thranta", "IA_Rep_Thranta", "IA_Rep_Med_CRU"}
starbase_re2c = {"IA_Rep_VictorII", "IA_REP_AcclamatorI", "IA_Rep_Lt_CRU", "IA_Rep_Lt_CRU", "IA_Rep_Med_CRU"}
starbase_re3c = {"IA_Rep_VictorII", "IA_Rep_Vainglorious", "IA_Rep_Thranta", "IA_Rep_Thranta", "IA_Rep_Thranta"}
starbase_re1d = {"IA_REP_AcclamatorI", "IA_REP_AcclamatorI", "IA_Rep_Thranta", "IA_Rep_Thranta", "IA_Rep_Med_CRU"}
starbase_re2d = {"IA_Rep_VictorII", "IA_Rep_Vainglorious", "IA_REP_CR_CVM", "IA_REP_CR_CVM", "IA_Rep_Venator"}
starbase_re3d = {"IA_REP_AcclamatorII", "IA_REP_AcclamatorII", "IA_Rep_Lt_CRU", "IA_Rep_Lt_CRU", "IA_Rep_Trireme"}

end



function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()			

		Sleep(60)	
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
				any_active = false
				for i,interdictor in pairs(interdictor_table) do
					if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") and interdictor.Get_Owner().Is_Enemy(player) then
						any_active = true
						if any_active then
						Game_Message("TEXT_MESSAGE_IMP_INTERDICTOR_ACTIVE")
							ScriptExit()
						end
					end
				end

		
		

		if Object.Get_Owner().Is_Human() then
			chances = nil
			if chances == nil then	
				chances = GameRandom(1, 6)
				if chances == 1 then
					Game_Message("ARE_DELAYED_DEFENDERS")
					Register_Timer(reinforcesafter_120, 90)
					chances = 7
				end
				if chances == 2 then
					Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
					Register_Timer(reinforcesafter_5, 5)
					chances = 7
				end
				if chances == 3 then
					Game_Message("ARE_DELAYED_DEFENDERS")
					Register_Timer(reinforcesafter_5, 5)
					chances = 7
				end
				if chances == 4 then
					Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
					Register_Timer(reinforcesafter_5, 5)
					chances = 7
				end
				if chances == 5 then
					Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
					Register_Timer(reinforcesafter_5, 5)
					chances = 7
				end
				if chances == 6 then
					Game_Message("ARE_DELAYED_DEFENDERS")
					Register_Timer(reinforcesafter_240, 180)
					chances = 7
				end
			end	
		end	
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
		Sleep(5)
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER") 
		starbaseRe_marker1 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER1")
		starbaseRe_marker2 = Find_First_Object("DEFENSE_4CSPAD")
		starbaseRe_marker3 = Find_First_Object("ORBITAL SPECIAL STRUCTURE POSITION")
		starbaseRe_marker4 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER2")
		starbaseRe_marker5 = Find_First_Object("DEFENDING FORCES POSITION")
		Sleep(1)
		chances = nil
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Game_Message("ARE_DELAYED_DEFENDERS")
				Sleep(60)
				ReinforceList(starbase_re1, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			if chances == 2 then
				Game_Message("ARE_DELAYED_DEFENDERS")
				Sleep(120)
				ReinforceList(starbase_re2, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			if chances == 3 then
				ReinforceList(starbase_re3, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			
		end
	end	
end
function reinforcesafter_5()
	if message == OnEnter then
		Sleep(2)
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER") 
		starbaseRe_marker1 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER1")
		starbaseRe_marker2 = Find_First_Object("DEFENSE_4CSPAD")
		starbaseRe_marker3 = Find_First_Object("ORBITAL SPECIAL STRUCTURE POSITION")
		starbaseRe_marker4 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER2")
		starbaseRe_marker5 = Find_First_Object("DEFENDING FORCES POSITION")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				ReinforceList(starbase_re1, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			if chances == 2 then
				ReinforceList(starbase_re2, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			if chances == 3 then
				ReinforceList(starbase_re3, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3c, starbaseRe_marker3, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3d, starbaseRe_marker4, player, true, true, false, Move_Order1)
			end	
			
		end
	end	
end
function reinforcesafter_120()
	if message == OnEnter then
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
		Sleep(5)
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER") 
		starbaseRe_marker1 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER1")
		starbaseRe_marker2 = Find_First_Object("DEFENSE_4CSPAD")
		starbaseRe_marker3 = Find_First_Object("ORBITAL SPECIAL STRUCTURE POSITION")
		starbaseRe_marker4 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER2")
		starbaseRe_marker5 = Find_First_Object("DEFENDING FORCES POSITION")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				ReinforceList(starbase_re1, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1c, starbaseRe_marker3, player, true, true, false, Move_Order1)
			end	
			if chances == 2 then
				ReinforceList(starbase_re2, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2c, starbaseRe_marker3, player, true, true, false, Move_Order1)
			end	
			if chances == 3 then
				ReinforceList(starbase_re3, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3b, starbaseRe_marker2, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3c, starbaseRe_marker3, player, true, true, false, Move_Order1)
			end	
			
		end
	end	
end
function reinforcesafter_240()
	if message == OnEnter then
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER")
		Sleep(5)
		Game_Message("TEXT_MESSAGE_DEFENSESB_FLEET_ENTER") 
		starbaseRe_marker1 = Find_First_Object("FACTORY_FIGHTER_STRUCTURE_MARKER1")
		starbaseRe_marker2 = Find_First_Object("DEFENSE_4CSPAD")
		starbaseRe_marker3 = Find_First_Object("ORBITAL SPECIAL STRUCTURE POSITION")
		
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				ReinforceList(starbase_re1c, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re1d, starbaseRe_marker2, player, true, true, false, Move_Order1)
			end	
			if chances == 2 then
				ReinforceList(starbase_re1c, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re2d, starbaseRe_marker2, player, true, true, false, Move_Order1)
			end	
			if chances == 3 then
				ReinforceList(starbase_re3c, starbaseRe_marker1, player, true, true, false, Move_Order1)
				Sleep(1)
				ReinforceList(starbase_re3d, starbaseRe_marker2, player, true, true, false, Move_Order1)
			end	
			
		end
	end	
end	
function Move_Order1()
	allied_unit_list = Find_All_Objects_Of_Type(player)
		
	attack_ship_move_to_marker = Find_First_Object("Defending Forces Position")
	
	if not Object.Get_Owner().Is_Human() then
		for k, unit in pairs(allied_unit_list) do
			if TestValid(unit) then
				if TestValid(attack_ship_move_to_marker) then
					unit.Attack_Move(attack_ship_move_to_marker)
				end
			end
		end
	end	
end



