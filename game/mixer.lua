
function UpdateMixerUIValues()
    local amount = GetIngredientsAmount()
    if amount >= GetUIMixerMax() then
        amount = GetUIMixerMax()
        SetUIMixerButtonEnabled(true)
    else
        SetUIMixerButtonEnabled(false)
    end
    SetUIMixerValue(amount)
end

function MixIngedients()
    local sound = love.audio.newSource("assets/audio/mixing_batter.mp3", "static")
    sound:play()
    SetIngredientsAmount(0)
    SetUIMixerValue(0)

    CreateViking(GetFlourAmount(), GetSpiceAmount(), GetFrostingAmount(), GetWoodAmount())
end


function GetFlourAmount()
    local amount = 0
    amount = amount + GetIngredientAmount(GetIngredientContainer(1))
    amount = amount + GetIngredientAmount(GetIngredientContainer(4))
    return amount
end

function GetSpiceAmount()
    local amount = 0
    amount = amount + GetIngredientAmount(GetIngredientContainer(2))
    amount = amount + GetIngredientAmount(GetIngredientContainer(3))
    return amount
end

function GetFrostingAmount()
    return GetIngredientAmount(GetIngredientContainer(5))
end

function GetWoodAmount()
    return GetIngredientAmount(GetIngredientContainer(0))
end