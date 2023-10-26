-- Debug static class
-- Draws Debug shapes in the world.
Debug = {}

-- @param location (Vector) 
-- @param extent (Vector) 
-- @param rotation (Rotator) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug box in the world
function Debug:DrawBox(location, extent, rotation, color, life_time, thickness) end

-- @param location (Vector) 
-- @param rotation (Rotator) 
-- @param size (float) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug coordinate system in the world
function Debug:DrawCoordinateSystem(location, rotation, size, life_time, thickness) end

-- @param location (Vector) 
-- @param rotation (Rotator) 
-- @param size (float) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug crosshair in the world
function Debug:DrawCrosshairs(location, rotation, size, color, life_time, thickness) end

-- @param start_location (Vector) 
-- @param end_location (Vector) 
-- @param radius (float) 
-- @param segments (integer) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug cylinder in the world
function Debug:DrawCylinder(start_location, end_location, radius, segments, color, life_time, thickness) end

-- @param start_location (Vector) 
-- @param end_location (Vector) 
-- @param arrow_size (float) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug directional arrow in the world
function Debug:DrawDirectionalArrow(start_location, end_location, arrow_size, color, life_time, thickness) end

-- @param start_position (Vector) 
-- @param end_position (Vector) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug Line in the World
function Debug:DrawLine(start_position, end_position, color, life_time, thickness) end

-- @param start_position (Vector) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param size (float) 
-- Draws a Debug Point in the World
function Debug:DrawPoint(start_position, color, life_time, size) end

-- @param start_location (Vector) 
-- @param radius (float) 
-- @param segments (integer) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param thickness (float) 
-- Draws a Debug sphere in the World
function Debug:DrawSphere(start_location, radius, segments, color, life_time, thickness) end

-- @param location (Vector) 
-- @param text (string) 
-- @param color (Color) 
-- @param life_time (float) 
-- @param draw_shadow (boolean) 
-- @param font_scale (float) 
-- Draws a Debug string in the world
function Debug:DrawString(location, text, color, life_time, draw_shadow, font_scale) end

