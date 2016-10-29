-- Don't expect anything amazing or anything fantastic
-- I'm just a lazy shitty coder, hence why this lib exists
-- Whole bunch of functions i tend to utilise alot

local function I(str)
    include("b_lib/" .. str .. ".lua")
    AddCSLuaFile("b_lib/" .. str .. ".lua")
end

I"misc"
I"table"
I"hook"
I"color"
I"string"
