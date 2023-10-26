-- HELIXMath static class
-- A table containing useful and aux Math functions.
HELIXMath = {}

-- @param value (number) The number to be rounded
-- @return number the rounded number
-- Rounds a number
function HELIXMath:Round(value) end

-- @param value (number) The number to be clamped
-- @param min (number) The min value
-- @param max (number) The max value
-- @return number the number clamped
-- Clamps a number
function HELIXMath:Clamp(value, min, max) end

-- @param value (number) The number to be clamped
-- @return number the number clamped
-- Clamps an angle to the range of [0, 360]
function HELIXMath:ClampAxis(value) end

-- @param value (number) The number to be clamped
-- @return number the number clamped
-- Clamps an angle to the range of [-180, 180]
function HELIXMath:NormalizeAxis(value) end

-- @param location (Vector) The location of the new system
-- @param rotation (Rotator) The rotation of the new system
-- @param actor (Actor) The actor to be translated to the new system
-- @return Vector the location relative to the actor
-- @return Rotator the rotation relative to the actor
-- Calculates the location and rotation relative to an actor
function HELIXMath:RelativeTo(location, rotation, actor) end

-- @param current (number) 
-- @param target (number) 
-- @param delta_time (number) 
-- @param interp_speed (number) 
-- @return number 
-- Interpolate number from Current to Target
function HELIXMath:FInterpTo(current, target, delta_time, interp_speed) end

-- @param current (Rotator) 
-- @param target (Rotator) 
-- @param delta_time (number) 
-- @param interp_speed (number) 
-- @return Rotator 
-- Interpolate Rotator from Current to Target
function HELIXMath:RInterpTo(current, target, delta_time, interp_speed) end

-- @param current (Rotator) 
-- @param target (Rotator) 
-- @param delta_time (number) 
-- @param interp_speed (number) 
-- @return Rotator 
-- Interpolate Rotator from Current to Target with a constant step
function HELIXMath:RInterpConstantTo(current, target, delta_time, interp_speed) end

-- @param current (Vector) 
-- @param target (Vector) 
-- @param delta_time (number) 
-- @param interp_speed (number) 
-- @return Vector 
-- Interpolate Vector from Current to Target
function HELIXMath:VInterpTo(current, target, delta_time, interp_speed) end

-- @param current (Vector) 
-- @param target (Vector) 
-- @param delta_time (number) 
-- @param interp_speed (number) 
-- @return Vector 
-- Interpolate Vector from Current to Target with a constant step
function HELIXMath:VInterpConstantTo(current, target, delta_time, interp_speed) end

