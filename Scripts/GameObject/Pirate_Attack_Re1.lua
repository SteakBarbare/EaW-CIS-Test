--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

starbase_PireA = {"Hu_Interceptor4", "Hu_Interceptor4"}
starbase_PireB = {"Hu_Krayt", "Hu_Hutt_CorvetteR"}
starbase_PireC = {"Hu_Hutt_CorvetteR", "Hu_Hutt_CorvetteR"}

chances = nil


end

function State_Init(message)
	if message == OnEnter then	
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		
		Sleep(100)
				
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
				any_active = false
				for i,interdictor in pairs(interdictor_table) do
					if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") then
						any_active = true
						if any_active then
						Game_Message("TEXT_MESSAGE_INTERDICTOR_ACTIVE2")
							ScriptExit()
						end
					end
				end
				
		Pirate_marker1 = Find_First_Object("Pirate Fleet position")
		
		chances = nil
		Sleep(1)
			if chances == nil then	
				chances = GameRandom(1, 6)
                if chances == 1 then
                        Sleep(90)
						enemy_player = interdictor_table.Get_Owner().Is_Enemy(Find_Player("Piratas"))
			            closest_enemy = Find_Nearest(Object, enemy_player, true)
                        Pirate_Surprise_units1 = SpawnList(starbase_PireA, Pirate_marker1, Find_Player("Piratas"), true, true)
						for i, unit in pairs(Pirate_Surprise_units1) do
							unit.Cinematic_Hyperspace_In(1)
							Sleep(5)
							unit.Attack_Move(closest_enemy)
							Sleep(2)
							ScriptExit()
						end	
                end
				if chances == 2 then
                        Sleep(100)
						enemy_player = interdictor_table.Get_Owner().Is_Enemy(Find_Player("Piratas"))
			            closest_enemy = Find_Nearest(Object, enemy_player, true)
                        Pirate_Surprise_units1 = SpawnList(starbase_PireB, Pirate_marker1, Find_Player("Piratas"), true, true)
						for i, unit in pairs(Pirate_Surprise_units1) do
							unit.Cinematic_Hyperspace_In(1)
							Sleep(5)
							unit.Attack_Move(closest_enemy)
							Sleep(2)
							ScriptExit()
						end	
                end
				if chances == 3 then
                        Sleep(110)
						enemy_player = interdictor_table.Get_Owner().Is_Enemy(Find_Player("Piratas"))
			            closest_enemy = Find_Nearest(Object, enemy_player, true)
                        Pirate_Surprise_units1 = SpawnList(starbase_PireC, Pirate_marker1, Find_Player("Piratas"), true, true)
						for i, unit in pairs(Pirate_Surprise_units1) do
							unit.Cinematic_Hyperspace_In(1)
							Sleep(5)
							unit.Attack_Move(closest_enemy)
							Sleep(2)
							ScriptExit()
						end	
                end
				if chances == 4 then
                       chances = nil
						ScriptExit()
                end
				if chances == 5 then
                       chances = nil
						ScriptExit()
                end
				if chances == 6 then
                       chances = nil
						ScriptExit()
                end
                chances = nil
                ScriptExit()
			end	
	end	
	
	
		
				
		
				
end
