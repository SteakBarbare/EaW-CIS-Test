--Auto cargador de unidades para eventos tacticos por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D 
require("PGStateMachine")
require("PGStoryMode")


function Definitions()

	-- Object isn't valid at this point so don't do any operations that
    -- would require it.  State_Init is the first chance you have to do
    -- operations on Object
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);

	Refuerzos_list1_Rebel = { "Eventos_Tacticos_Virulence_ISD2" }
	
	rebel_list_02 = {
		,"Eventos_Tacticos_Mon_Remonda"
		,"Mc80a_EJ_II"
		,"Mc80b_EJ_II"
		,"Nebulon_B2R"
		,"R_Dreadnought_Up"
		,"R_Dreadnought_Up"
		,"Nebulon_B_Frigate"
		,"IRSDEMANCIPADOR"
		,"Rebel_Carrier"
		,"IRSDLIBERADOR"
		,"Mc80_EJ_II"
		,"Corellian_Corvette"
		,"R_Strike_Up"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
	}
	empire_list_02 = {
		,"ISD2"
		,"ISD2"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"Attack_Carrier"
		,"Attack_Carrier"
		,"E_Nebulon_B"
		,"Nebulon_B2E"
		,"E_Strike"
		,"E_Strike"
		,"Broadside_Class_Cruiser"
		,"Broadside_Class_Cruiser"
		,"E_CR_CVM"
		,"E_CR_CVM"
		,"E_CR_CVM"
	}
	
	empire_player = Find_Player("Empire")
	rebel_player = Find_Player("Rebel")
	
end

function State_Init(message)
				
				if not Get_Game_Mode() == "Space" then
				ScriptExit()

				end
				empire_reveal = FogOfWar.Reveal_All(empire)
				rebel_reveal = FogOfWar.Reveal_All(rebel)
		
		if message == OnEnter then
				Sleep(90)
				spawn_marker = Find_First_Object("Defense_Structure_Marker1")
				Sleep(1)
				ReinforceList(Refuerzos_list1_Rebel, spawn_marker, Find_Player("Rebel"), true, true, false, Move_Order1)
				Game_Message("TEXT_STORY_ROGUE_SQUADRON_YAGDUL_03")
				Sleep(10)
		end
		if message == OnEnter then
				Sleep(60)
				Game_Message("TEXT_STORY_ROGUE_SQUADRON_YAGDUL_04")
				Sleep(5)
				Nave8 = Find_All_Objects_Of_Type("SSD")
				for k, unit in pairs(Nave8) do
						unit.Change_Owner(rebel)
				end
				Sleep(2)
				Game_Message("TEXT_STORY_ROGUE_SQUADRON_YAGDUL_05")
				spawn_marker1 = Find_Hint("STORY_TRIGGER_ZONE", "combate1")
				spawn_marker2 = Find_Hint("STORY_TRIGGER_ZONE", "combate2")

				for k, unit in pairs(SpawnList(rebel_list_02, spawn_marker1, Find_Player("Rebel"), false, true)) do
					unit.Guard_Target(spawn_marker2)
				end	
				
				for k, unit in pairs(SpawnList(empire_list_02, spawn_marker2, Find_Player("Empire"), false, true)) do
					unit.Guard_Target(spawn_marker1)
				end		
				
				Sleep(5)
		end
end
function Move_Order1()
	Nave1 = Find_All_Objects_Of_Type("Eventos_Tacticos_Virulence_ISD2")
	unidad_enemiga = Find_First_Object("SSD")	
	
	for k, unit in pairs(Nave1) do
			unit.Attack_Move(unidad_enemiga)
	end
	
end


