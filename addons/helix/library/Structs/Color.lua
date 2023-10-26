-- Color struct
-- A color composed of components (R, G, B, A) with floating point precision.
Color = {}

-- @param R (number) Red color percentage (0-1)
-- @param G (number) Green color percentage (0-1)
-- @param B (number) Blue color percentage (0-1)
-- @param A (number) Alpha transparency percentage (0-1)
-- Default Constructor
function Color.new(R, G, B, A) end

-- @property R (number) Red color percentage (0-1)
-- @property G (number) Green color percentage (0-1)
-- @property B (number) Blue color percentage (0-1)
-- @property A (number) Alpha transparency percentage (0-1)

-- @param includes_black (boolean) Includes blacks in the scope
-- @return Color Random color from Color Palette
-- Returns a random color from Color Palette
function Color:RandomPalette(includes_black) end

-- @return Color Random color from all color scope
-- Returns a random color from all color scope
function Color:Random() end

-- @param r (number) Red
-- @param g (number) Green
-- @param b (number) Blue
-- @param a (number) Alpha
-- @return Color Final Color
-- Returns the color from 0-255 range values
function Color:FromRGBA(r, g, b, a) end

-- @param c (number) Cyan
-- @param y (number) Yellow
-- @param m (number) Magenta
-- @param k (number) Black
-- @param a (number) Alpha
-- @return Color Final Color
-- Returns a color from the CYMK format
function Color:FromCYMK(c, y, m, k, a) end

-- @param h (number) Hue
-- @param s (number) Saturation
-- @param l (number) Lightness
-- @return Color Final Color
-- Returns a color from the HSL format
function Color:FromHSL(h, s, l) end

-- @param h (number) Hue
-- @param s (number) Saturation
-- @param v (number) Value
-- @return Color Final Color
-- Returns a color from the HSV format
function Color:FromHSV(h, s, v) end

-- @param hex (string) Hexadecimal
-- @return Color Final Color
-- Returns a color from the Hexadecimal format
function Color:FromHEX(hex) end

