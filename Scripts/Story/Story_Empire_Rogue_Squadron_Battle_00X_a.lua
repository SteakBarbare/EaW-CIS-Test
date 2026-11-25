--Auto cargador de unidades para eventos tacticos por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()
	
	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Ciutric_IV_Space = State_Batalla_de_Ciutric_IV_Space
		,Destruir_Alas_Y = State_Nuevos_Refuerzos
	}
   
	Refuerzos_list1_Rebel = { "Y-Wing_Squadron", "Y-Wing_Squadron" }
	Refuerzos_list2_Rebel = { "RVBTLS3Y_Wing_Squadron", "RVBTLS3Y_Wing_Squadron" }
	Refuerzos_list1_Empire = { "E_Strike_Up", "E_Strike_Up" }
	Refuerzos_list2_Empire = { "SSD", "Lancer", "Lancer", "Lancer", "Lancer", "Lancer", "Lancer" }
	
	empire_player = Find_Player("Empire")
	rebel_player = Find_Player("Rebel")
	
end


function State_Batalla_de_Ciutric_IV_Space(message)
	
	empire_reveal = FogOfWar.Reveal_All(empire_player)
	rebel_reveal = FogOfWar.Reveal_All(rebel_player)
	
	if message == OnEnter then
			Rogue = Find_All_Objects_Of_Type("Rogue_Squadron_Space_Weak")
			Dominator = Find_First_Object("Dominator")
				for k, unit in pairs(Rogue) do
					unit.Attack_Move(Dominator)
				end
			Sleep(90)
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			unidad_enemiga = Find_First_Object("Dominator")	
			for k, unit in pairs(SpawnList(Refuerzos_list1_Rebel, spawn_marker, Find_Player("Rebel"), false, true)) do
					unit.Attack_Move(unidad_enemiga)
			end
			Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER") --Este texto tiene que estar añadido en el dat
			unidad_enemiga02 = Find_Player("Rebel")	
			Sleep(5)
			for k, unit in pairs(SpawnList(Refuerzos_list1_Empire, spawn_marker, Find_Player("Empire"), false, true)) do
					unit.Attack_Move(unidad_enemiga02)
			end
			Sleep(1)
			
	end
		

end
function State_Nuevos_Refuerzos(message)
	
	if message == OnEnter then
	
			spawn_marker = Find_First_Object("ATTACKER ENTRY POSITION")
			unidad_enemiga = Find_First_Object("Dominator")	
			for k, unit in pairs(SpawnList(Refuerzos_list2_Rebel, spawn_marker, Find_Player("Rebel"), false, true)) do
					unit.Attack_Move(unidad_enemiga)
			end
			Game_Message("TEXT_MESSAGE_RESCUE_FLEET_ENTER") --Este texto tiene que estar añadido en el dat
			unidad_enemiga02 = Find_Player("Rebel")	
			Sleep(5)
			for k, unit in pairs(SpawnList(Refuerzos_list2_Empire, spawn_marker, Find_Player("Empire"), false, true)) do
					unit.Attack_Move(unidad_enemiga02)
			end
			Sleep(1)
	end
		

end

