--Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D   

require("PGStoryMode")
require("PGSpawnUnits")


--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Imperial_Final_Empire_at_WarGC
	}
		
	empire_list_01 = {
		"SSD_especial"
		,"ISD2"
		,"ISD2"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"E_Carrier"
		,"E_Carrier"
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
		
	fleet_delay = 30					
	empire_player = nil
	rebel_player = nil
end
function State_Super_Ataque_Imperial_Final_Empire_at_WarGC(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Coruscant = Find_First_Object("Coruscant")
		MonCalimari = Find_First_Object("MonCalimari")
		
		Fresia = Find_First_Object("Fresia")		
		Averam = Find_First_Object("Averam")
		Sullust = Find_First_Object("Sullust")
		Sluis_Van = Find_First_Object("Sluis_Van")
		Naboo = Find_First_Object("Naboo")
		Tynna = Find_First_Object("Tynna")
		Bothawui = Find_First_Object("Bothawui")
		Manaan = Find_First_Object("Manaan")
		Kashyyyk = Find_First_Object("Kashyyyk")
		Jabiim = Find_First_Object("Jabiim")
						
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units01 = SpawnList(empire_list_01,Coruscant,empire_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet01")

		fleet_created = false

	end
end
function Move_Super_Fleet01()
	super_fleet01 = Assemble_Fleet(super_fleet_units01)
	if TestValid(super_fleet) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)		

	Move_Fleet_To_Planet(Fresia)
	Move_Fleet_To_Planet(Averam)
	Move_Fleet_To_Planet(Sullust)
	Move_Fleet_To_Planet(Sluis_Van)
	Move_Fleet_To_Planet(Naboo)
	Move_Fleet_To_Planet(Tynna)
	Move_Fleet_To_Planet(Bothawui)
	Move_Fleet_To_Planet(Manaan)
	Move_Fleet_To_Planet(Kashyyyk)
	Move_Fleet_To_Planet(Jabiim)

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet01.Move_To(MonCalimari))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet01) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet01.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end





							 
