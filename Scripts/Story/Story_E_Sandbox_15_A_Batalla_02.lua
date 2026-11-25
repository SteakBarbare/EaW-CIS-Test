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
		Galactic_Attack_Move_02 = State_Galactic_Attack_Move_02
	}
	
	rebel_list_01 = {"Rebel_X-Wing_Squadron"}
	
	fleet_delay = 1					
	rebel_player = nil
end
function State_Galactic_Attack_Move_02(message)
	if message == OnEnter then

		rebel_player = Find_Player("Rebel")
		empire_player = Find_Player("Empire")											  
		
		
		Planet01 = Find_First_Object("Talasea")
		Planet02 = Find_First_Object("Vladet")

		super_fleet_units01 = SpawnList(rebel_list_01,Planet01,rebel_player,false,false)

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
	
	
	BlockOnCommand(super_fleet01.Move_To(Planet02))

end			
function Move_Fleet_To_Planet(next_planet)
	if TestValid(super_fleet01) then
		BlockOnCommand(super_fleet01.Move_To(next_planet))
		Sleep(fleet_delay)									
	end
end
