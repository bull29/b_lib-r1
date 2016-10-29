--colorstuff
col = col or {}

-- negate a color/return the opposite of a color
function col.negate( c )
    return Color( 255 - c.r, 255 - c.g, 255 - c.b, col.a or 255 )
end

--increment/decrement a color
function col.increment( c, am )
    return Color( c.r + am, c.g + am, c.b + am, c.a or 255 )
end

-- random color with optional alpha declaration
function col.random( al )
    return Color( math.random( 0, 255 ), math.random( 0, 255 ), math.random( 0, 255 ), al or 255 )
end
