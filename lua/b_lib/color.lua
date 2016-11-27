local COLOR = FindMetaTable("Color")

-- negate a color/return the opposite of a color
function COLOR:Negate()
    return Color( 255 - self.r, 255 - self.g, 255 - self.b, self.a )
end

--increment/decrement a color
function COLOR:Increment( am )
    return Color( self.r + am, self.g + am, self.b + am, self.a )
end

-- random color with optional alpha declaration
function randomColor( al )
    return Color( math.random( 0, 255 ), math.random( 0, 255 ), math.random( 0, 255 ), al or 255 )
end
