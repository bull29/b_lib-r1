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

-- random color with optional alpha declaration
function col.random( al )
    return Color( math.random( 0, 255 ), math.random( 0, 255 ), math.random( 0, 255 ), al or 255 )
end
