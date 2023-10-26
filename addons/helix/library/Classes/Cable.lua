-- Cable class
-- A Cable represents a Physics Constraint which joins two Actors with a rope-like visual representation between them.
Cable = {}

-- Cable functions
-- @param other (Actor) 
-- @param relative_location (Vector) 
-- @param bone_name (string) 
-- Attached the beginning of this cable to another Actor at a specific bone or relative location
function Cable:AttachStartTo(other, relative_location, bone_name) end

-- @param other (Actor) 
-- @param relative_location (Vector) 
-- @param bone_name (string) 
-- Attached the end of this cable to another Actor at a specific bone or relative location
function Cable:AttachEndTo(other, relative_location, bone_name) end


-- Detaches the End of this Cable
function Cable:DetachEnd() end


-- Detaches the Start of this Cable
function Cable:DetachStart() end

-- @param length (float) Rest length of the cable. Default is 100
-- @param num_segments (integer) How many segments the cable has. Default is 10
-- @param solver_iterations (integer) The number of solver iterations controls how 'stiff' the cable is. Default is 0
-- Set the overall settings for this cable (visuals only)
function Cable:SetCableSettings(length, num_segments, solver_iterations) end

-- @param force (Vector) Force vector (world space) applied to all particles in cable. Default is Vector(0, 0, 0)
-- @param gravity_scale (float) Scaling applied to world gravity affecting this cable. Default is 1
-- Set the forces the cable has applied (visuals only)
function Cable:SetForces(force, gravity_scale) end

-- @param swing_1_motion (ConstraintMotion) Indicates whether the Swing1 limit is used
-- @param swing_2_motion (ConstraintMotion) Indicates whether the Swing2 limit is used
-- @param twist_motion (ConstraintMotion) Indicates whether the Twist limit is used
-- @param swing_1_limit (float) Angle of movement along the XY plane. This defines the first symmetric angle of the cone
-- @param swing_2_limit (float) Angle of movement along the XZ plane. This defines the second symmetric angle of the cone
-- @param twist_limit (float) Symmetric angle of roll along the X-axis
-- Sets the Physics Angular Limits of this cable
function Cable:SetAngularLimits(swing_1_motion, swing_2_motion, twist_motion, swing_1_limit, swing_2_limit, twist_limit) end

-- @param x_motion (ConstraintMotion) Indicates the linear constraint applied along the X-axis. Free implies no constraint at all. Locked implies no movement along X is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
-- @param y_motion (ConstraintMotion) Indicates the linear constraint applied along the Y-axis. Free implies no constraint at all. Locked implies no movement along Y is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
-- @param z_motion (ConstraintMotion) Indicates the linear constraint applied along theZX-axis. Free implies no constraint at all. Locked implies no movement along Z is allowed. Limited implies the distance in the joint along all active axes must be less than the Distance provided
-- @param limit (float) The distance allowed between between the two joint reference frames. Distance applies on all axes enabled (one axis means line, two axes implies circle, three axes implies sphere)
-- @param restitution (float) Controls the amount of bounce when the constraint is violated. A restitution value of 1 will bounce back with the same velocity the limit was hit. A value of 0 will stop dead
-- @param use_soft_constraint (boolean) Whether we want to use a soft constraint (spring)
-- @param stiffness (float) Stiffness of the soft constraint. Only used when Soft Constraint is on
-- @param damping (float) Damping of the soft constraint. Only used when Soft Constraint is on
-- Sets the Physics Linear Limits of this cable
function Cable:SetLinearLimits(x_motion, y_motion, z_motion, limit, restitution, use_soft_constraint, stiffness, damping) end

-- @param width (float) How wide the cable geometry is. Default is 6
-- @param num_sides (integer) Number of sides of the cable geometry. Default is 4
-- @param tile_material (integer) How many times to repeat the material along the length of the cable. Default is 1
-- Set the rendering settings of this cable (visuals only)
function Cable:SetRenderingSettings(width, num_sides, tile_material) end

-- @return Actor the Actor or nil
-- Gets the Actor attached to Start
function Cable:GetAttachedStartTo() end

-- @return Actor the Actor or nil
-- Gets the Actor attached to End
function Cable:GetAttachedEndTo() end

-- Cable events
