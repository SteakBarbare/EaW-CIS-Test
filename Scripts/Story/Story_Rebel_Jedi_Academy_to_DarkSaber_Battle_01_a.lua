--3 Way GC Space Battles O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--By Sidious Invader and Nomada_Firefox

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"Star_destroyer"}
assault_list2 = {"B-WING_SQUADRON", "B-WING_SQUADRON", "B-WING_SQUADRON", "B-WING_SQUADRON"}
assault_list3 = {"Marea_Estelar"}
assault_list4 = {"MC90B_1", "MC90B_1", "MC90B_1", "MC90B_2", "MC90B_2", "MC90B_2"}

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
                spawn_marker2 = Find_First_Object("POSICION_ATAQUE_03")
                SpawnList(assault_list2, spawn_marker2, Find_Player("Rebel"), true, true)
				Sleep(5)
        end		
		if message == OnEnter then
               	Nave2 = Find_All_Objects_Of_Type("B-WING_SQUADRON")
				Nave3 = Find_All_Objects_Of_Type("B-WING_SQUADRON")
				unidad_enemiga2 = Find_Hint("Star_Destroyer", "gorgona")
				unidad_enemiga3 = Find_Hint("Star_Destroyer", "basilisco")
                for k, unit in pairs(Nave2) do
						unit.Attack_Move(unidad_enemiga2)
				end
				for k, unit in pairs(Nave3) do
						unit.Attack_Move(unidad_enemiga3)
				end
				Sleep(15)
        end
		if message == OnEnter then
                spawn_marker1 = Find_First_Object("POSICION_ATAQUE_02")
                SpawnList(assault_list1, spawn_marker1, Find_Player("Empire"), true, true)
				Sleep(5)
        end
		if message == OnEnter then
               	Nave1 = Find_All_Objects_Of_Type("Star_destroyer")
				unidad_enemiga1 = Find_First_Object("REPAIRYARD2_PLATTFORM")	
                for k, unit in pairs(Nave1) do
						unit.Attack_Move(unidad_enemiga1)
				end
				Sleep(5)
        end
		if message == OnEnter then
                spawn_marker3 = Find_First_Object("POSICION_ATAQUE_03")
                SpawnList(assault_list3, spawn_marker3, Find_Player("Rebel"), true, true)
				Sleep(5)
        end
		if message == OnEnter then
               	Nave4 = Find_All_Objects_Of_Type("Marea_Estelar")
				unidad_enemiga4 = Find_First_Object("Star_destroyer")	
                for k, unit in pairs(Nave4) do
						unit.Attack_Move(unidad_enemiga4)
				end
				Sleep(300)
        end
		if message == OnEnter then
                spawn_marker4 = Find_First_Object("POSICION_ATAQUE_03")
                ReinforceList(assault_list4, spawn_marker4, Find_Player("Rebel"), true, true, false, Move_Order1)
				Sleep(5)
        end
end
function Move_Order1()
	Nave5 = Find_All_Objects_Of_Type("MC90B_2")
	Nave6 = Find_All_Objects_Of_Type("MC90B_1")
	Posicion_enemiga1 = Find_Hint("Star_Destroyer", "gorgona")
	Posicion_enemiga2 = Find_Hint("Star_Destroyer", "basilisco")
	
	for k, unit in pairs(Nave5) do
			unit.Attack_Move(Posicion_enemiga1)
	end
	for k, unit in pairs(Nave6) do
			unit.Attack_Move(Posicion_enemiga2)
	end	
end

	
