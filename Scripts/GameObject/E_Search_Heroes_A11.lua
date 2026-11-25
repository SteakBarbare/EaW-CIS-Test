--// Random heroe select mission
--// Made by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D    P L E A S E   D O N 'T   C L A I M   I T   A S   Y O U R   O W N

require( "PGStateMachine" )
require( "PGSpawnUnits" )

function Definitions()
        Define_State( "State_Init",State_Init )

		Heroe_0_Team = { "E_Kylo_Ren_Team" }
		Heroe_1_Team = { "E_Phasma_Team" }
							
       
end

function State_Init( message )
        if message ~= OnEnter then return end 
		
		if Get_Game_Mode() ~= "Galactic" then ScriptExit() end
		
		if Object.Get_Owner().Is_Human() then
							if not TestValid(Find_First_Object("E_Kylo_Ren")) then
								SpawnList(Heroe_0_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()	
							elseif not TestValid(Find_First_Object("E_Phasma")) then
								SpawnList(Heroe_1_Team, Object.Get_Planet_Location(), Object.Get_Owner(), true, false)
								Object.Play_SFX_Event("EHD_Palpatine_Success")
								Sleep(2)
								Object.Despawn()
								ScriptExit()
							end

		end
		Object.Get_Owner().Give_Money(3750)
		Game_Message("TEXT_ALL_HEROE_DEPLETED")
		Object.Play_SFX_Event("EHD_Palpatine_Failure")
		Sleep(2)
        Object.Despawn()
		ScriptExit()
end





