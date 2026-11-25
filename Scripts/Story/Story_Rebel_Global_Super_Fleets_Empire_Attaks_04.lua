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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Empire_Final_EmperorRebornGC
	}
		
	empire_list_04 = {
		"SSD2_especial"
		,"IMPLACABLESD"
		,"IMPLACABLEBR"
		,"VSD3"
		,"VSD3"
		,"VSD3"
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
function State_Super_Ataque_Empire_Final_EmperorRebornGC(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Byss = Find_First_Object("Byss")
		DaSoocha = Find_First_Object("DaSoocha")
		
		Fresia = Find_First_Object("Fresia")		
		Borleias = Find_First_Object("Borleias")
		Chandrila = Find_First_Object("Chandrila")
		Brentaal = Find_First_Object("Brentaal")
		Carida = Find_First_Object("Carida")
		Rocheasteroids = Find_First_Object("Rocheasteroids")
		Kashyyyk = Find_First_Object("Kashyyyk")
		Manaan = Find_First_Object("Manaan")
						
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units04 = SpawnList(empire_list_04,Byss,empire_player,false,false)

		-- Start a new thread so other events won't be blocked
		Create_Thread("Move_Super_Fleet04")

		fleet_created = false

	end
end
function Move_Super_Fleet04()
	super_fleet04 = Assemble_Fleet(super_fleet_units04)
	if TestValid(super_fleet04) then
		fleet_created = true
	end

	-- Wait a little while and let the player find out about fleet through story dialog
	Sleep(fleet_delay)		

	Move_Fleet_To_Planet(Fresia)
	Move_Fleet_To_Planet(Borleias)
	Move_Fleet_To_Planet(Chandrila)
	Move_Fleet_To_Planet(Brentaal)
	Move_Fleet_To_Planet(Carida)
	Move_Fleet_To_Planet(Rocheasteroids)
	Move_Fleet_To_Planet(Kashyyyk)
	Move_Fleet_To_Planet(Manaan)
	
	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet04.Move_To(DaSoocha))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet04) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet04.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end

