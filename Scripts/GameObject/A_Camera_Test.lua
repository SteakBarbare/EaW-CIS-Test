--Edited by Nomada_Firefox

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	

end


function State_Init(message)

	if message == OnEnter then
		test_unit = Find_First_Object("ATest1")
		attacker_entry_pos = Find_Hint("GENERIC_MARKER_SPACE", "cine1")
		empire_entry_pos = Find_Hint("GENERIC_MARKER_SPACE", "cine2")
		test_unit.Suspend_Locomotor(true)
		Game_Message("TEXT_MESSAGE_IMP_INTERDICTOR_ACTIVE")
		Sleep(5)	
		Cinematic_Intro_Thread_ID = Create_Thread("Cinematic_Intro")
	end
end
function Cinematic_Intro()

	-- Set up the start tactical camera position
	Point_Camera_At(attacker_entry_pos)
	
	-- Suspend relevent systems while cinematic plays
	Suspend_AI(1)
	Lock_Controls(1)
	
	-- Set up cinematic stroy mode	
	Start_Cinematic_Camera()
	Letter_Box_In(0)
	
	-- Set intial camera and target positions	
	-- As we do not know where in the feet formation Anitlles will be, base the camera and target positions off of his ship
	-- The entry marker has a z angle that is opposite of 45 degrees on this map
	if TestValid(test_unit) then
		-- Set_Cinematic_Camera_Key(target_pos, xoffset_dist, yoffset_pitch, zoffset_yaw, angles?, attach_object, use_object_rotation, cinematic_animation)
		Set_Cinematic_Target_Key(test_unit, 500, 500, 250, 0, 0, 1, 1)
		Sleep(3)
		
		
		
		-- Set_Cinematic_Camera_Key(target_pos, xoffset_dist, yoffset_pitch, zoffset_yaw, angles?, attach_object, use_object_rotation, cinematic_animation)
		--Set_Cinematic_Target_Key(test_unit, 0, 0, 50, 0, test_unit, 0, 0) 
		
	end
		
	-- Fade the scene in and wait for the scene to be fully visisble before proceeding
	Fade_Screen_In(2)
	Sleep(2)
	
	-- Tell the ships we put on hold in XML to come in
	Resume_Hyperspace_In()
	
	-- Wait on the current shot a bit
	Sleep(3.5)
		
	-- Switch to a different shot

	--if TestValid(test_unit) then
		--Set_Cinematic_Camera_Key(test_unit, 255, -15, 160, 1, test_unit, 1, 0) 
		--Set_Cinematic_Target_Key(empire_entry_pos, 0, 0, 0, 0, 0, 0, 0) 
							
	--end
	
	
	Sleep(1)	
	Point_Camera_At(test_unit)
	Transition_To_Tactical_Camera(1)
	Letter_Box_Out(1)
	Sleep(1)
	
	End_Cinematic_Camera()
	Suspend_AI(0)
	Lock_Controls(0)		
end





