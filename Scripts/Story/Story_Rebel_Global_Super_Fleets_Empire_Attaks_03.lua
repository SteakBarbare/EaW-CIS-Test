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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Imperial_ThrawnFleet_New_RepublicGC
	}
		
	empire_list_03 = {
		"ISD2_especial"
		,"ISD2"
		,"ISD2"
		,"ISD2"
		,"ISD2"
		,"VSD2"
		,"VSD2"
		,"VSD2"
		,"Victory_Destroyer"
		,"Victory_Destroyer"
		,"Victory_Destroyer"
		,"Gladiator"
		,"Gladiator"
		,"Enforcer"
		,"Enforcer"
		,"Harrow"
		,"Harrow"
	}
	
		
	fleet_delay = 30					
	empire_player = nil
	rebel_player = nil
end
function State_Super_Ataque_Imperial_ThrawnFleet_New_RepublicGC(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Bilbringi = Find_First_Object("Bilbringi")
		Corellia = Find_First_Object("Corellia")
		
		Chandrila = Find_First_Object("Chandrila")		
		Brentaal = Find_First_Object("Brentaal")
		Myrkr = Find_First_Object("Myrkr")
		Kashyyyk = Find_First_Object("Kashyyyk")
		Kessel = Find_First_Object("Kessel")
		Bothawui = Find_First_Object("Bothawui")
				
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units03 = SpawnList(empire_list_03,Bilbringi,empire_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet03")

		fleet_created = false

	end
end
function Move_Super_Fleet03()
	super_fleet03 = Assemble_Fleet(super_fleet_units03)
	if TestValid(super_fleet03) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)		

	Move_Fleet_To_Planet(Chandrila)
	Move_Fleet_To_Planet(Brentaal)
	Move_Fleet_To_Planet(Myrkr)
	Move_Fleet_To_Planet(Kashyyyk)
	Move_Fleet_To_Planet(Kessel)
	Move_Fleet_To_Planet(Bothawui)
	
	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet03.Move_To(Corellia))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet03) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet03.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end
					 
