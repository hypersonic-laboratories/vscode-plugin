-- HELIXCharacter class
-- Characters represents Actors which can be possessed, can move and interact with world. They are the default Skeletal Mesh Character built for HELIX.
HELIXCharacter = {}

-- HELIXCharacter functions
-- @param animation_path (AnimationPath) 
-- @param loop_indefinitely (boolean) 
-- @param slot_name (string) 
-- @param blend_in_time (float) 
-- @param blend_out_time (float) 
-- @param play_rate (float) 
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group
-- Plays an Animation Montage on this character
function HELIXCharacter:PlayAnimation(animation_path, loop_indefinitely, slot_name, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @param animation_asset (AnimationPath) 
-- Stops an Animation Montage on this character
function HELIXCharacter:StopAnimation(animation_asset) end

-- @param mesh_asset (SkeletalMeshPath|StaticMeshPath) 
-- Changes the Character Mesh on the fly
function HELIXCharacter:SetMesh(mesh_asset) end

-- @return SkeletalMeshPath|StaticMeshPath 
-- Gets the Skeletal Mesh Asset
function HELIXCharacter:GetMesh() end

-- @param velocity (integer) Default is 450
-- Sets the velocity of the jump
function HELIXCharacter:SetJumpZVelocity(velocity) end

-- @param radius (integer) Default is 42
-- @param half_height (integer) Default is 96
-- Sets this Character's Capsule size
function HELIXCharacter:SetCapsuleSize(radius, half_height) end

-- @param can_jump (boolean) 
-- Sets if this Character is allowed to Jump
function HELIXCharacter:SetCanJump(can_jump) end

-- @param can_crouch (boolean) 
-- Sets if this Character is allowed to Crouch and to Prone
function HELIXCharacter:SetCanCrouch(can_crouch) end

-- @param ground_friction (float) 
-- @param braking_friction_factor (float) 
-- @param braking_walking (integer) 
-- @param braking_flying (integer) 
-- @param braking_swimming (integer) 
-- @param braking_falling (integer) 
-- Sets the Movement Braking Settings of this Character
function HELIXCharacter:SetBrakingSettings(ground_friction, braking_friction_factor, braking_walking, braking_flying, braking_swimming, braking_falling) end

-- @param scale (float) 
-- Changes the Gravity Scale
function HELIXCharacter:SetGravityScale(scale) end

-- @param walking (integer) 
-- @param parachuting (integer) 
-- @param skydiving (integer) 
-- @param falling (integer) 
-- @param swimming (integer) 
-- @param swimming_surface (integer) 
-- @param flying (integer) 
-- Sets the Movement Max Acceleration of this Character
function HELIXCharacter:SetAccelerationSettings(walking, parachuting, skydiving, falling, swimming, swimming_surface, flying) end

-- @param can_grab_props (boolean) 
-- Sets if this Character is allowed to Grab any Prop
function HELIXCharacter:SetCanGrabProps(can_grab_props) end

-- @param can_pickup (boolean) 
-- Sets if this Character is allowed to Pick up any Pickable (Weapon, Grenade, Melee...)
function HELIXCharacter:SetCanPickupPickables(can_pickup) end

-- @param damage (integer) Default is 50
-- Set the minimum radial damage (e.g. explosions) taken to enter in ragdoll mode
function HELIXCharacter:SetRadialDamageToRagdoll(damage) end

-- @return AimMode 
-- Gets the Weapon Aim Mode
function HELIXCharacter:GetWeaponAimMode() end


-- AI: Stops the movement
function HELIXCharacter:StopMovement() end

-- @param location (Vector) 
-- @param acceptance_radius (float) 
-- AI: Makes this Character to walk to the Location
function HELIXCharacter:MoveTo(location, acceptance_radius) end

-- @param actor (Actor) Actor to follow
-- @param acceptance_radius (float) Radius to consider success
-- @param stop_on_succeed (boolean) Whether to stop when reaching the target
-- @param stop_on_fail (boolean) Whether to stop when failed to reach the target
-- @param update_rate (float) How often to recalculate the AI path
-- AI: Makes this Character to follow another actor
function HELIXCharacter:Follow(actor, acceptance_radius, stop_on_succeed, stop_on_fail, update_rate) end


-- Triggers this Character to jump
function HELIXCharacter:Jump() end


-- When Character enters a vehicle
function HELIXCharacter:EnterVehicle() end


-- When Character leaves a vehicle
function HELIXCharacter:LeaveVehicle() end

-- @param prop (Prop) 
-- Gives a Prop to the Character
function HELIXCharacter:GrabProp(prop) end


-- UnGrabs/Drops the Prop the Character is holding
function HELIXCharacter:UnGrabProp() end


-- When Character picks up anything
function HELIXCharacter:PickUp() end


-- Drops any Pickable the Character is holding
function HELIXCharacter:Drop() end

-- @return Vector the moving to location or Vector(0, 0, 0) if not moving
-- Gets the Moving To location
function HELIXCharacter:GetMovingTo() end

-- @return Rotator 
-- Gets the Control Rotation
function HELIXCharacter:GetControlRotation() end

-- @return integer 
-- Gets the Team
function HELIXCharacter:GetTeam() end

-- @return Player? 
-- Gets the possessing Player
function HELIXCharacter:GetPlayer() end

-- @return Vehicle? 
-- Gets the entered Vehicle
function HELIXCharacter:GetVehicle() end

-- @return Prop? 
-- Gets the Grabbed Prop
function HELIXCharacter:GetGrabbedProp() end

-- @return Pickable? 
-- Gets the Pickable if picking up
function HELIXCharacter:GetPicked() end

-- HELIXCharacter events
