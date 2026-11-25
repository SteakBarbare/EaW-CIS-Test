--Super ataque edited by Nomada_Firefox

require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Construir_Twin_Death_Stars = State_Construir_Twin_Death_Stars
	}
				 
	rebel_list_01 = {
		"Home_One_Twin_Death_Stars"
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

		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		

		
		Fresia = Find_First_Object("Fresia")
		coruscant = Find_First_Object("Coruscant")
		
		

		super_fleet_units01 = SpawnList(rebel_list_01,Fresia,rebel_player,false,false)

		Create_Thread("Move_Super_Fleet01")

		fleet_created = false

	end
end
function Move_Super_Fleet01()
	super_fleet01 = Assemble_Fleet(super_fleet_units01)
	if TestValid(super_fleet01) then
		fleet_created = true
	end


	Sleep(fleet_delay)									


	BlockOnCommand(super_fleet01.Move_To(coruscant))

end													








							 
