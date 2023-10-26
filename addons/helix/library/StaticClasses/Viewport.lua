-- Viewport static class
-- Work with screen properties and effects.
Viewport = {}

-- @param world_position (Vector) World 3D position
-- @return Vector2D 
-- Transforms a 3D world-space vector into 2D screen coordinates
function Viewport:ProjectWorldToScreen(world_position) end

-- @param screen_position (Vector2D) Screen position
-- @return table 
-- Transforms a 2D screen coordinates into 3D world-space location
function Viewport:DeprojectScreenToWorld(screen_position) end

-- @param cursor_shape (CursorType) 
-- @param cursor_path (ImagePath) a PNG image relative to Assets/
-- @param hotspot (Vector2D) 
-- Loads and sets a hardware cursor in the game from a PNG image
function Viewport:SetHardwareCursor(cursor_shape, cursor_path, hotspot) end

-- @return Vector2D The size of viewport
-- Gets the size of viewport
function Viewport:GetViewportSize() end

-- @param new_position (Vector2D) 
-- Sets the mouse position
function Viewport:SetMousePosition(new_position) end

-- @return Vector2D The current mouse screen location
-- Gets the current mouse screen location
function Viewport:GetMousePosition() end

-- @param is_enabled (boolean) 
-- Enables/Disables the Crosshair
function Viewport:SetCrosshairEnabled(is_enabled) end

-- @param is_enabled (boolean) 
-- Enables/Disables the Blood Screen effect
function Viewport:SetBloodScreenEnabled(is_enabled) end

-- @param intensity (float) From 0.0 to 1.0
-- Manually sets the Blood Screen intensity
function Viewport:SetBloodScreenIntensity(intensity) end

