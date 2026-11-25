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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Imperial_RogueSquadronGC
	}
		
	empire_list_02 = {
		"SSD_especial"
		,"ISD2"
		,"ISD2"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"E_AcclamatorII"
		,"Attack_Carrier"
		,"Attack_Carrier"
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
function State_Super_Ataque_Imperial_RogueSquadronGC(message)
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
		super_fleet_units02 = SpawnList(empire_list_02,Bilbringi,empire_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet02")

		fleet_created = false

	end
end
function Move_Super_Fleet02()
	super_fleet02 = Assemble_Fleet(super_fleet_units02)
	if TestValid(super_fleet02) then
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
	BlockOnCommand(super_fleet02.Move_To(Corellia))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet02) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet02.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end





							 
