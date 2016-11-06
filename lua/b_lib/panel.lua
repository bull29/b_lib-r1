--panelstuff
pan = pan or {}

-- streamlined proper inner padding
function pan.pad( amount, panel )
    local parent = panel:GetParent()
    panel:SetPos(amount, amount)
    panel:SetSize(parent:GetWide() - (amount * 2), parent:GetTall() - (amount * 2))
end

-- quick scaling
function pan.relunit( unit )
    return ScrW() / unit / 100, ScrH() / unit / 100
end
