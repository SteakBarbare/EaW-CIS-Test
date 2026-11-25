--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

starbase_re1 = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Nebulon_B_Frigate", "Zaarin_Interdictor_Cruiser"}
starbase_re2 = {"Zaarin_ISD2", "ZAARIN_VSD2", "Zaarin_Nebulon_B_Frigate", "ZAARIN_VSD2"}
starbase_re3 = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Nebulon_B_Frigate", "Zaarin_Interdictor_Cruiser"}
starbase_re1b = {"Zaarin_ISD2", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re2b = {"Zaarin_ISD2", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re3b = {"Zaarin_ISD2", "Zaarin_ISD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re1c = {"Zaarin_Nebulon_B_Frigate", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re2c = {"Zaarin_Interdictor_Cruiser", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re3c = {"Zaarin_Interdictor_Cruiser", "Zaarin_Nebulon_B_Frigate", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Modified_Corellian_Corvette"}
starbase_re1d = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Carrack_Cruiser"}
starbase_re2d = {"Zaarin_Interdictor_Cruiser", "Zaarin_Nebulon_B_Frigate", "Zaarin_Nebulon_B_Frigate", "Zaarin_Interdictor_Cruiser"}
starbase_re3d = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Modified_Corellian_Corvette", "Zaarin_Nebulon_B_Frigate"}
starbase_re1e = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Nebulon_B_Frigate", "Zaarin_Interdictor_Cruiser"}
starbase_re2e = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Carrack_Cruiser", "Zaarin_Interdictor_Cruiser"}
starbase_re3e = {"ZAARIN_VSD2", "ZAARIN_VSD2", "Zaarin_Nebulon_B_Frigate", "Zaarin_Carrack_Cruiser"}

chances = nil


end

function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
		player = Object.Get_Owner()
		
		friendly_units = {}
		
		friendly_unit_list = Find_All_Objects_Of_Type("Corvette | Frigate | Capital")
		
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) and unit.Get_Owner() == Object.Get_Owner() then
				table.insert( friendly_units,unit )
			end
		end
		
		if table.getn( friendly_units ) >= 15 then
               Game_Message("ARE_TOOMANY")
                ScriptExit()
        end
		
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
				
		
		starbaseRe_marker1 = Find_First_Object("Defense_Structure_Marker1")
		starbaseRe_marker2 = Find_First_Object("Defense_Structure_Marker2")
		starbaseRe_marker3 = Find_First_Object("Defense_Structure_Marker3")
		starbaseRe_marker4 = Find_First_Object("Defense_Structure_Marker4")
		starbaseRe_marker5 = Find_First_Object("Defense_Structure_Marker5")
		chances = nil
		Sleep(1)
		if chances == nil then	
			chances = GameRandom(1, 3)
			if chances == 1 then
				Sleep(60)
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_INCOMING")
				Sleep(5)
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_ENTER") 
				SpawnList(starbase_re1, starbaseRe_marker1, player, true, true)
				Sleep(1)
				SpawnList(starbase_re1b, starbaseRe_marker2, player, true, true)
				Sleep(1)
				SpawnList(starbase_re1c, starbaseRe_marker3, player, true, true)
				Sleep(1)
				SpawnList(starbase_re1d, starbaseRe_marker4, player, true, true)
				Sleep(1)
				SpawnList(starbase_re1e, starbaseRe_marker5, player, true, true)
				Sleep(2)
				ScriptExit()
			end	
			if chances == 2 then
				Sleep(120)
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_INCOMING")
				Sleep(5)
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_ENTER") 
				SpawnList(starbase_re2, starbaseRe_marker1, player, true, true)
				Sleep(1)
				SpawnList(starbase_re2b, starbaseRe_marker2, player, true, true)
				Sleep(1)
				SpawnList(starbase_re2c, starbaseRe_marker3, player, true, true)
				Sleep(1)
				SpawnList(starbase_re2d, starbaseRe_marker4, player, true, true)
				Sleep(1)
				SpawnList(starbase_re2e, starbaseRe_marker5, player, true, true)
				Sleep(2)
				ScriptExit()
			end	
			if chances == 3 then
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_INCOMING")
				Sleep(5)
				Game_Message("TEXT_MESSAGE_DEFENSE_FLEET_ENTER") 
				SpawnList(starbase_re3, starbaseRe_marker1, player, true, true)
				Sleep(1)
				SpawnList(starbase_re3b, starbaseRe_marker2, player, true, true)
				Sleep(1)
				SpawnList(starbase_re3c, starbaseRe_marker3, player, true, true)
				Sleep(1)
				SpawnList(starbase_re3d, starbaseRe_marker4, player, true, true)
				Sleep(1)
				SpawnList(starbase_re3e, starbaseRe_marker5, player, true, true)
				Sleep(2)
				ScriptExit()
			end	
			
		end
		
end