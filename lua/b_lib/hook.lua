--hookshit

-- self explanatory
function hook.RunOnce(str, func)
    local c = "temporary_hook_" .. math.random(0, 100000)

    hook.Add(str, c, function(...)
        func(...)
        hook.Remove(str, c)
    end)
end
