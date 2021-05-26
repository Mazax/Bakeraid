
local function Viking(container, version)
    local viking = loveframes.Create("image")
    viking:SetImage(string.format("assets/characters/viikinki%s.png", version))
    viking:SetParent(container)
    local viking_offset = -viking:GetImageHeight() + 40
    viking:SetPos(0, viking_offset)
    return viking
end


local function GetWeaponPath(name, version)
    name = name or "miekka"
    version = version or 1
    return string.format("assets/weapons/%s%s.png", name, version)
end


function UI_Viking(x, y, version)
    version = version or 1

    local container = container(x,y)
    local viking = Viking(container, version)
    return container

end


function UI_VikingMage(x, y, version)
    version = version or 1

    local container = container(x,y)
    local viking = Viking(container, version)

    local staff = loveframes.Create("image")
    staff:SetImage(GetWeaponPath("sauva", version))
    staff:SetParent(container)
    staff:SetPos(viking:GetImageWidth() - 45, -viking:GetImageHeight() + 40)
    return container

end


function UI_VikingPikeman(x, y, version)
    version = version or 1

    local container = container(x,y)
    local viking = Viking(container, version)

    local pike = loveframes.Create("image")
    pike:SetImage(GetWeaponPath("keihas", version))
    pike:SetParent(container)
    pike:SetPos(viking:GetImageWidth() - 45, -viking:GetImageHeight() + 40)
    return container

end


function UI_VikingWarrior(x, y, version)
    version = version or 1

    local container = container(x,y)
    local viking = Viking(container, version)

    local axe = loveframes.Create("image")
    axe:SetImage(GetWeaponPath("kirves", version))
    axe:SetParent(container)
    axe:SetPos(viking:GetImageWidth() - 35, -viking:GetImageHeight() + 40)

    local shield = loveframes.Create("image")
    shield:SetImage(GetWeaponPath("kilpi", version))
    shield:SetParent(container)
    shield:SetPos(-10, -viking:GetImageHeight() + 40)
    return container

end


