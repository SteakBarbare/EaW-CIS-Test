--modded por Nomada_Firefox O N L Y   F O R   U S E   O N   A L L I A N C E   M O D

require("PGStateMachine")

function Definitions()
        Define_State("State_Init", State_Init);
end

function State_Init(message)
        if message == OnEnter then
      starship_Object = Find_First_Object("starship")
      marker = Find_Hint("marker_type", "marker_hint_name")  
      
      if TestValid(starship_Object) then
         starship_Object.Move_To(marker)
      end
        end
end




