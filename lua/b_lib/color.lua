--colorstuff
col = col or {}

-- negate a color/return the opposite of a color
function col.negate( col )
    return Color( 255 - col.r, 255 - col.g, 255 - col.b, col.a or 255 )
end

--increment/decrement a color
function col.increment( col, am )
    return Color( col.r + am, col.g + am, col.b + am, col.a or 255 )
end
