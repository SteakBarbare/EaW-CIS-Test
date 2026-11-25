--Edited by Nomada_Firefox

require("PGStoryMode")

--
-- Definitions -- This function is called once when the script is first created.
-- 
function Definitions()

	DebugMessage("%s -- In Definitions", tostring(Script))
	
	StoryModeEvents = 
	{
		Batalla_de_Byss_01 = State_Batalla_de_Byss_00_Begin
	}
	
	death_star_fleet = {
		"R_EclipseII"
	}
	
	death_star_move_delay = 45

	-- For memory pool cleanup hints

end

function State_Batalla_de_Byss_00_Begin(message)
	if message == OnEnter then
		--MessageBox("m12 begin")
		rebel_player = Find_Player("Underworld")
		death_star_unit_list = SpawnList(death_star_fleet, FindPlanet("Byss"), rebel_player, false, false)
		death_star_fleet = Assemble_Fleet(death_star_unit_list)
		if not death_star_fleet then
			--MessageBox("Can't find death star; aborting")
			ScriptExit()
		end
		
		death_star_list = Find_All_Objects_Of_Type("R_EclipseII")
		death_star = death_star_list[1]
		death_star.Override_Max_Speed(0.20)

		--MessageBox("feedback: DS spawned on Alderaan and attacking")
        death_star.Set_Check_Contested_Space(false)
		death_star_fleet.Activate_Ability("R_EclipseII")
        death_star.Set_Check_Contested_Space(true)

		DeathStar_Attack()
	end
end


function DeathStar_Attack()
	if TestValid(death_star_fleet) then
	
		-- Find the endpoints of the DeathStar path to the system holding Mon Mothma
		target_planet = FindTarget.Reachable_Target(rebel_player, "Has_Mon_Mothma", "Enemy | Friendly | Neutral", "Any", 1.0)
		if not target_planet then
			--MessageBox("Mon mothma is not in the galaxy.  Win condition?")
			ScriptExit()
		end
		
		current_planet = death_star_fleet.Get_Parent_Object()
		if not current_planet then
			--MessageBox("Error, wasn't on a planet; trying again later.")
			Sleep(5)
		else
		
			-- Move one step on the path and fire the DeathStar ability
			--MessageBox("target_planet: %s   current_planet:%s", tostring(target_planet), tostring(current_planet))
			ds_path = Find_Path(empire_player, current_planet, target_planet)
			next_planet = ds_path[2]
			BlockOnCommand(death_star_fleet.Move_To(next_planet))
			--MessageBox("Fire death star here")
            death_star_list = Find_All_Objects_Of_Type("R_EclipseII")
		    death_star = death_star_list[1]

            death_star.Set_Check_Contested_Space(false)
			death_star_fleet.Activate_Ability("R_EclipseII")
            death_star.Set_Check_Contested_Space(true)
		end

		Register_Timer(DeathStar_Attack, death_star_move_delay)
	end
end



function Story_Mode_Service()


end

