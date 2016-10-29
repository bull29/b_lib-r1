--colorstuff

-- negate a color/return the opposite of a color
function negatecol( col )
    return Color( 255 - col.r, 255 - col.g, 255 - col.b, col.a or 255 )
end

--increment/decrement a color
function incrementcol( col, am )
    col.r = col.r + am
    col.g = col.g + am
    col.b = col.b + am

    return Color( col.r, col.g, col.b, col.a or 255 )
end
