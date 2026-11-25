require("PGStateMachine")
require("PGSpawnUnits")
require("PGMoveUnits")



function Definitions()
  DebugMessage("%s -- In Definitions", tostring(Script))
                  
  info_list = require("SubObjects")
  Define_State("State_Init", State_Init);
end


function State_Init(message)
  if message == OnEnter then
    if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end
    object_str = Object.Get_Type().Get_Name()
    for i, mesh in pairs(info_list[object_str].meshes) do 
      Hide_Sub_Object(Object, 1, mesh);
    end
    Sleep(5)
    zlayer_dummy_list = Spawn_Unit(Find_Object_Type(info_list[object_str].heights[GameRandom(1,table.getn(info_list[object_str].heights))]), Object.Get_Position(), Object.Get_Owner())
    zlayer_dummy = zlayer_dummy_list[1]
    Object.Teleport_And_Face(zlayer_dummy)
    
    for i, mesh in pairs(info_list[object_str].meshes) do 
      Hide_Sub_Object(Object, 0, mesh);
    end
    Object.Cinematic_Hyperspace_In(1)
    zlayer_dummy.Despawn()
    ScriptExit()
  end
end
