-- tableshit

-- originally made for a permissions addon I was working on, I could quickly pop branching default permissions without much hassle

function table.ibranch(tab, fill, ...)
    local args = {...}
    tab[args[1]] = tab[args[1]] or {}
    local c = tab[args[1]]

    for i = 2, #args do
        c[args[i]] = c[args[i]] or {}

        for k, v in pairs(fill) do
            c[k] = v
        end

        c = c[args[i]]
    end
end
