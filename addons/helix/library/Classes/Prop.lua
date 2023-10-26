-- Prop class
-- A Prop represents a Dynamic Mesh which can be spawned in the world, can be grabbed around by characters and have physics.
Prop = {}

-- Prop functions
-- @param grab_mode (GrabMode) If the Prop will be able to be grabbable or not. Set to Auto to automatically define based on Prop's size.
-- Sets ability to Characters to Grab this Prop
function Prop:SetGrabMode(grab_mode) end

-- @param linear_damping (float) 
-- @param angular_damping (float) 
-- Sets the Physics damping of this Prop
function Prop:SetPhysicsDamping(linear_damping, angular_damping) end

-- @return StaticMeshPath asset
-- Changes the mesh in runtime
function Prop:SetMesh() end

-- @return string asset name
-- Gets the Asset name
function Prop:GetMesh() end

-- @return Character? the character that holds the object
-- Gets the Character (if existing) which is holding this
function Prop:GetHandler() end

-- @return GrabMode 
-- Gets ability to Grab this Prop
function Prop:GetGrabMode() end

-- Prop events
-- @param self (Prop)
-- @param character (Character)
-- Triggered when Character grabs a Prop
Prop.Grab = function(self, character) end

-- @param self (Prop)
-- @param impact_force (float)
-- @param normal_impulse (Vector)
-- @param impact_location (Vector)
-- @param velocity (Vector)
-- Triggered when this Prop hits something
Prop.Hit = function(self, impact_force, normal_impulse, impact_location, velocity) end

-- @param self (Prop)
-- @param character (Character)
-- When a Character interacts with this Prop (i.e. try to Grab it)
Prop.Interact = function(self, character) end

-- @param self (Prop)
-- @param damage (integer)
-- @param bone (string)
-- @param type (DamageType)
-- @param from_direction (Vector)
-- @param instigator (Player?)
-- @param causer (Actor?)
-- When Prop takes Damage
Prop.TakeDamage = function(self, damage, bone, type, from_direction, instigator, causer) end

-- @param self (Prop)
-- @param character (Character)
-- Triggered when this Prop is ungrabbed
Prop.UnGrab = function(self, character) end

