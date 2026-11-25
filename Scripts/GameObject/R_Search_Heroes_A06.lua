--// Random heroe select mission
--// Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

		Heroe_1_Team = { "Winter_Team" }
		Heroe_2_Team = { "General_Cracken_Team" }
		Heroe_3_Team = { "Corran_Horn_Team" }
		Heroe_4_Team = { "Admiral_Drayson_Team" }
		Heroe_5_Team = { "Garm_Bel_Iblis_Team" }
		Heroe_6_Team = { "Katarn_Team" }
		Heroe_7_Team = { "Larkhess" }
		Heroe_8_Team = { "Lar_NDigo" }
		Heroe_9_Team = { "Fortressa" }
		Heroe_10_Team = { "RebelOne" }
		Heroe_11_Team = { "IRSDLiberador" }
		Heroe_12_Team = { "IRSDEmancipador" }
		Heroe_13_Team = { "General_Madine_Team" }
		Heroe_14_Team = { "Tycho_Celchu_Team" }
		Heroe_15_Team = { "General_Rieekan_Team" }
		Heroe_16_Team = { "Quenfis" }
		Heroe_17_Team = { "LarynKrefey_Team" }
		Heroe_18_Team = { "Ralroost" }
		Heroe_20_Team = { "R_BuildAll_Team" }

       
end

function State_Init( message )

		if message ~= OnEnter then return end 
		
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
							if not TestValid(Find_First_Object("R_BuildAll")) then
								SpawnList(Heroe_20_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()		
							elseif not TestValid(Find_First_Object("General_Cracken")) then
								SpawnList(Heroe_2_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Corran_Horn")) then
								SpawnList(Heroe_3_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Admiral_Drayson")) then
								SpawnList(Heroe_4_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Gargantuan_Battle_Platform")) then
								SpawnList(Heroe_5_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Kyle_Katarn")) then
								SpawnList(Heroe_6_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Larkhess")) then
								SpawnList(Heroe_7_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Lar_NDigo")) then
								SpawnList(Heroe_8_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("LarynKrefey")) then
								SpawnList(Heroe_17_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							elseif not TestValid(Find_First_Object("Fortressa")) then
								SpawnList(Heroe_9_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("RebelOne")) then
								SpawnList(Heroe_10_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("IRSDLiberador")) then
								SpawnList(Heroe_11_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("IRSDEmancipador")) then
								SpawnList(Heroe_12_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("General_Madine")) then
								SpawnList(Heroe_13_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Tycho_Celchu")) then
								SpawnList(Heroe_14_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("General_Rieekan")) then
								SpawnList(Heroe_15_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Quenfis")) then
								SpawnList(Heroe_16_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							elseif not TestValid(Find_First_Object("Ralroost")) then
								SpawnList(Heroe_18_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("RHD_BorskFeylya_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							end
	
		end
		Object.Get_Owner().Give_Money(3750)
		Game_Message("TEXT_ALL_HEROE_DEPLETED")
		Object.Play_SFX_Event("RHD_BorskFeylya_Failure")
		Sleep(2 )
        Object.Despawn()
		ScriptExit()
end





