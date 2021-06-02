local mixButton = loveframes.Create("button")
mixButton:SetPos(470, 500)
mixButton:SetWidth(150)
mixButton:SetText("Mix ingredients")
mixButton:SetEnabled(false)


mixButton.OnClick = function(object)
    MixIngedients()
end

local mixingProgressbar = loveframes.Create("progressbar")
mixingProgressbar:SetPos(470, 470)
mixingProgressbar:SetWidth(150)
mixingProgressbar:SetMinMax(0,3)

function SetUIMixerValue(amount)
    mixingProgressbar:SetValue(amount)
end

function GetUIMixerMax()
    return mixingProgressbar:GetMax()
end

function SetUIMixerButtonEnabled(enabled)
    mixButton:SetEnabled(enabled)
end