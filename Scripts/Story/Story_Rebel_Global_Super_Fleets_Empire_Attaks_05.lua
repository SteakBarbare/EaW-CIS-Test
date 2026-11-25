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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Imperial_CronusFleet_Dark_SaberGC
	}
		
	empire_list_05 = {
		"VSD2T_especial"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
		,"VSD2T"
	}
	
	
	fleet_delay = 30					
	empire_player = nil
	rebel_player = nil
end
function State_Super_Ataque_Imperial_CronusFleet_Dark_SaberGC(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Delvardus = Find_First_Object("Delvardus")
		Yavin = Find_First_Object("Yavin")
		
		Duro = Find_First_Object("Duro")		
		Sarapin = Find_First_Object("Sarapin")
		Rendili = Find_First_Object("Rendili")
		Kashyyyk = Find_First_Object("Kashyyyk")
		Wayland = Find_First_Object("Wayland")
		Dathomir = Find_First_Object("Dathomir")
				
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units05 = SpawnList(empire_list_05,Delvardus,empire_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet05")

		fleet_created = false

	end
end
function Move_Super_Fleet05()
	super_fleet05 = Assemble_Fleet(super_fleet_units05)
	if TestValid(super_fleet05) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)		

	Move_Fleet_To_Planet(Duro)
	Move_Fleet_To_Planet(Sarapin)
	Move_Fleet_To_Planet(Rendili)
	Move_Fleet_To_Planet(Kashyyyk)
	Move_Fleet_To_Planet(Wayland)
	Move_Fleet_To_Planet(Dathomir)
	
	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet05.Move_To(Yavin))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet05) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet05.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end




							 
