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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Rebelde_Final_Dark_Saber
		
	}
	
	rebel_list_05 = {
		"Home_One_Twin_Death_Stars_36"
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
function State_Super_Ataque_Rebelde_Final_Dark_Saber(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Kuat = Find_First_Object("Kuat")
		Bastion = Find_First_Object("Bastion")
		
		The_Maw = Find_First_Object("The_Maw")		
		Fondor = Find_First_Object("Carida")
		Delvardus = Find_First_Object("Delvardus")
		Tedaroc = Find_First_Object("Tedaroc")
		Byssdestroyed = Find_First_Object("Byssdestroyed")
		Harrsk = Find_First_Object("Harrsk")
		TossBeacon = Find_First_Object("TossBeacon")
				
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units05 = SpawnList(rebel_list_05,Sluis_Van,rebel_player,false,false)

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

	Move_Fleet_To_Planet(The_Maw)
	Move_Fleet_To_Planet(Carida)
	Move_Fleet_To_Planet(Delvardus)
	Move_Fleet_To_Planet(Tedaroc)
	Move_Fleet_To_Planet(Byssdestroyed)
	Move_Fleet_To_Planet(Harrsk)
	Move_Fleet_To_Planet(TossBeacon)
	Move_Fleet_To_Planet(Carida)

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet05.Move_To(Bastion))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet05) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet05.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end