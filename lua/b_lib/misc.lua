-- stuff i really can't bother to categorise

if CLIENT then return end

-- because nfo's shitty web console rcon thing doesn't spew print or msg statements, only serverlogs
printOld = printOld or print

function print( ... )
    local str = ""
    local args = {...}

    for k, v in pairs(args) do
        str = str .. "\t" .. tostring( v )
    end

    ServerLog(str .. "\n")
    printOld( ... )
end
