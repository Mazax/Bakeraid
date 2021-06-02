
function container(x,y)
    local container = loveframes.Create("panel")
    container.Draw = function(object)
        --make container invisible
    end
    container:SetPos(x, y)
    return container
end


ui_ingredient1 = ui_ingredient(120, 55, 1)
ui_ingredient2 = ui_ingredient(250, 55, 2)
ui_ingredient3 = ui_ingredient(380, 55, 3)
ui_ingredient4 = ui_ingredient(120, 210, 4)
ui_ingredient5 = ui_ingredient(250, 210, 5)
--ui_ingredient6 = ui_ingredient(380, 210)

function GetIngredientContainer(type)
    if type == 0 then
        return ui_ingredient0
    elseif type == 1 then
        return ui_ingredient1
    elseif type == 2 then
        return ui_ingredient2
    elseif type == 3 then
        return ui_ingredient3
    elseif type == 4 then
        return ui_ingredient4
    elseif type == 5 then
        return ui_ingredient5
    end
end

ui_ingredient0 = ui_ingredient(50,540, 0)
ui_ingredient0:SetSize(160,160)

for k, child in pairs(ui_ingredient0:GetChildren()) do
    if (child:GetType() == "numberbox") then
        child:SetPos(ui_ingredient0:GetWidth()/2 - 23, ui_ingredient0:GetHeight() - 13) 
    end
end


--UI_VikingPikeman(1020, 560, 1)
--UI_VikingMage(880, 560, 2)
--UI_VikingWarrior(730, 560, 3)

