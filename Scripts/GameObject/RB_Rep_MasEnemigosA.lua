--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);
unit_list1 = { "CISR11", "CISR15", "CISR11" }  
unit_list2 = { "CISR16", "CISR16", "CISR16", "CISR06", "CISR06", "CISR06" }
unit_list3 = { "CISR10", "CISR10", "CISR10", "CISR04", "CISR04", "CISR04" }

chances = nil


end

function State_Init(message)
	if message == OnEnter then	
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()

		empire_player = Find_Player("Empire")
		rebel_player = Find_Player("Rebel")

		Sleep(5)
		
		enemy_units = {}
		
		enemy_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Capital")
		
		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then
				table.insert( enemy_units,unit )
			end
		end
		
		if table.getn( enemy_units ) >= 60 then
               Game_Message("ARE_TOOMANYE")
                ScriptExit()
        end
		
		Sleep(2)				
		interdictor_table = Find_All_Objects_Of_Type("Corvette | Frigate | Capital | Structure")
				any_active = false
				for i,interdictor in pairs(interdictor_table) do
					if TestValid(interdictor) and interdictor.Is_Ability_Active("INTERDICT") and interdictor.Get_Owner().Is_Human() then
						any_active = true
						if any_active then
							Game_Message("TEXT_MESSAGE_INTERDICTOR_ACTIVE2")
						-- El mensaje deberia ser las fuerzas enemigas han evitado el interdictor
							--ScriptExit()
						end
					end
				end
		
		Game_Message("ARE_ENEMIS")	


		for k, unit in pairs(enemy_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == rebel_player and unit.Get_Owner().Is_Enemy(player) and not unit.Get_Owner().Is_Human() then 
				Register_Timer(reinforcesR_5, 5)
			end
		end
		
	end			
end

function reinforcesR_5()
		
		starbaseRe_marker1 = Find_First_Object("Posicion_Ataque_01")
		starbaseRe_marker2 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker3 = Find_First_Object("Posicion_Ataque_03")
		starbaseRe_marker4 = Find_First_Object("Posicion_Ataque_02")
		starbaseRe_marker5 = Find_First_Object("Posicion_Ataque_01")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(20)
				grupo_01 = SpawnList(starbase_Repre1, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre1b, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre1c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre1d, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_05 = SpawnList(starbase_Repre1e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_05) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_06 = SpawnList(starbase_Repre1e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_06) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(30)
				grupo_01 = SpawnList(starbase_Repre2, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre2b, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre2c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre2d, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_05 = SpawnList(starbase_Repre2e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_05) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_06 = SpawnList(starbase_Repre2e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_06) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				grupo_01 = SpawnList(starbase_Repre3, starbaseRe_marker1, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_02 = SpawnList(starbase_Repre3b, starbaseRe_marker2, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_02) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_03 = SpawnList(starbase_Repre3c, starbaseRe_marker3, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_03) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_04 = SpawnList(starbase_Repre3d, starbaseRe_marker4, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_04) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_05 = SpawnList(starbase_Repre3e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_05) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(1)
				grupo_06 = SpawnList(starbase_Repre3e, starbaseRe_marker5, Find_Player("Empire"), true, true)
				for i,unit in pairs(grupo_06) do
					unit.Cinematic_Hyperspace_In(1)
				end
				Sleep(2)
				ScriptExit()
			end	
			
		end

end
