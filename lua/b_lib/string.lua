--stringtingsz

-- pronouncable random word
local vow = {97, 101, 105, 111, 117}
local con = {98, 99, 100, 102, 103, 104, 106, 107, 108, 109, 110, 112, 113, 114, 115, 116, 118, 119, 120, 121, 122}

function string.prand( len )
    len = isnumber( len ) and len or len:len()
    local str = ""
    local s = math.random( 0, 1 )
    for i = s, len + s - 1 do
        if i % 2 == 0 then
            str = str .. string.char(vow[math.random(1, 5)])
        else
            str = str .. string.char(con[math.random(1, 21)])
        end
    end
    return str
end
