
function ui_ingredient(x,y)
    local container = container(x,y)
    container:SetSize(120,120)


    local numberbox = loveframes.Create("numberbox")
    numberbox:SetParent(container)
    
    
    numberbox:SetSize(50, 25)
    numberbox:SetPos(container:GetWidth()/2 - 23, container:GetHeight() - 13)
    --numberbox:Center()
    numberbox:SetMin(minIngrAmount)
    numberbox:SetMax(maxIngrAmount)


    container:MoveToTop()
    local tooltip = loveframes.Create("tooltip")
    tooltip:SetObject(container)
    tooltip:SetPadding(10)
    tooltip:SetText("This is an ingredient.")

    return container

end