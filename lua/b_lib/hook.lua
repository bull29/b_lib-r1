--hookshit

-- self explanatory
local hooknum = 0
function hook.RunOnce(str, func)
    hooknum = hooknum + 1
    local c = "temporary_hook_" .. hooknum

    hook.Add( str, c, function( ... )
        func( ... )
        hook.Remove(str, c)
    end)
end

-- ever have some retarded code that executes once in a while or a print statement but you forget where it's from?
-- use this to find it!
-- note: incredibly resource-intensive, don't be stupid when calling this
function hook.FnSearch( needle, printfn )
    for k, v in SortedPairs(hook.GetTable()) do
        for w, g in pairs(v) do
            local t = debug.getinfo(g)
            local last, first, source = t.lastlinedefined, t.linedefined, t.source
            local f = file.Open(t.source:sub(2), "r", "GAME")
            local str = ""

            for i = 0, last + 1 do
                local st = f:ReadLine()
                if i >= first - 1 then
                    str = str .. i .. "       " .. ( st or "" )
                end
            end

            if str:lower():find( needle:lower() ) then
                print( source, "lines " .. first .. " - " .. last )
                print( "::::" )
                if printfn then
                    print( str )
                end
            end
        end
    end
end
