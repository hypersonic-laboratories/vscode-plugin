-- Rotator struct
-- A container for rotation information (Pitch, Yaw, Ro). All rotation values are stored in degrees.
Rotator = {}

-- @param pitch (number) Pitch
-- @param yaw (number) Yaw
-- @param roll (number) Roll
-- Default Constructor
function Rotator.new(pitch, yaw, roll) end

-- @property Pitch (number) Rotation around the right axis (around Y axis), Looking up and down (0=Straight Ahead, +Up, -Down)
-- @property Yaw (number) Rotation around the up axis (around Z axis), Running in circles 0=East, +North, -South.
-- @property Roll (number) Rotation around the forward axis (around X axis), Tilting your head, 0=Straight, +Clockwise, -CCW.

-- @param roll (boolean) Whether to use a random roll in the rotator, otherwise uses 0 for roll
-- @return Rotator the random rotation
-- Generates a random rotation, with optional random roll
function Rotator:Random(roll) end

