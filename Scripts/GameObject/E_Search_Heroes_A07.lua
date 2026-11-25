--// Random heroe select mission
--// Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

		Heroe_1_Team = { "Leth_Team" }
		Heroe_3_Team = { "Labansat_Team" }
		Heroe_4_Team = { "Noval_Team" }
		Heroe_5_Team = { "Bane_Nothos" }
		Heroe_6_Team = { "Screed_Demolisher" }
		Heroe_7_Team = { "Boba_Fett_Team" }
		Heroe_8_Team = { "Carnor_Jax_Team" }
		Heroe_9_Team = { "Dark_Goir_Team" }
		Heroe_10_Team = { "Dark_Katth_Team" }
		Heroe_11_Team = { "Dark_Luke_Skywalker_Jedi_Team" }
		Heroe_12_Team = { "Dark_Nist_Team" }
		Heroe_13_Team = { "Dark_Sha_Team" }
		Heroe_14_Team = { "General_Klev" }
		Heroe_15_Team = { "Sedriss_Team" }
		Heroe_16_Team = { "SSD_Reaper" }
		Heroe_17_Team = { "SSD_Whelm" }
		Heroe_20_Team = { "E_BuildAll_Team" }
       
end

function State_Init( message )
        if message ~= OnEnter then return end 
		
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
							if not TestValid(Find_First_Object("E_BuildAll")) then
								SpawnList(Heroe_20_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()				
							elseif not TestValid(Find_First_Object("Leth")) then
								SpawnList(Heroe_1_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Labansat")) then
								SpawnList(Heroe_3_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Noval")) then
								SpawnList(Heroe_4_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Bane_Nothos")) then
								SpawnList(Heroe_5_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Screed_Demolisher")) then
								SpawnList(Heroe_6_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Boba_Fett")) then
								SpawnList(Heroe_7_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Carnor_Jax")) then
								SpawnList(Heroe_8_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Dark_Goir")) then
								SpawnList(Heroe_9_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Dark_Katth")) then
								SpawnList(Heroe_10_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Dark_Luke_Skywalker_Jedi")) then
								SpawnList(Heroe_11_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Dark_Nist")) then
								SpawnList(Heroe_12_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Dark_Sha")) then
								SpawnList(Heroe_13_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							elseif not TestValid(Find_First_Object("General_Klev")) then
								SpawnList(Heroe_14_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Sedriss")) then
								SpawnList(Heroe_15_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("SSD_Reaper")) then
								SpawnList(Heroe_16_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("SSD_Whelm")) then
								SpawnList(Heroe_17_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							end
					
		end
		Game_Message("TEXT_ALL_HEROE_DEPLETED")
		Object.Get_Owner().Give_Money(3750)
		Object.Play_SFX_Event("EHD_Palpatine_Failure")
		Sleep(2)
        Object.Despawn()
		ScriptExit()
end





