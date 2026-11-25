require("PGStateMachine")
require("PGStoryMode")
require("PGSpawnUnits")

function Definitions()
    DebugMessage("%s -- In Definitions", tostring(Script))
    Define_State("State_Init", State_Init)
    
    unit_list = { "Z_Hu_Mandalorian_Speeder_Company", "Z_Hutts_Med_Skiff_Company", "Z_Hutts_Hvy_Skiff_Company", "Z_Hu_Seraph_Company", "Z_HuttLightFighter_Land_Company", "Z_Hu_Twilek_Squad", "Z_Pirate_Soldier_Squad", "Z_Pirate_PLEX_Squad" } 
    unit_listIA = { "Z_Hutts_Hvy_Skiff_Company" } 
end

function State_Init(message)
    if message == OnEnter then
        if Get_Game_Mode() ~= "Land" then
            ScriptExit()
        end
        
        landing_zone = Find_First_Object("IA_Basilisk_Land_SM")
        if not TestValid(landing_zone) then
            DebugMessage("%s -- Landing zone is invalid", tostring(Script))
            ScriptExit()
        end
        
        player = landing_zone.Get_Owner()
        if not TestValid(player) then
            DebugMessage("%s -- Player is invalid", tostring(Script))
            ScriptExit()
        end
        
        friendly_units = {}
        friendly_unitsB = {}
        
        local all_units = Find_All_Objects_Of_Type("Air | Vehicle")
        local all_structures = Find_All_Objects_Of_Type("Structure")
        
        for _, unit in pairs(all_units) do
            if TestValid(unit) and unit.Get_Owner() == player then
                table.insert(friendly_units, unit)
            end
        end
        
        for _, unit in pairs(all_structures) do
            if TestValid(unit) and unit.Get_Owner() == player then
                table.insert(friendly_unitsB, unit)
            end
        end
        
        if #friendly_units >= 10 and #friendly_unitsB >= 2 then
            ReinforceList(unit_listIA, landing_zone, player, true, true, true, Move_Order1)
            Sleep(15)
            ScriptExit()
        end
        
        ReinforceList(unit_list, landing_zone, player, true, true, true, Move_Order1)
    end
end

function Move_Order1()
    Sleep(15)
    
    if not TestValid(landing_zone) then
        DebugMessage("%s -- Landing zone is invalid during Move_Order1", tostring(Script))
        ScriptExit()
    end
    
    player = landing_zone.Get_Owner()
    enemy_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle | Landhero | Structure")
    friendly_unit_list = Find_All_Objects_Of_Type("Air | Infantry | Vehicle")
    
    for _, unit in pairs(friendly_unit_list) do
        if TestValid(unit) then
            local closest_enemy = Find_Nearest(unit, player, true)
            if TestValid(closest_enemy) then
                unit.Attack_Move(closest_enemy)
            end
        end
    end
end