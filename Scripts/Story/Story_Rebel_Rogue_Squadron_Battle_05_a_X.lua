--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"EVENTOS_TACTICOS_LIBERTAD_ISD2_B", "Eventos_Tacticos_Gallofree_Thyferra", "Eventos_Tacticos_Gallofree_Thyferra", "Eventos_Tacticos_Gallofree_Thyferra", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "EVENTOS_TACTICOS_ACTIONIV_THYFERRA", "AssaultFighterCraft", "AssaultFighterCraft", "AssaultFighterCraft", "BS_THRANTA"}
assault_list2 = {"EV_SSDLusankya"}
assault_list3 = {"A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron", "A_Wing_Cracken_Squadron"}

empire = Find_Player("Empire")
rebel = Find_Player("Rebel")

end

function State_Init(message)
				
				if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("Defense_Structure_Marker1")
                SpawnList(assault_list1, spawn_marker1, Find_Player("Rebel"), true, true)
				Sleep(5)
        end
		if message == OnEnter then
				spawn_marker2 = Find_First_Object("PIRATE FLEET POSITION")
				Sleep(1)
				ReinforceList(assault_list2, spawn_marker2, Find_Player("Empire"), true, true, false, Move_Order1)
				Story_Event("MISSION_00_DIALOGUE_GO")
				Sleep(10)
		end
		if message == OnEnter then
				Nave1 = Find_All_Objects_Of_Type("EVENTOS_TACTICOS_LIBERTAD_ISD2_B")
				Nave2 = Find_All_Objects_Of_Type("Eventos_Tacticos_Gallofree_Thyferra")
				Nave3 = Find_All_Objects_Of_Type("EVENTOS_TACTICOS_ACTIONIV_THYFERRA")
				Nave4 = Find_All_Objects_Of_Type("ASSAULTFIGHTER")
				Nave5 = Find_All_Objects_Of_Type("BS_THRANTA")
					
				for k, unit in pairs(Nave1) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave2) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave3) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave4) do
						unit.Hyperspace_Away()
				end
				for k, unit in pairs(Nave5) do
						unit.Hyperspace_Away()
				end
				Sleep(3)
				Story_Event("MISSION_01_DIALOGUE_GO")
				Sleep(30)
		end
		if message == OnEnter then
				Nave6 = Find_All_Objects_Of_Type("SSD")
				Sleep(5)
				for k, unit in pairs(Nave6) do
						unit.Hyperspace_Away()
				end
				Sleep(3)
				Story_Event("MISSION_02_DIALOGUE_GO")
				Sleep(30)
		end
		if message == OnEnter then
				spawn_marker3 = Find_First_Object("Defense_Structure_Marker2")
				Sleep(1)
				ReinforceList(assault_list3, spawn_marker3, Find_Player("Rebel"), true, true, false, Move_Order2)
				Sleep(5)
		end
		if message == OnEnter then
				Nave8 = Find_All_Objects_Of_Type("ISD2")
				for k, unit in pairs(Nave8) do
						unit.Change_Owner(rebel)
				end
				Story_Event("MISSION_03_DIALOGUE_GO")
				Sleep(5)
		end
end
function Move_Order1()
	Nave8 = Find_All_Objects_Of_Type("ISD2")
	unidad_enemiga = Find_First_Object("XQ_RogueSquadron")	
	
	for k, unit in pairs(Nave8) do
			unit.Attack_Move(unidad_enemiga)
	end
	
end
function Move_Order2()
	Nave7 = Find_All_Objects_Of_Type("A_Wing_Cracken_Squadron")
	unidad_enemiga = Find_First_Object("ISD2")	
	
	for k, unit in pairs(Nave7) do
			unit.Attack_Move(unidad_enemiga)
	end
end

	
