--// Random heroe select mission
--// Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

		Heroe_1_Team = { "Sate_Pestage_Team" }
		Heroe_2_Team = { "Leth_Team" }
		Heroe_3_Team = { "Furgan_Team" }
		Heroe_4_Team = { "Labansat_Team" }
		Heroe_5_Team = { "Nereus_Team" }
		Heroe_6_Team = { "Noval_Team" }
		Heroe_7_Team = { "Thanas_Team" }
		Heroe_8_Team = { "Bane_Nothos" }
		Heroe_9_Team = { "Screed_Demolisher" }
		Heroe_10_Team = { "Jerec_Team" }
		Heroe_11_Team = { "General_Melvar_Team" }
		Heroe_12_Team = { "Agente_Loor_Team" }
		Heroe_13_Team = { "General_Derricote_Team" }
		Heroe_14_Team = { "IronFist" }
		Heroe_20_Team = { "E_BuildAll_Team" }
       
end

function State_Init( message )
        if message ~= OnEnter then return end 
		
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
							if not TestValid(Find_First_Object("E_BuildAll")) then
								SpawnList(Heroe_20_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()				
							elseif not TestValid(Find_First_Object("Sate_Pestage")) then
								SpawnList(Heroe_1_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Leth")) then
								SpawnList(Heroe_2_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Furgan_MTAT")) then
								SpawnList(Heroe_3_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Labansat")) then
								SpawnList(Heroe_4_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Nereus")) then
								SpawnList(Heroe_5_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Noval")) then
								SpawnList(Heroe_6_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Comandante_Thanas")) then
								SpawnList(Heroe_7_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Bane_Nothos")) then
								SpawnList(Heroe_8_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Screed_Demolisher")) then
								SpawnList(Heroe_9_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Jerec")) then
								SpawnList(Heroe_10_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("General_Melvar")) then
								SpawnList(Heroe_11_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Agente_Loor")) then
								SpawnList(Heroe_12_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("General_Derricote")) then
								SpawnList(Heroe_13_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							elseif not TestValid(Find_First_Object("IronFist")) then
								SpawnList(Heroe_14_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Isard_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							end

		end
		Object.Get_Owner().Give_Money(3750)
		Game_Message("TEXT_ALL_HEROE_DEPLETED")
		Object.Play_SFX_Event("EHD_Isard_Failure")
		Sleep(2)
        Object.Despawn()
		ScriptExit()
end





