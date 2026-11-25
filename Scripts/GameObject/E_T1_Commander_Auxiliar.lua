--Code by Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")
require("PGStoryMode")


function Definitions()
   
	DebugMessage("%s -- In Definitions", tostring(Script))
		
	Define_State("State_Init", State_Init);
	unit_list = { "Imperial_Aerial_ISD" } 

end


function State_Init(message)
	if message == OnEnter then
		landing_zone = Find_First_Object("Squad_E_T1_Commander_Auxiliar")
		player = landing_zone.Get_Owner()
		Despliegue_de_unidades = SpawnList(unit_list, landing_zone, player, true, true)
		Sleep(15)
		enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
		reveal_marker = Find_First_Object("Attacker Entry Position")
		
		FogOfWar.Temporary_Reveal(player,reveal_marker,12000)
		Nave1 = Find_All_Objects_Of_Type("Aerial_ISD")
				
		for k, unit in pairs(Nave1) do
			if TestValid(unit) then
				unit.Take_Damage(10001)
			end
		end		
		
	end
end






