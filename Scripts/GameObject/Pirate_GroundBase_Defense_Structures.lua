--modded por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGSpawnUnits")


function Definitions()

DebugMessage("%s -- In Definitions", tostring(Script))

Define_State("State_Init", State_Init);

assault_list1 = {"E_Ground_Base_Shield"}
assault_list2 = {"Power_Generator_R"}
assault_list3 = {"U_Ground_Turbolaser_Tower" }
assault_list4 = {"U_Ground_Turbolaser_Tower" }
assault_list5 = {"U_Ground_Turbolaser_Tower" }
assault_list6 = {"U_Ground_Turbolaser_Tower" }


Neutral_GrNav1_A_re = {"Republic_AT_TE_Company", "Republic_AT_TE_Company"}
Neutral_GrNav1_B_re = {"Republic_ATXT_Scout_Squad", "Republic_ATXT_Scout_Squad"}
Neutral_GrNav1_C_re = {"Republic_Light_Recon_Squad", "Republic_Light_Recon_Squad"}
Neutral_GrNav1_D_re = {"Republic_Heavy_Assault_Company", "Republic_Heavy_Assault_Company"}
Neutral_GrNav1_E_re = {"Republic_Heavy_Artillery_Corp", "Republic_Heavy_Artillery_Corp"}

Neutral_GrNav2_A_re = {"C_Hailfire_Tank_Droid_Brigade", "C_Hailfire_Tank_Droid_Brigade"}
Neutral_GrNav2_B_re = {"C_BattleDroid_Squad", "C_BattleDroid_Squad"}
Neutral_GrNav2_C_re = {"C_Stap_Squad", "C_Stap_Squad"}
Neutral_GrNav2_D_re = {"C_OG_9_Group", "C_OG_9_Group"}
Neutral_GrNav2_E_re = {"MTT_Company", "MTT_Company"}

Neutral_GrNav3_A_re = {"C_Super_BattleDroidB2_Squad", "C_Super_BattleDroidB2_Squad"}
Neutral_GrNav3_B_re = {"C_BattleDroid_Squad", "C_BattleDroid_Squad"}
Neutral_GrNav3_C_re = {"C_CIS_walk_Advanced_Group", "C_CIS_walk_Advanced_Group"}
Neutral_GrNav3_D_re = {"C_AAT_Group", "C_AAT_Group"}
Neutral_GrNav3_E_re = {"C_HAG_Group", "C_HAG_Group"}

Neutral_GrNav4_A_re = {"Rep_Stun_Tank_Corp", "Rep_Stun_Tank_Corp"}
Neutral_GrNav4_B_re = {"Republic_ATOT_Company", "Republic_ATOT_Company"}
Neutral_GrNav4_C_re = {"Republic_Y_WingLand_squadron", "Republic_Y_WingLand_squadron"}
Neutral_GrNav4_D_re = {"Republic_UTAT_COMPANY", "Republic_UTAT_COMPANY"}
Neutral_GrNav4_E_re = {"Rep_AT_HE_Company", "Rep_AT_HE_Company"}

Neutral_GrNav5_A_re = {"Hu_Mandalorian_Speeder_Company", "Hu_Mandalorian_Speeder_Company"}
Neutral_GrNav5_B_re = {"Hu_Mandalorian_Speeder_Company", "Hu_Mandalorian_Speeder_Company"}
Neutral_GrNav5_C_re = {"Hu_Mandalorian_Speeder_Company", "Hu_Mandalorian_Tank_Company"}
Neutral_GrNav5_D_re = {"Hu_Mandalorian_Tank_Company", "Hu_Mandalorian_Tank_Company"}
Neutral_GrNav5_E_re = {"Hu_Mandalorian_Tank_Company", "Hu_Mandalorian_Tank_Company"}

Neutral_GrNav6_A_re = {"Hutts_Med_Skiff_Company", "Hutts_Med_Skiff_Company"}
Neutral_GrNav6_B_re = {"Hu_Pirate_Speeder_2_Company", "Hu_Pirate_Speeder_2_Company"}
Neutral_GrNav6_C_re = {"Hutts_Hvy_Skiff_Company", "Hutts_Hvy_Skiff_Company"}
Neutral_GrNav6_D_re = {"Hu_Hvy_SailBarge_Company", "Hu_Hvy_SailBarge_Company"}
Neutral_GrNav6_E_re = {"Hu_Adv_Hvy_SailBarge_Company", "Hu_Adv_Hvy_SailBarge_Company"}

