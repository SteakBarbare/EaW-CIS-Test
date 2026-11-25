--Petroglyph original code edited by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")
require("PGStoryMode")


function Definitions()

StoryModeEvents = 
	{
		Rebel_Act1_M03_Begin = State_Rebel_Act1_M03_Begin
		,Rebel_ActI_M03_Pilot_Despawned_01 = State_Rebel_A01M03_Create_AA_Turrets
		,Rebel_ActI_M03_Check_Win_00 = State_Rebel_A01M03_Xwing_Escape
	}

	unidades_rebeldes1 = {"Rebel_Light_Tank_Brigade", "Rebel_Fast_Tank_Brigade", "Rebel_RV_Stank_Alliance", "Rebel_Infantry_Squad", "Rebel_Tank_Buster_Squad", "Rebel_RV_Stank_Alliance", "Rebel_Artillery_Brigade"}
	unidades_rebeldes2 = {"Grupo_XRVehicles1", "Rebel_Artillery_Brigade", "Rebel_Z95Land_squadron", "Rebel_Z95Land_squadron"}
	
empire = Find_Player("Empire")
rebel = Find_Player("Rebel")
rebel_player = Find_Player("Rebel")
empire_player = Find_Player("Empire")
neutral_player = Find_Player("Neutral")

front_xwing_range = 80
rear_xwing_range = 120

num_reinforcements = 0
allowed_reinforcements = 2
reinforcement_delay = 180
power_hint_range = 175
cancel_hint_range =150

captured_list = {}
captured_count = 0

reinforce_list = {
		"Imperial_Heavy_Scout_Squad_Small"
		,"Imperial_Medium_Stormtrooper_Squad"
		,"Imperial_Light_Scout_Squad"
		,"Imperial_Anti_Infantry_Brigade_Small"
	}

end

function State_Rebel_Act1_M03_Begin(message)
		if message == OnEnter then
			Suspend_AI(1)
			empire_reveal = FogOfWar.Reveal_All(empire)
			rebel_reveal = FogOfWar.Reveal_All(rebel)
			
			spawn_marker1 = Find_First_Object("ATTACKER ENTRY POSITION")
			SpawnList(unidades_rebeldes1, spawn_marker1, Find_Player("Rebel"), true, true)
			
			posicion_entrada = Find_Hint("GENERIC_MARKER_LAND","pilot-entry")
			
			pilot_list = Find_All_Objects_Of_Type("REBEL_PILOT")
			for i,unit in pairs(pilot_list) do
				unit.Teleport(posicion_entrada)
			end
							
			Story_Event("M03_INTRO_DIALOG_01_GO")
			Sleep(3)
			Story_Event("turbolaser_power_hint")
			turbolaser1 = Find_Hint("E_GROUND_TURBOLASER_TOWER","tlt1")
			turbolaser2 = Find_Hint("E_GROUND_TURBOLASER_TOWER","tlt2")
			Point_Camera_At(turbolaser1)
			
			Sleep(4)
			Story_Event("turbolaser_power_hint2")
			
			power_plant = Find_First_Object("POWER_GENERATOR_E")
			Point_Camera_At(power_plant)
			
			Sleep(4)
			closest_player_unit = Find_Nearest(turbolaser1, rebel_player, true)
			Point_Camera_At(closest_player_unit)	

			Sleep(4)
			front_xwing_list = Find_All_Objects_With_Hint("front-xwing")
			
			for i, frontxwing in pairs(front_xwing_list) do
				Register_Prox(frontxwing, Xwing_Prox, front_xwing_range, rebel_player)
			end   
			
			rear_xwing_list = Find_All_Objects_With_Hint("rear-xwing")
			
			for i, rearxwing in pairs(rear_xwing_list) do
				Register_Prox(rearxwing, Xwing_Prox, rear_xwing_range, rebel_player)
			end  
			
			trigger_spawn_0 = Find_Hint("GENERIC_MARKER_LAND", "reinforce_trigger")
			
			if TestValid(trigger_spawn_0) then
			--MessageBox("Found reinforcement marker")
				Register_Prox(trigger_spawn_0, Bring_In_Main_Reinforcements, 200, rebel_player)
			end
			
			Suspend_AI(0)
			Story_Event("M03_INTRO_DIALOG_02_GO")
			   
		end
