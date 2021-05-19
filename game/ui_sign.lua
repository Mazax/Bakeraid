

local panel = loveframes.Create("panel")
panel:SetPos(618,160)
panel:SetSize(80,120)

local text1 = loveframes.Create("text")
text1:SetText("Objective")
text1:SetParent(panel)
text1:CenterX()
text1:SetShadowColor(0.8, 0.8, 0.8, 1)
 
local tooltip = loveframes.Create("tooltip")
tooltip:SetObject(panel)
tooltip:SetPadding(10)
tooltip:SetText("This is the info board.")