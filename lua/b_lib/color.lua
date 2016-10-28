--colorstuff

-- negate a color/return the opposite of a color
function negatecol( col )
    return Color( 255 - col.r, 255 - col.g, 255 - col.b, col.a or 255 )
end
