-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);
Define_State("State_AI_Autofire", State_AI_Autofire)

assault_list1 = {"Co_EspoWalker_91_Brigade", "X10_ground_patrol_Brigade", "Co_Scout_Airspeeder_squadron"}

reinforce_delay = 12

started1=false

end

function State_Init(message)

	
				
				
	if message == OnEnter then
				
		if Object.Get_Owner().Is_Human() then
			Set_Next_State("State_AI_Autofire")
		else
			Set_Next_State("State_AI_Autofire")
		end		
        end
end
function State_AI_Autofire(message)
	if message == OnUpdate then
		if "Is_Skirmish_Mode" and not started1 then
			Register_Timer(Spawn_Reinforcements1, reinforce_delay)
			started1=true
		end
		if not "Is_Skirmish_Mode" and not started1 then
			Register_Timer(Spawn_Reinforcements2, reinforce_delay)
			started1=true
		end	
	end		
end
function Spawn_Reinforcements1()
	
	spawn_marker = Find_First_Object("Corporate_Ground_Light_Vehicle_Factory_Build_Pad")
	player = Object.Get_Owner()
	
	unidades_en_pantalla = 0
	unidades_en_pantalla_list = Find_All_Objects_Of_Type("Infantry | Vehicle | Air")
		
	unidades_en_pantalla_count =table.getn(unidades_en_pantalla_list)
	
	if unidades_en_pantalla_count <= 100 then
		SpawnList(assault_list1, spawn_marker, player, true, true)
		return
	end	
end
function Spawn_Reinforcements2()
	if Get_Game_Mode() ~= "Land" then
	ScriptExit()
	end
	
	spawn_marker = Find_First_Object("Corporate_Ground_Light_Vehicle_Factory")
	player = spawn_marker.Get_Owner()
	
	unidades_en_pantalla = 0
	unidades_en_pantalla_list = Find_All_Objects_Of_Type("Infantry | Vehicle | Air")
		
	unidades_en_pantalla_count =table.getn(unidades_en_pantalla_list)
	
	if unidades_en_pantalla_count <= 100 then
		SpawnList(assault_list1, spawn_marker, player, true, true)
		return
	end	
end
