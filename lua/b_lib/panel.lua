--panelstuff
local PANEL = FindMetaTable"Panel"

-- streamlined proper inner padding
function PANEL:Pad( amount )
    local parent = panel:GetParent()
    self:SetPos(amount, amount)
    self:SetSize(parent:GetWide() - (amount * 2), parent:GetTall() - (amount * 2))
end

-- quick scaling
function PANEL:relunit( unit )
    return ScrW() / unit / 100, ScrH() / unit / 100
end
