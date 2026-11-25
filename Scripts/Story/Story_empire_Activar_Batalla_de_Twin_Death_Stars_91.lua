--Edited by Nomada_Firefox

require("PGStoryMode")
require("PGSpawnUnits")


--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Construir_Twin_Death_Stars = State_Construir_Twin_Death_Stars
	}
				 
	rebel_list_01 = {
		"Home_One_Twin_Death_Stars"
		,"Eventos_Tacticos_Mon_Remonda"
		,"Mc80a_EJ_II"
		,"Mc80b_EJ_II"
		,"Nebulon_B_Frigate"
		,"R_Dreadnought_Up"
		,"R_Dreadnought_Up"
		,"Nebulon_B_Frigate"
		,"IRSDEMANCIPADOR"
		,"Quasar"
		,"IRSDLIBERADOR"
		,"Mc80_EJ_II"
		,"Corellian_Corvette"
		,"R_Strike_Up"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
		,"Marauder_Missile_Cruiser"
	}
	
	
	
	fleet_delay = 3					
	fleet_delay_02 = 30						
	rebel_player = nil
end
function State_Construir_Twin_Death_Stars(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		chandrila = Find_First_Object("Chandrila")
		coruscant = Find_First_Object("Coruscant")
		
		
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units01 = SpawnList(rebel_list_01,chandrila,rebel_player,false,false)

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

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet01.Move_To(coruscant))

end													
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet02) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet02.Move_To(next_planet))
		Sleep(fleet_delay_02)									
	end
end







							 
