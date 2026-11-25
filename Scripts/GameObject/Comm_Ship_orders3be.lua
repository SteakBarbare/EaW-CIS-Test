--Code made  by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init)

end



function State_Init(message)
		if Get_Game_Mode() ~= "Space" then
			ScriptExit()
		end 
				
        if message == OnEnter then
		spawn_marker = Find_First_Object("Comm_Ship_orders3be")
		friendly_player = spawn_marker.Get_Owner()
		
		friendly_unit_list = Find_All_Objects_Of_Type("Fighter | Bomber")
		
		range = 750
						
			for k, unit in pairs(friendly_unit_list) do
				if TestValid(unit) then
							commship_distance = spawn_marker.Get_Distance(unit)
							if unit.Is_Category("Fighter") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Emperor_Force_Convert_Particles")
								Sleep(2)
								unit.Play_SFX_Event("Unit_Sith_Convert")
								ScriptExit()
							end
							if unit.Is_Category("Bomber") and unit.Get_Owner().Is_Enemy(friendly_player) and commship_distance < range then
								unit.Change_Owner(spawn_marker.Get_Owner())
								Sleep(2)
								unit.Attach_Particle_Effect("Emperor_Force_Convert_Particles")
								Sleep(2)
								unit.Play_SFX_Event("Unit_Sith_Convert")
								ScriptExit()
							end
					end
			end		
				
		Sleep(5)
		Object.Despawn()	
		ScriptExit()
	end
	
end




