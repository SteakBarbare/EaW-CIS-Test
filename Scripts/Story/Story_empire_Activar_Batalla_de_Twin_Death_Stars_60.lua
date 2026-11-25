--Edited by Nomada_Firefox

require("PGStoryMode")
require("PGSpawnUnits")

function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Construir_Twin_Death_Stars = State_Construir_Twin_Death_Stars
	}
				 
	rebel_list_01 = {
		"Defiance_Twin_Death_Stars"
		,"MC902_1"
		,"MC902_2"
		,"Mc80a_Up_90"
		,"Nebulon_B2R"
		,"Alliance_Assault_Frigate"
		,"Alliance_Assault_Frigate"
		,"Nebulon_B_Frigate"
		,"Mc80AJM_Up_90"
		,"Quasar_Up"
		,"MC40_Up"
		,"MC40_Up_75"
		,"Corellian_Corvette"
		,"CC7700"
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
		
		Fresia = Find_First_Object("Fresia")
		coruscant = Find_First_Object("CoruscantGuerraCivil")
		
		
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units01 = SpawnList(rebel_list_01,Fresia,rebel_player,false,false)

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








							 
