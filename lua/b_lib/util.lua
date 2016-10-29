--idek what qualifies as util really

-- useless streamlining
function util.MultiNetworkStrings(header, ...)
    local args = {...}
    for k, v in pairs(args) do
        util.AddNetworkString(header .. v)
    end
end
