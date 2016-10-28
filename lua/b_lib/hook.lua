--hookshit

-- self explanatory
local hooknum = 0
function hook.RunOnce(str, func)
    hooknum = hooknum + 1
    local c = "temporary_hook_" .. hooknum

        func( ... )
        hook.Remove(str, c)
    end)
end
