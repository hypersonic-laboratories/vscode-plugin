-- Actor class
-- An <b>Actor</b> is an object which can be spawned and destroyed through Lua.<br>Actors support 3D transformations such as translation (location), rotation, and scale.<br><br>An <b>Actor</b> is the base for several entities, and all those entities share the same <b>Methods</b> and <b>Events</b> described in this page.
Actor = {}

-- Actor functions
-- @param force (Vector) 
-- @param velocity_change (boolean) Whether to ignore mass
-- Applies a force in world world to this Actor
function Actor:AddImpulse(force, velocity_change) end

-- @param other (Actor) Other actor to attach
-- @param attachment_rule (AttachmentRule) How to attach
-- @param bone_name (string) Which bone to attach to
-- @param lifespan_when_detached (float) Seconds before destroying this Actor when detached
-- @param use_absolute_rotation (boolean) Whether to force attached object to use absolute rotation (will not follow parent)
-- Attaches this Actor to any other Actor, optionally at a specific bone
function Actor:AttachTo(other, attachment_rule, bone_name, lifespan_when_detached, use_absolute_rotation) end


-- Detaches this Actor from AttachedTo Actor
function Actor:Detach() end

-- @param collision_type (CollisionType) 
-- Sets this Actor's collision type
function Actor:SetCollision(collision_type) end

-- @param dimension (integer) 
-- Sets this Actor's Dimension
function Actor:SetDimension(dimension) end

-- @param force (Vector) 
-- @param is_local (boolean) Whether to apply the force in local space
-- Adds a permanent force to this Actor, set to Vector(0, 0, 0) to cancel
function Actor:SetForce(force, is_local) end

-- @param is_enabled (boolean) 
-- Sets whether gravity is enabled on this Actor
function Actor:SetGravityEnabled(is_enabled) end

-- @param is_visible (boolean) 
-- Sets whether the actor is visible or not
function Actor:SetVisibility(is_visible) end

-- @param is_enabled (boolean) 
-- @param index (integer) Index to use (should be <code>0</code>, <code>1</code or <code>2</code>)
-- Sets whether the highlight is enabled on this Actor, and which highlight index to use
function Actor:SetHighlightEnabled(is_enabled, index) end

-- @param is_enabled (boolean) 
-- @param index (integer) Index to use (should be <code>0</code>, <code>1</code> or <code>2</code>)
-- Sets whether the outline is enabled on this Actor, and which outline index to use
function Actor:SetOutlineEnabled(is_enabled, index) end

-- @param seconds (float) Seconds before being destroyed
-- Sets the time (in seconds) before this Actor is destroyed. After this time has passed, the actor will be automatically destroyed.
function Actor:SetLifeSpan(seconds) end

-- @param location (Vector) 
-- Sets this Actor's location in the game world
function Actor:SetLocation(location) end

-- @param rotation (Rotator) 
-- Sets this Actor's rotation in the game world
function Actor:SetRotation(rotation) end

-- @param relative_location (Vector) 
-- Sets this Actor's relative location in local space (only if this actor is attached)
function Actor:SetRelativeLocation(relative_location) end

-- @param relative_rotation (Rotator) 
-- Sets this Actor's relative rotation in local space (only if this actor is attached)
function Actor:SetRelativeRotation(relative_rotation) end

-- @param scale (Vector) 
-- Sets this Actor's scale
function Actor:SetScale(scale) end

-- @param player (Player) New player which will assume the Network Authority of this Actor
-- Sets the Player to have network authority over this Actor
function Actor:SetNetworkAuthority(player) end

-- @param auto_distribute (boolean) If this Actor will be auto network distributed
-- Sets if this Actor will auto distribute the network authority between players
function Actor:SetNetworkAuthorityAutoDistributed(auto_distribute) end

-- @param location (Vector) 
-- @param time (float) Time to interpolate from current location to target location
-- @param exp (float) Exponent used to smooth interpolation. Use <code>0</code> for linear movement
-- Smoothly moves this actor to a location over a certain time
function Actor:TranslateTo(location, time, exp) end

-- @param rotation (Rotator) 
-- @param time (float) Time to interpolate from current location to target location
-- @param exp (float) Exponent used to smooth interpolation. Use <code>0</code> for linear movement
-- Smoothly rotates this actor to an angle over a certain time
function Actor:RotateTo(rotation, time, exp) end

-- @return boolean 
-- Returns true if this Actor is being destroyed
function Actor:IsBeingDestroyed() end

-- @return boolean 
-- Returns true if this Actor is visible
function Actor:IsVisible() end

-- @return boolean 
-- Returns true if gravity is enabled on this Actor
function Actor:IsGravityEnabled() end

-- @return boolean 
-- Returns true if this Actor is in water
function Actor:IsInWater() end

-- @return boolean 
-- Returns true if this Actor is currently network distributed
function Actor:IsNetworkDistributed() end

-- @return Actor[] 
-- Gets all Actors attached to this Actor
function Actor:GetAttachedEntities() end

-- @return Actor? 
-- Gets the Actor this Actor is attached to
function Actor:GetAttachedTo() end

-- @return table 
-- Gets this Actor's bounds
function Actor:GetBounds() end

-- @return CollisionType 
-- Gets this Actor's collision type
function Actor:GetCollision() end

-- @return Vector 
-- Gets this Actor's location in the game world
function Actor:GetLocation() end

-- @return Vector 
-- Gets this Actor's Relative Location if it's attached
function Actor:GetRelativeLocation() end

-- @return Player? 
-- Gets this Actor's Network Authority Player
function Actor:GetNetworkAuthority() end

-- @return Rotator 
-- Gets this Actor's angle in the game world
function Actor:GetRotation() end

-- @return Rotator 
-- Gets this Actor's Relative Rotation if it's attached
function Actor:GetRelativeRotation() end

-- @return Vector 
-- Gets this Actor's force (set by <code>SetForce()</code>)
function Actor:GetForce() end

-- @return integer 
-- Gets this Actor's dimension
function Actor:GetDimension() end

-- @return boolean 
-- Returns true if the local Player is currently the Network Authority of this Actor
function Actor:HasNetworkAuthority() end

-- @return boolean false if it was spawned by the Server or true if it was spawned by the client
-- Gets if this Actor was spawned by the client side
function Actor:HasAuthority() end

-- @return Vector 
-- Gets this Actor's scale
function Actor:GetScale() end

-- @return Vector 
-- Gets this Actor's current velocity
function Actor:GetVelocity() end

-- @param tag (string) 
-- Adds an Unreal Actor Tag to this Actor
function Actor:AddActorTag(tag) end

-- @param tag (string) 
-- Removes an Unreal Actor Tag from this Actor
function Actor:RemoveActorTag(tag) end

-- @return string[] 
-- Gets all Unreal Actor Tags on this Actor
function Actor:GetActorTags() end

-- @return boolean 
-- Gets if this Actor was recently rendered on screen
function Actor:WasRecentlyRendered() end

-- @return float 
-- Gets the distance of this Actor from the Camera
function Actor:GetDistanceFromCamera() end

-- @return float 
-- Gets the percentage of this Actor size in the screen
function Actor:GetScreenPercentage() end

-- Actor events
-- @param self (Actor)
-- @param old_dimension (integer)
-- @param new_dimension (integer)
-- Triggered when an Actor changes it's dimension
Actor.DimensionChange = function(self, old_dimension, new_dimension) end