end
function Xwing_Prox(prox_obj, trigger_obj)

	--MessageBox("Rebel near uplink!")
	if TestValid(trigger_obj) and trigger_obj.Get_Type() == Find_Object_Type("Rebel_Pilot") then
		-- Pilot is near the uplink
		--MessageBox("Pilot entering xwing!")
		tl_hint_given = true

		-- Cencel this proximity check so no other pilots try to enter this xwing
		prox_obj.Cancel_Event_Object_In_Range(Xwing_Prox)
		
		-- Tell the story mode that we're going to despawn a pilot
		-- This event is perpetual so it will be triggered every time a pilot nears an xwing
		Story_Event("pilot_despawned")
		
		-- Get rid of pilot
		trigger_obj.Despawn()

		-- Add this xwing to the captured list
		--table.insert(captured_list,prox_obj)
		captured_list[captured_count] = prox_obj
		captured_count = captured_count + 1

		-- Play anim on xwing
		prox_obj.Play_Animation("Deploy",false)

		-- Change the owner to the rebel so the empire units will target them														  
		prox_obj.Change_Owner(rebel_player)
	end
end
function Bring_In_Main_Reinforcements(prox_obj, trigger_obj)
	--MessageBox("Bringing in main reinforcements!")
	
	-- Find the first pilot.  They're all in a team so they're always close together																								 
	pilot = Find_First_Object("Rebel_Pilot")
	
	marker_list = Find_Hint("GENERIC_MARKER_LAND", "reinforce_trigger")
	
	if TestValid(pilot) then	
		--MessageBox("Spawning reinforcements")
		ReinforceList(reinforce_list, marker_list, empire_player, true, true, true)
		prox_obj.Cancel_Event_Object_In_Range(Bring_In_Main_Reinforcements)
		Story_Event("m03_reinforcements_spotted")
	else
		-- It's valid for the player to control all reinforcement points
		--MessageBox("Marker not found")
	end
end
function State_Rebel_A01M03_Create_AA_Turrets(message)
	if message == OnEnter then
		tl_hint_given = true
		Sleep(10)
		-- This function is triggered the first time a pilot enters an xwing
		build_pad_list = Find_All_Objects_Of_Type("EMPIRE_BUILD_PAD")
		for j, pad in pairs(build_pad_list) do
			--MessageBox("Build on build pad")
			pad.Change_Owner(empire_player)
			pad.Build("UC_Empire_Buildable_Anti_Aircraft_Turret")
			pad.Lock_Build_Pad_Contents(true)
		end
		backup_marker = Find_Hint("GENERIC_MARKER_LAND", "backup")
		ReinforceList(reinforce_list, backup_marker, empire_player, true, true, true)

		aa_gun_uc_list = Find_All_Objects_Of_Type("UC_Empire_Buildable_Anti_Aircraft_Turret")
		for j, aa_gun_uc in pairs(aa_gun_uc_list) do
			--MessageBox("Placing Highlight on building aa guns!")
			Add_Radar_Blip(aa_gun_uc, "blip_aa_uc_gun")
			--aa_gun_uc.Highlight(true)
			aa_gun_uc.Highlight_Small(true,  -100)
		end
		Sleep(18)
		aa_gun_list = Find_All_Objects_Of_Type("Empire_Anti_Aircraft_Turret")
		for j, aa_gun in pairs(aa_gun_list) do
			--MessageBox("Placing Highlight on building aa guns!")
			Add_Radar_Blip(aa_gun, "blip_aa_gun")
			--aa_gun.Highlight(true)
			aa_gun.Highlight_Small(true, -100)
		end
	end
end
function State_Rebel_A01M03_Xwing_Escape(message)
	if message == OnEnter then

		total_delay = 0.5
		xwing_index = 1

		if TestValid(neutral_player) then
			for j, xwing in pairs(captured_list) do
				xwing.Change_Owner(neutral_player)
			end
		else
			--MessageBox("Unable to switch xwings to neutral player")
		end

		-- Have the first xwing takeoff
		xwing = captured_list[0]
		xwing.Play_Animation("Takeoff",false)
		
		-- Delay the takeoff of the remaining xwings
		if xwing_index < captured_count then
			Register_Timer(Xwing_Escape, total_delay)
		end
		
		Suspend_AI(1)
		Story_Event("CUE_M03_ENDING_DIALOG")
		
		
	end
end				
