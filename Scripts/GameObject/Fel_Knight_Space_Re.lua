--modded por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

unit_list1 = { "Imperial_Kights_Squadron" }

end
function State_Init(message)
	if message == OnEnter then
		if Get_Game_Mode() ~= "Space" then
				ScriptExit()
		end 
				
	spawn_marker = Find_First_Object("Fel_Knight_Space_Marker")
	player = spawn_marker.Get_Owner()				
	
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
		Sleep(5)	
		player = Object.Get_Owner()					
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
	
		if message == OnEnter then	
			if spawn_marker then
				grupo_01 = SpawnList(unit_list1, spawn_marker, player, true, true)
				for i,unit in pairs(grupo_01) do
					unit.Cinematic_Hyperspace_In(1)
				end
			end

		end
		if Object.Get_Owner().Is_Human() then
			Object.Despawn()	
			ScriptExit()
		end
		
				
		for k, unit in pairs(friendly_unit_list) do
			if TestValid(unit) then
				friendly_units_object = friendly_unit_list[1]
				enemy_player = friendly_units_object.Get_Owner().Is_Enemy(player)
				local closest_enemy = Find_Nearest(friendly_units_object, enemy_player, true)
				if TestValid(closest_enemy) then
					if unit.Is_Category("Corvette") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Frigate") then
						unit.Attack_Move(closest_enemy)
					end
					if unit.Is_Category("Capital") then
						unit.Attack_Move(closest_enemy)
					end
				end
			end
		end	
	end	
end




