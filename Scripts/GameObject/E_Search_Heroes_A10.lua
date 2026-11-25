--// Random heroe select mission
--// Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

		Heroe_1_Team = { "Labansat_Team" }
		Heroe_2_Team = { "Noval_Team" }
		Heroe_3_Team = { "Bane_Nothos" }
		Heroe_4_Team = { "Screed_Demolisher" }
		Heroe_5_Team = { "Lady_Dasta_Team" }
		Heroe_6_Team = { "Lord_Manos_Team" }
		Heroe_7_Team = { "Nolyds_Team" }
		Heroe_8_Team = { "Norym_Kim_Team" }
		Heroe_9_Team = { "Tann_Starpyre_Team" }
		Heroe_10_Team = { "Windcaller_Team" }
		Heroe_11_Team = { "Xandel_Carivus_Team" }
		Heroe_12_Team = { "Za_Team" }
		Heroe_13_Team = { "Llon_BanjeerSD" }
		Heroe_14_Team = { "JerataiSD" }
		Heroe_15_Team = { "Devian_Team" }
		Heroe_16_Team = { "General_Vota" }
		Heroe_17_Team = { "Immodet_Team" }
		Heroe_18_Team = { "Baron_Dasta_Team" }
		Heroe_20_Team = { "E_BuildAll_Team" }
		Heroe_21_Team = { "ChUnkk_Team" }
		Heroe_22_Team = { "Kooloota_Fyf_Team" }
       
end

function State_Init( message )
        if message ~= OnEnter then return end 
		
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
							if not TestValid(Find_First_Object("E_BuildAll")) then
								SpawnList(Heroe_20_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()		
							elseif not TestValid(Find_First_Object("Labansat")) then
								SpawnList(Heroe_1_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Noval")) then
								SpawnList(Heroe_2_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Bane_Nothos")) then
								SpawnList(Heroe_3_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Screed_Demolisher")) then
								SpawnList(Heroe_4_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Lady_Dasta")) then
								SpawnList(Heroe_5_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Lord_Manos")) then
								SpawnList(Heroe_6_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Nolyds")) then
								SpawnList(Heroe_7_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Norym_Kim")) then
								SpawnList(Heroe_8_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Tann_Starpyre")) then
								SpawnList(Heroe_9_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Windcaller")) then
								SpawnList(Heroe_10_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Xandel_Carivus")) then
								SpawnList(Heroe_11_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Za")) then
								SpawnList(Heroe_12_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Llon_BanjeerSD")) then
								SpawnList(Heroe_13_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("JerataiSD")) then
								SpawnList(Heroe_14_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Devian")) then
								SpawnList(Heroe_15_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("General_Vota")) then
								SpawnList(Heroe_16_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							elseif not TestValid(Find_First_Object("Immodet_AT_BT_Walker")) then
								SpawnList(Heroe_17_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()		
							elseif not TestValid(Find_First_Object("Baron_Dasta")) then
								SpawnList(Heroe_18_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()			
							elseif not TestValid(Find_First_Object("ChUnkk")) then
								SpawnList(Heroe_21_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()			
							elseif not TestValid(Find_First_Object("Kooloota_Fyf")) then
								SpawnList(Heroe_22_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Daala_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()						
							end
		end
		Object.Get_Owner().Give_Money(3750)
		Game_Message("TEXT_ALL_HEROE_DEPLETED")
		Object.Play_SFX_Event("EHD_Daala_Failure")
		Sleep(2)
        Object.Despawn()
		ScriptExit()
end






