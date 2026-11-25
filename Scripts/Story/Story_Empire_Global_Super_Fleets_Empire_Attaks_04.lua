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
		Inicio_Spawn_Rebel_Units = State_Super_Ataque_Rebelde_Final_Emperador_Resucitado
	}
	
	rebel_list_04 = {
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
function State_Super_Ataque_Rebelde_Final_Emperador_Resucitado(message)
	if message == OnEnter then
		--MessageBox("Beginning script A4M11")

		-- Find the players
		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		-- Find the planets
		
		Sluis_Van = Find_First_Object("Sluis_Van")
		Byss = Find_First_Object("Byss")
		
		Eriadu = Find_First_Object("Eriadu")		
		Fondor = Find_First_Object("Fondor")
		Sarapin = Find_First_Object("Sarapin")
		Kuat = Find_First_Object("Kuat")
		Corulag = Find_First_Object("Corulag")
		Carida = Find_First_Object("Carida")
		Rendili = Find_First_Object("Rendili")
		Corellia = Find_First_Object("Corellia")
				
		-- Create a massive fleet to attack Mon Calamari
		super_fleet_units04 = SpawnList(rebel_list_04,Sluis_Van,rebel_player,false,false)

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

	Move_Fleet_To_Planet(Eriadu)
	Move_Fleet_To_Planet(Fondor)
	Move_Fleet_To_Planet(Sarapin)
	Move_Fleet_To_Planet(Kuat)
	Move_Fleet_To_Planet(Corulag)
	Move_Fleet_To_Planet(Carida)
	Move_Fleet_To_Planet(Rendili)
	Move_Fleet_To_Planet(Corellia)

	-- Don't use the move_fleet function since it sleeps after arriving.  We need to inform
	-- the story script as soon as it arrives
	BlockOnCommand(super_fleet04.Move_To(Byss))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet04) then
		--MessageBox("Moving super fleet to next planet")
		BlockOnCommand(super_fleet04.Move_To(next_planet))
		Sleep(fleet_delay_04)									
	end
end
