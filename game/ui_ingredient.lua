

--   Ingredient types:
--  0. Firewood
--  1. Rutabaga
--  2. Nails
--  3. Twigs
--  4. Flour
--  5. Honey


local function GetIngredientAudioSource(type)
    if type == 0 then
        return love.audio.newSource("assets/audio/firewood1.mp3", "static")
    elseif type == 1 then
        return love.audio.newSource("assets/audio/rutabaga1.mp3", "static")
    elseif type == 2 then
        return love.audio.newSource("assets/audio/nails1.mp3", "static")
    elseif type == 3 then
        return love.audio.newSource("assets/audio/twigs1.mp3", "static")
    elseif type == 4 then
        return love.audio.newSource("assets/audio/flour.mp3", "static")
    elseif type == 5 then
        return love.audio.newSource("assets/audio/honey.mp3", "static")
    end
end

function GetIngredientAmount(ingredientContainer)
    for key, value in pairs(ingredientContainer:GetChildren()) do
        if not value then
        elseif value:GetType() == "numberbox" then
            return value:GetValue()
        end
    end
end

function GetIngredientsAmount()
    local amount = 0
    amount = amount + GetIngredientAmount(ui_ingredient1)
    amount = amount + GetIngredientAmount(ui_ingredient2)
    amount = amount + GetIngredientAmount(ui_ingredient3)
    amount = amount + GetIngredientAmount(ui_ingredient4)
    amount = amount + GetIngredientAmount(ui_ingredient5)
    return amount
end

function SetIngredientAmount(ingredientContainer, amount)
    for key, value in pairs(ingredientContainer:GetChildren()) do
        if not value then
        elseif value:GetType() == "numberbox" then
            return value:SetValue(amount)
        end
    end
end

function SetIngredientsAmount(amount)
    SetIngredientAmount(ui_ingredient1, amount)
    SetIngredientAmount(ui_ingredient2, amount)
    SetIngredientAmount(ui_ingredient3, amount)
    SetIngredientAmount(ui_ingredient4, amount)
    SetIngredientAmount(ui_ingredient5, amount)
end

function ui_ingredient(x,y, type)
    local container = container(x,y)
    container:SetSize(120,120)

    local sound = GetIngredientAudioSource(type)

    local numberbox = loveframes.Create("numberbox")
    numberbox:SetParent(container)
    
    numberbox:SetSize(50, 25)
    numberbox:SetPos(container:GetWidth()/2 - 23, container:GetHeight() - 13)
    numberbox:SetMin(minIngrAmount)
    numberbox:SetMax(maxIngrAmount)

    numberbox.OnValueChanged = function(object, value)
        sound:seek(0)
        sound:play()
        UpdateMixerUIValues()
    end


    container:MoveToTop()
    local tooltip = loveframes.Create("tooltip")
    tooltip:SetObject(container)
    tooltip:SetPadding(10)
    tooltip:SetText("This is an ingredient.")

    return container

end