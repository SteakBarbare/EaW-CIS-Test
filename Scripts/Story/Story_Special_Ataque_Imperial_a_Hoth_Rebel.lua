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
		Inicio_Spawn_Empire_Units = State_Inicio_Spawn_Empire_Units
	}
				 
	empire_list_0 = {
		"Star_Destroyer"
		,"Star_Destroyer"
		,"ISD2"
		,"ISD2"
		,"ISD2"
		,"Star_Destroyer"
		,"Star_Destroyer"
		,"Victory_Destroyer"
		,"Victory_Destroyer"
	}
	
	fleet_delay = 30						
	empire_player = nil
end
function State_Inicio_Spawn_Empire_Units(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		anoatasteroids = Find_First_Object("anoatasteroids")
		hoth = Find_First_Object("Hoth")	
		
		Sleep(2)
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units = SpawnList(empire_list_0,anoatasteroids,empire_player,false,false)
	
		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet")

		fleet_created = false
		
	elseif message == OnUpdate then
	
		-- Constant check to see if fleet has been destroyed
		if fleet_created and not TestValid(super_fleet) then
		
		end
		
	end
end
function Move_Super_Fleet()
	super_fleet = Assemble_Fleet(super_fleet_units)
	if TestValid(super_fleet) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)									

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet.Move_To(hoth))
	
end													
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end









							 
