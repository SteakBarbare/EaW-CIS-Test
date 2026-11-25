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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Rebelde_a_Bakura
	}
	
	rebel_list_01 = {
		"Quasar"
		,"Corellian_Corvette"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
		,"Corellian_Gunboat"
	}
	
	fleet_delay = 30					
	rebel_player = nil
end
function State_Super_Ataque_Rebelde_a_Bakura(message)
	if message == OnEnter then
		Sleep(2)
		Planet00 = FindPlanet("Endor")
		Rebel_Bando = Find_Player("Rebel")
			
		poseedor_planeta = Planet00.Get_Owner()
		if not poseedor_planeta == Rebel_Bando then
			ScriptExit()	
		end
	end
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Endor = Find_First_Object("Endor")
		Bakura = Find_First_Object("Bakura")
						
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units01 = SpawnList(rebel_list_01,Endor,rebel_player,false,false)

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
	BlockOnCommand(super_fleet01.Move_To(Bakura))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet01) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet01.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end
