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
		Inicio_Spawn_Units = State_Inicio_Spawn_Units
	}
	
	rebel_list_01 = {
		"Mc120"
		,"Mc85"
		,"Mc80M"
		,"MC40v02"
		,"MC40v03"
		,"MC30_Frigate"
		,"MC30_Frigate"
		,"Mc80AJM_Up"
		,"Calamari_Cruiser_Up"
		,"Mc80a_Up"
		,"Mc80b_EJ"
		,"Mc80_EJ_II"
		,"Mc80a_EJ_II"
		,"R_Dreadnought_Up"
		,"R_Dreadnought_Up"
		,"R_Dreadnought_Up"
		,"R_Dreadnought_Up"
		,"Corellian_Gunboat_Up"
		,"Corellian_Gunboat_Up"
		,"Corellian_Gunboat_Up"
	}
	
	fleet_delay = 30					
	rebel_player = nil
end
function State_Inicio_Spawn_Units(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		InicioPlanet = Find_First_Object("Jabiim")
		FinalPlanet = Find_First_Object("Coruscant")
		
		SegundoPlanet = Find_First_Object("RocheAsteroids")		
		TercerPlanet = Find_First_Object("Taanab")
		CuartoPlanet = Find_First_Object("Alderaan")
		QuintoPlanet = Find_First_Object("Sarapin")
		SextoPlanet = Find_First_Object("Ralltiir")
		SeptimoPlanet = Find_First_Object("Corulag")
				
		-- Create a massive fleet to attack Coruscant funciona mejor si los planetas estan en rango unos de otros
		super_fleet_units01 = SpawnList(rebel_list_01,InicioPlanet,rebel_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet01")

		fleet_created = false

	end
end
function Move_Super_Fleet01()
	super_fleet01 = Assemble_Fleet(super_fleet_units01)
	if TestValid(super_fleet01) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)		

	Move_Fleet_To_Planet(SegundoPlanet)
	Move_Fleet_To_Planet(TercerPlanet)
	Move_Fleet_To_Planet(CuartoPlanet)
	Move_Fleet_To_Planet(QuintoPlanet)
	Move_Fleet_To_Planet(SextoPlanet)
	Move_Fleet_To_Planet(SeptimoPlanet)
	
	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet01.Move_To(FinalPlanet))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet01) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet01.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end
