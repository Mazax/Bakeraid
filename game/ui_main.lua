
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


local ui_ingredient0 = ui_ingredient(50,540, 0)
ui_ingredient0:SetSize(160,160)

for k, child in pairs(ui_ingredient0:GetChildren()) do
    if (child:GetType() == "numberbox") then
        child:SetPos(ui_ingredient0:GetWidth()/2 - 23, ui_ingredient0:GetHeight() - 13) 
    end
end


UI_VikingPikeman(1020, 560, 1)
UI_VikingMage(880, 560, 2)
UI_VikingWarrior(730, 560, 3)