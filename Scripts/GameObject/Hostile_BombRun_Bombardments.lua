--Hostile by Sidious Invader, edited for Bombing Runs and Bombardments by Jesus7Freak.
--Version 2.2
require("PGStateMachine")
require("PGStoryMode")
function Definitions()
DebugMessage("%s -- In Definitions", tostring(Script))
Define_State("State_Init", State_Init);
hostile = Find_Player("Sarlacc")
Puno = nil; Pdos = nil; Ptres = nil; Pcuatro = nil; Pcinco = nil; Pseis = nil; Psiete = nil; Pocho = nil; Pnueve = nil;  Pdiez = nil; Ponce = nil; Pdoce = nil; Ptrece = nil; Pcatorce = nil; Pquince = nil;
Puno = Find_First_Object("TIE_Bomber_Bombing_Run_Bomb")
Pdos = Find_First_Object("Y_Wing_Bombing_Run_Bomb")
Ptres = Find_First_Object("Skipray_Bombing_Run_Bomb")
Pcuatro = Find_First_Object("Proj_Empire_Bombardment_Turbolaser")
Pcinco = Find_First_Object("Proj_Republic_Bombardment_Turbolaser")
Pseis = Find_First_Object("Proj_Rebel_Bombardment_Turbolaser")
Psiete = Find_First_Object("Proj_Rebel_Bombardment_Ion_Cannon")
Pocho = Find_First_Object("Proj_Krayt_Bombardment_Damage")
Pnueve = Find_First_Object("Proj_Krayt_Bombardment_Ion")
end
function State_Init(message)
if message == OnEnter then
if Puno ~= nil then
Sleep(0.3)
Puno.Change_Owner(hostile)
elseif Pdos ~= nil then
Sleep(0.3)
Pdos.Change_Owner(hostile)
elseif Ptres ~= nil then
Sleep(0.1)
Ptres.Change_Owner(hostile)
elseif Pcuatro ~= nil then
Sleep(0.1)
Pcuatro.Change_Owner(hostile)
elseif Pcinco ~= nil then
Sleep(0.1)
Pcinco.Change_Owner(hostile)
elseif Pseis ~= nil then
Sleep(0.1)
Pseis.Change_Owner(hostile)
elseif Psiete ~= nil then
Sleep(0.1)
Psiete.Change_Owner(hostile)
elseif Pocho ~= nil then
Sleep(0.1)
Pocho.Change_Owner(hostile)
elseif Pnueve ~= nil then
Sleep(0.1)
Pnueve.Change_Owner(hostile)
elseif not Find_First_Object("Proj_Rebel_Bombardment_Ion_Cannon") then
Pseis = Find_First_Object("Proj_Rebel_Bombardment_Turbolaser").Change_Owner(hostile)
elseif  Psiete == nil then
Psiete = Find_First_Object("Proj_Rebel_Bombardment_Ion_Cannon").Change_Owner(hostile)
elseif not Find_First_Object("Proj_Krayt_Bombardment_Ion") then
Pocho = Find_First_Object("Proj_Krayt_Bombardment_Damage").Change_Owner(hostile)
elseif  Pnueve == nil then
Pnueve = Find_First_Object("Proj_Krayt_Bombardment_Ion").Change_Owner(hostile)
end
end
end




