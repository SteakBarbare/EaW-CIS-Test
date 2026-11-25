-- Edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);
Define_State("State_AI_Autofire", State_AI_Autofire)

assault_list1 = {"Corporate_Espo_Trooper", "Corporate_Espo_Plex_Trooper_Company"}

reinforce_delay = 12

started2=false

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
		if "Is_Skirmish_Mode" and not started2 then
			Register_Timer(Spawn_Reinforcements1, reinforce_delay)
			started2=true
		end
		if not "Is_Skirmish_Mode" and not started2 then
			Register_Timer(Spawn_Reinforcements2, reinforce_delay)
			started2=true
		end	
	end		
end
function Spawn_Reinforcements1()
	
	spawn_marker = Find_First_Object("Corporate_Ground_Barracks_Build_Pad")
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
	
	spawn_marker = Find_First_Object("Corporate_Ground_Barracks")
	player = spawn_marker.Get_Owner()
	
	unidades_en_pantalla = 0
	unidades_en_pantalla_list = Find_All_Objects_Of_Type("Infantry | Vehicle | Air")
		
	unidades_en_pantalla_count =table.getn(unidades_en_pantalla_list)
	
	if unidades_en_pantalla_count <= 100 then
		SpawnList(assault_list1, spawn_marker, player, true, true)
		return
	end	
end