player = Object.Get_Owner()

Rebel_Bando = Find_Player("Rebel")
Empire_Bando = Find_Player("Empire")
Pirates_Bando = Find_Player("Pirates")
BlackSun_Bando = Find_Player("Underworld")
CIS_Bando = Find_Player("CIS")
Republic_Bando = Find_Player("Republic")
Krayt_Bando = Find_Player("Krayt")
Fel_Bando = Find_Player("Fel")
		
chances = nil

end

function State_Init(message)
		if Get_Game_Mode() == "Galactic" then
				ScriptExit()
		end 
		Sleep(1)				
		
		
		if message == OnEnter then

				spawn_marker1 = Find_First_Object("BASE SHIELD STRUCTURE POSITION")
				spawn_marker2 = Find_First_Object("POWER GENERATOR STRUCTURE POSITION")
				spawn_marker3 = Find_First_Object("TURBOLASER STRUCTURE POSITION")
				spawn_marker4 = Find_First_Object("Defending Forces Position")
				spawn_marker5 = Find_First_Object("AWALL_POSITION")
				spawn_marker6 = Find_First_Object("Out Base Special Structure Position")
                Sleep(1)
                SpawnList(assault_list1, spawn_marker1, Find_Player("Pirates"), true, true)
				SpawnList(assault_list2, spawn_marker2, Find_Player("Pirates"), true, true)
				SpawnList(assault_list3, spawn_marker3, Find_Player("Pirates"), true, true)
				SpawnList(assault_list4, spawn_marker4, Find_Player("Pirates"), true, true)
				SpawnList(assault_list5, spawn_marker5, Find_Player("Pirates"), true, true)
				SpawnList(assault_list6, spawn_marker6, Find_Player("Pirates"), true, true)
                Sleep(5)
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Sleep(1)
		end
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav1 = Find_First_Object("Neutral_GrNav1")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav1 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav1_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav1_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav1_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav1_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav1_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav2 = Find_First_Object("Neutral_GrNav2")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav2 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav2_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav2_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav2_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav2_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav2_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav3 = Find_First_Object("Neutral_GrNav3")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav3 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav3_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav3_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav3_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav3_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav3_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav4 = Find_First_Object("Neutral_GrNav4")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav4 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav4_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav4_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav4_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav4_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav4_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav5 = Find_First_Object("Neutral_GrNav5")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav5 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav5_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav5_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav5_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav5_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav5_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		if message == OnEnter then
				GrBaseCRe_marker1 = Find_First_Object("In Base Special Structure Position")
				Neutral_GrNav6 = Find_First_Object("Neutral_GrNav6")
				friendly_player = Object.Get_Owner()
								
				Sleep(1)
				
				if Neutral_GrNav6 and friendly_player == Find_Player("Pirates") then
         				SpawnList(Neutral_GrNav6_A_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav6_B_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav6_C_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav6_D_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)
						SpawnList(Neutral_GrNav6_E_re, GrBaseCRe_marker1, Find_Player("Pirates"), true, true)
						Sleep(1)

						enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
						friendly_unit_list = Find_All_Objects_Of_Type(player)
						
						for k, unit in pairs(friendly_unit_list) do
							if TestValid(unit) then
								friendly_units_object = friendly_unit_list[1]
								enemy_unit_object = enemy_unit_list[1]
								enemy_player = enemy_unit_object.Get_Owner().Is_Enemy(player)
								local closest_enemy = Find_Nearest(enemy_unit_object, enemy_player, true)
								if TestValid(closest_enemy) then
									if unit.Is_Category("Air") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Infantry") then
										unit.Attack_Move(closest_enemy)
									end
									if unit.Is_Category("Vehicle") then
										unit.Attack_Move(closest_enemy)
									end
								end
							end
						end		
						Sleep(10)
						ScriptExit()
				end
				Sleep(1)
		end	
		
end
