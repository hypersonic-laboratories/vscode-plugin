-- TextRender class
-- A Text Render class is useful for spawning Texts in 3D world, you can even attach it to other entities.
TextRender = {}

-- TextRender functions
-- @param color (Color) 
-- Sets the Color
function TextRender:SetColor(color) end

-- @param font_type (FontType) 
-- Sets the Font
function TextRender:SetFont(font_type) end

-- @param freeze (boolean) 
-- Freeze mesh rebuild, to avoid unnecessary mesh rebuilds when setting a few properties together
function TextRender:SetFreeze(freeze) end

-- @param extrude (float) 
-- @param level (float) 
-- @param bevel_type (TextRenderBevelType) 
-- @param bevel_segments (integer) 
-- @param outline (boolean) 
-- Sets the Glyph representation settings to generate the 3D Mesh for this text render
function TextRender:SetGlyphSettings(extrude, level, bevel_type, bevel_segments, outline) end

-- @param max_width (integer) 
-- @param max_height (integer) 
-- @param scale_proportionally (boolean) 
-- Sets the Max Size of the TextRender, optionally scaling it proportionally
function TextRender:SetMaxSize(max_width, max_height, scale_proportionally) end

-- @param text (string) 
-- Sets the Text
function TextRender:SetText(text) end

-- @param kerning (float) 
-- @param line_spacing (float) 
-- @param word_spacing (float) 
-- @param horizontal_alignment (TextRenderHorizontalAlignment) 
-- @param vertical_alignment (TextRenderVerticalAlignment) 
-- Sets the Text & Font settings for this text render
function TextRender:SetTextSettings(kerning, line_spacing, word_spacing, horizontal_alignment, vertical_alignment) end

-- TextRender events
