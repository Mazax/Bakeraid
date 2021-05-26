function createViking(flour, spice, frosting, char)
    local viking = {}
    local type
    local avg = flour+spice+frosting/3

    local atk = (flour+frosting*0.5)+math.random(char*-1,char*1)
    local def = (frosting+flour*0.5)+math.random(char*-1,char*1)
    local magic = math.max(0,(spice-avg))+math.random(0,char*1)
    local maxStat = math.max(atk,def,magic)
    if maxStat == atk then
        type = 'warrior'
    elseif maxStat == def then
        type = 'scout'
    elseif maxStat == magic then
        type = 'mage'
    end

    viking.type = type
    viking.atk = atk
    viking.def = def
    viking.magic = magic
    return viking

end