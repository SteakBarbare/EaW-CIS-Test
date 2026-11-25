--Nomada_Firefox lanzador de unidades en mapa galactico O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStoryMode")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))
				
StoryModeEvents = 
	{
		Underworld_A03M12_Begin = State_Underworld_A03M12_Begin,
		UM12_AI_NOTIFICATION_Shuttle_Captures_The_Eclipse = State_Shuttle_Captures_The_Eclipse,
		UM12_ADD_OBJECTIVE_Defeat_The_Rebels = State_UM12_ADD_OBJECTIVE_Defeat_The_Rebels,
		Eclipse_SuperLaser_Disabled = State_Eclipse_SuperLaser_Disabled,
		UM12_SUPERLASER_COMES_BACK_ONLINE_AI_NOTIFICATION = State_Eclipse_SuperLaser_Enabled,
	}


   imperial_fleet_01 = {"SSD", "ISD2", "ISD2", "Dominator", "Gladiator", "Gladiator"}	
   rebel_fleet_01 = {"MC120", "IRSDLiberador", "IRSDEmancipador", "Mc85", "R_DREADNOUGHT_Up", "R_DREADNOUGHT_Up", "MC80AJM_Up", "Liberator_Up", "Dauntless_Up", "R_DREADNOUGHT_Up"}	
     

rebel_player = Find_Player("Rebel")
empire_player = Find_Player("Empire")
underworld_player = Find_Player("Underworld")
pirate_player = Find_Player("Pirates")
piratas_player = Find_Player("piratas")
neutral_player = Find_Player("Neutral")

end
function State_Underworld_A03M12_Begin(message)
				
		if message == OnEnter then

				
				NaveR01 = Find_All_Objects_Of_Type("MC80b_EJ")
				NaveR02 = Find_All_Objects_Of_Type("MC80a_EJ")
				NaveR03 = Find_All_Objects_Of_Type("MILLENNIUM_FALCON")
				NaveR04 = Find_All_Objects_Of_Type("NEBULON_B_FRIGATE")
				for k, unit in pairs(NaveR01) do
					unit.Change_Owner(underworld_player)
				end
				for k, unit in pairs(NaveR02) do
					unit.Change_Owner(underworld_player)
				end
				for k, unit in pairs(NaveR03) do
					unit.Change_Owner(underworld_player)
					unit.Make_Invulnerable(true)
				end
				for k, unit in pairs(NaveR04) do
					unit.Change_Owner(underworld_player)
				end
				
				
		end	
end
function State_Shuttle_Captures_The_Eclipse(message)
				
		if message == OnEnter then
				
				NaveU01 = Find_All_Objects_Of_Type("ECLIPSE_SUPER_STAR_DESTROYER")
				Sleep(5)
				for k, unit in pairs(NaveU01) do
					unit.Change_Owner(underworld_player)
				end
				
				
		end	
end
function State_UM12_ADD_OBJECTIVE_Defeat_The_Rebels(message)
				
		if message == OnEnter then
			NaveR01 = Find_All_Objects_Of_Type("MC80b_EJ")
			NaveR02 = Find_All_Objects_Of_Type("MC80a_EJ")
			NaveR03 = Find_All_Objects_Of_Type("MILLENNIUM_FALCON")
			NaveR04 = Find_All_Objects_Of_Type("NEBULON_B_FRIGATE")
			for k, unit in pairs(NaveR01) do
				unit.Change_Owner(rebel_player)
			end
			for k, unit in pairs(NaveR02) do
				unit.Change_Owner(rebel_player)
			end
			for k, unit in pairs(NaveR03) do
				unit.Change_Owner(rebel_player)
			end
			for k, unit in pairs(NaveR04) do
				unit.Change_Owner(underworld_player)
			end	
				
			Sleep(5)
			
			rebel_spawn_01 = Find_Hint("MARKER_GENERIC_GREEN", "entryflag-rebel01")
			eclipseposition = Find_First_Object("ECLIPSE_SUPER_STAR_DESTROYER")
			Sleep(6)
			for k, unit in pairs(SpawnList(rebel_fleet_01, rebel_spawn_01, rebel_player, false, true)) do
				unit.Attack_Move(eclipseposition.Get_Position())
			end
			Sleep(5)
			Story_Event("UM12_ECLIPSE_BEING_ATTACKED")
			Sleep(25)
			Story_Event("UM12_SUPER_STARDESTROYER_ENTERS_STAGE_LEFT")
			imperial_spawn_01 = Find_Hint("MARKER_GENERIC_YELLOW", "entryflag-empire01")
			tyber = Find_First_Object("The_Peacebringer")
			Sleep(6)
			for k, unit in pairs(SpawnList(imperial_fleet_01, imperial_spawn_01, empire_player, false, true)) do
				unit.Attack_Move(tyber.Get_Position())
			end
			Sleep(15)
		end	
end
function State_Eclipse_SuperLaser_Disabled(message)
				
		if message == OnEnter then

				NaveU01 = Find_All_Objects_Of_Type("ECLIPSE_SUPER_STAR_DESTROYER")
				Sleep(5)
				for k, unit in pairs(NaveU01) do
					unit.Change_Owner(piratas_player)
				end
				
				
		end	
end
function State_Eclipse_SuperLaser_Enabled(message)
				
		if message == OnEnter then
				
				NaveU01 = Find_All_Objects_Of_Type("ECLIPSE_SUPER_STAR_DESTROYER")
				Sleep(5)
				for k, unit in pairs(NaveU01) do
					unit.Change_Owner(underworld_player)
				end
				Sleep(2)
				NaveR03 = Find_All_Objects_Of_Type("MILLENNIUM_FALCON")
				for k, unit in pairs(NaveR03) do
					unit.Make_Invulnerable(false)
				end
		end	
end
