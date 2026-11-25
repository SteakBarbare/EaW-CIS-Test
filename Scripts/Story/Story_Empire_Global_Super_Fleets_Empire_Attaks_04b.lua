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
		Inicio_Spawn_Rebel_Units = State_Construir_Twin_Death_Stars
	}
	
	rebel_list_04x = {
		"Defiance_Twin_Death_Stars"
		,"MC90B_1"
		,"MC90B_2"
		,"Mc80a_Up_90"
		,"Nebulon_B_Frigate"
		,"Alliance_Assault_Frigate"
		,"Alliance_Assault_Frigate"
		,"Nebulon_B_Frigate"
		,"Mc80AJM_Up_90"
		,"Quasar_Up"
		,"MC60_01"
		,"MC75"
		,"Corellian_Corvette"
		,"CC7700"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
	}

	fleet_delay = 30					
	rebel_player = nil
end
function State_Construir_Twin_Death_Stars(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Fresia = Find_First_Object("Fresia")
		coruscant = Find_First_Object("CoruscantGuerraCivil")
		
		
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units04x = SpawnList(rebel_list_04x,Fresia,rebel_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet04x")

		fleet_created = false

	end
end
function Move_Super_Fleet04x()
	super_fleet04x = Assemble_Fleet(super_fleet_units04x)
	if TestValid(super_fleet04x) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)									

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet04x.Move_To(coruscant))

end													
