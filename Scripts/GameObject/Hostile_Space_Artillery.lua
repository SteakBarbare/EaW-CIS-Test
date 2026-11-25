--Hostile by Sidious Invader, edited for Bombing Runs and Bombardments by Jesus7Freak. O N L Y   F O R   U S E   O N   A L L I A N C E   M O D
--Version 2.2
require("PGStateMachine")
require("PGStoryMode")
function Definitions()
DebugMessage("%s -- In Definitions", tostring(Script))
Define_State("State_Init", State_Init);
hostile = Find_Player("Sarlacc")
c1 = nil; c2 = nil; c3 = nil; c4 = nil; c5 = nil;  c6 = nil; c7 = nil; c8 = nil; c9 = nil; c10 = nil; c11 = nil; c12 = nil; c13 = nil; c14 = nil; c15 = nil; c16 = nil; c17 = nil; c18 = nil;
c1 = Find_First_Object("Proj_Ship_Concussion_MissileB")
c2 = Find_First_Object("Proj_Egg_Rocket")
c3 = Find_First_Object("Proj_Fighter_Concussion_MissileB")
c4 = Find_First_Object("Proj_Ship_MissileBAdv")
c5 = Find_First_Object("Proj_Ship_rocketB_Barrage")
c6 = Find_First_Object("Proj_Ship_rocketB")
c7 = Find_First_Object("Proj_Ship_torpedoB")
c8 = Find_First_Object("Proj_Ship_ADVtorpedoB_Barrage")
c9 = Find_First_Object("Proj_Ship_ADVtorpedoB")
c10 = Find_First_Object("Proj_Ship_MC80M_Missile")
c11 = Find_First_Object("Proj_Ship_HvyLauncher_MissileB")
c12 = Find_First_Object("Proj_Ship_Tyrant_Missile")
c13 = Find_First_Object("Proj_Ship_TyrantRocket")
c14 = Find_First_Object("Proj_Ship_KyramudRocket")
c15 = Find_First_Object("Proj_Ship_InterceptorIV_Missile")
c16 = Find_First_Object("Proj_Ship_BS_Missile")
c17 = Find_First_Object("Proj_Ship_Diamond_Boron_Missile")
c18 = Find_First_Object("Proj_Ship_Diamond_Boron_Missile_Barrage")
end
function State_Init(message)
if message == OnEnter then
Sleep(10.0)
if c1 == nil then
c1 = Find_First_Object("Proj_Ship_Concussion_MissileB").Change_Owner(hostile)
elseif c2 == nil then
c2 = Find_First_Object("Proj_Egg_Rocket").Change_Owner(hostile) 
elseif c3 == nil then
c3 = Find_First_Object("Proj_Fighter_Concussion_MissileB").Change_Owner(hostile) 
elseif c4 == nil then
c4 = Find_First_Object("Proj_Ship_MissileBAdv").Change_Owner(hostile) 
elseif c5 == nil then
c5 = Find_First_Object("Proj_Ship_rocketB_Barrage").Change_Owner(hostile) 
elseif c6 == nil then
c6 = Find_First_Object("Proj_Ship_rocketB").Change_Owner(hostile) 
elseif c7 == nil then
c7 = Find_First_Object("Proj_Ship_torpedoB").Change_Owner(hostile) 
elseif c8 == nil then
c8 = Find_First_Object("Proj_Ship_ADVtorpedoB_Barrage").Change_Owner(hostile) 
elseif c9 == nil then
c9 = Find_First_Object("Proj_Ship_ADVtorpedoB").Change_Owner(hostile) 
elseif c10 == nil then
c10 = Find_First_Object("Proj_Ship_MC80M_Missile").Change_Owner(hostile) 
elseif c11 == nil then
c11 = Find_First_Object("Proj_Ship_HvyLauncher_MissileB").Change_Owner(hostile) 
elseif c12 == nil then
c12 = Find_First_Object("Proj_Ship_Tyrant_Missile").Change_Owner(hostile) 
elseif c13 == nil then
c13 = Find_First_Object("Proj_Ship_TyrantRocket").Change_Owner(hostile) 
elseif c14 == nil then
c14 = Find_First_Object("Proj_Ship_KyramudRocket").Change_Owner(hostile) 
elseif c15 == nil then
c15 = Find_First_Object("Proj_Ship_InterceptorIV_Missile").Change_Owner(hostile) 
elseif c16 == nil then
c16 = Find_First_Object("Proj_Ship_BS_Missile").Change_Owner(hostile) 
elseif c17 == nil then
c17 = Find_First_Object("Proj_Ship_Diamond_Boron_Missile").Change_Owner(hostile) 
elseif c18 == nil then
c18 = Find_First_Object("Proj_Ship_Diamond_Boron_Missile_Barrage").Change_Owner(hostile) 
end
end
end




