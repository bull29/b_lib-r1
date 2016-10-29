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

-- recursive length of a table
function table.rlen( tab )
    if not istable( tab ) then return 0 end
    local n = 0
    for k, v in pairs( tab ) do
        n = n + 1
        n = n + table.rlen( v )
    end
    return n
end

-- for when you're retarded and have made a table with pointless stringkeys when not necessary
function table.numerate( tab )
    local t = {}
    for k, v in SortedPairs( tab ) do
        t[ #t + 1 ] = v
    end
    return t
end
