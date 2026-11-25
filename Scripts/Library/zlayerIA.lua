require("PGStateMachine")
require("PGSpawnUnits")
require("PGMoveUnits")

function Zlayer(GameObjectReference)
    info_list = require("SubObjectsIA")
    object_str = Object.Get_Type().Get_Name()

  Object.Prevent_All_Fire(true)

  Object.Cancel_Hyperspace()

  Object.Hide(true)
  Object.Hide(true)
    Sleep(5)
    zlayer_dummy_list = Spawn_Unit(Find_Object_Type(info_list[object_str].heights[GameRandom(1,table.getn(info_list[object_str].heights))]), Object.Get_Position(), Object.Get_Owner())
    zlayer_dummy = zlayer_dummy_list[1]
    Object.Teleport_And_Face(zlayer_dummy)
  
    Object.Cinematic_Hyperspace_In(1)
    zlayer_dummy.Despawn()
    Object.Prevent_All_Fire(false)
    Object.Make_Invulnerable(false)
end