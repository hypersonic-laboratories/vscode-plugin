-- Character class
-- Characters represents Actors which can be possessed, can move and interact with world. They are the default Skeletal Mesh Character built for HELIX.
Character = {}

-- Character functions
-- @param id (string) Used further for removing or applying material settings on it
-- @param skeletal_mesh_asset (SkeletalMeshPath) 
-- Spawns and Attaches a SkeletalMesh into this Character
function Character:AddSkeletalMeshAttached(id, skeletal_mesh_asset) end

-- @param id (string) Used further for removing or applying material settings on it
-- @param static_mesh_asset (StaticMeshPath) 
-- @param socket (string) 
-- @param relative_location (Vector) 
-- @param relative_rotation (Rotator) 
-- Spawns and Attaches a StaticMesh into this Character
function Character:AddStaticMeshAttached(id, static_mesh_asset, socket, relative_location, relative_rotation) end


-- Drops any Pickable the Character is holding
function Character:Drop() end

-- @param vehicle (Vehicle) 
-- @param seat (integer) 
-- Enters the Vehicle at Seat (0 - Driver)
function Character:EnterVehicle(vehicle, seat) end

-- @param prop (Prop) 
-- Gives a Prop to the Character
function Character:GrabProp(prop) end

-- @param bone_name (string) Bone to hide
-- Hides a bone of this Character
function Character:HideBone(bone_name) end

-- @param bone_name (string) Bone to unhide
-- UnHide a bone of this Character
function Character:UnHideBone(bone_name) end

-- @param bone_name (string) Bone to check
-- @return boolean if the bone is hidden
-- Gets if a bone is hidden
function Character:IsBoneHidden(bone_name) end


-- Triggers this Character to jump
function Character:Jump() end


-- Leaves the current Vehicle
function Character:LeaveVehicle() end

-- @param location (Vector) World location to look
-- AI: Tries to make this Character to look at Location
function Character:LookAt(location) end

-- @param location (Vector) 
-- @param acceptance_radius (float) 
-- AI: Makes this Character to walk to the Location
function Character:MoveTo(location, acceptance_radius) end

-- @param actor (Actor) Actor to follow
-- @param acceptance_radius (float) Radius to consider success
-- @param stop_on_succeed (boolean) Whether to stop when reaching the target
-- @param stop_on_fail (boolean) Whether to stop when failed to reach the target
-- @param update_rate (float) How often to recalculate the AI path
-- AI: Makes this Character to follow another actor
function Character:Follow(actor, acceptance_radius, stop_on_succeed, stop_on_fail, update_rate) end


-- AI: Stops the movement
function Character:StopMovement() end

-- @param pickable (Pickable) 
-- Gives a Melee/Grenade/Weapon (Pickable) to the Character
function Character:PickUp(pickable) end

-- @param animation_path (AnimationPath) 
-- @param slot_type (AnimationSlotType) 
-- @param loop_indefinitely (boolean) 
-- @param blend_in_time (float) 
-- @param blend_out_time (float) 
-- @param play_rate (float) 
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group
-- Plays an Animation Montage on this character
function Character:PlayAnimation(animation_path, slot_type, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @param animation_asset (AnimationPath) 
-- Stops an Animation Montage on this character
function Character:StopAnimation(animation_asset) end

-- @param id (string) 
-- Removes, if existing, a SkeletalMesh from this Character given it's custom ID
function Character:RemoveSkeletalMeshAttached(id) end

-- @param id (string) 
-- Removes, if existing, a StaticMesh from this Character given it's custom ID
function Character:RemoveStaticMeshAttached(id) end


-- Removes all StaticMeshes attached
function Character:RemoveAllStaticMeshesAttached() end


-- Removes all SkeletalMeshes attached
function Character:RemoveAllSkeletalMeshesAttached() end

-- @param blend_space_path (Animation) 
-- @param enable_turn_in_place (boolean) 
-- Sets the Blend Space (2D) Animation for Standing
function Character:SetAnimationIdleWalkRunStanding(blend_space_path, enable_turn_in_place) end

-- @param blend_space_path (Animation) 
-- @param enable_turn_in_place (boolean) 
-- Sets the Blend Space (2D) Animation for Crouching<br/><br/>Horizontal Axis stands for Speed X and Vertical Axis for Speed Y
function Character:SetAnimationIdleWalkRunCrouching(blend_space_path, enable_turn_in_place) end

-- @param blend_space_path (Animation) 
-- Sets the Blend Space (2D) Animation for Proning<br/><br/>Horizontal Axis stands for Speed X and Vertical Axis for Speed Y
function Character:SetAnimationIdleWalkRunProning(blend_space_path) end

-- @param standing_to_crouching (Animation) 
-- @param crouching_to_standing (Animation) 
-- Sets the Transition Animation between Standing and Crouching
function Character:SetAnimationsTransitionStandingCrouching(standing_to_crouching, crouching_to_standing) end

-- @param crouching_to_proning (Animation) 
-- @param pronng_to_crouching (Animation) 
-- Sets the Transition Animation between Crouching and Proning
function Character:SetAnimationsTransitionCrouchingProning(crouching_to_proning, pronng_to_crouching) end

-- @param walking (integer) 
-- @param parachuting (integer) 
-- @param skydiving (integer) 
-- @param falling (integer) 
-- @param swimming (integer) 
-- @param swimming_surface (integer) 
-- @param flying (integer) 
-- Sets the Movement Max Acceleration of this Character
function Character:SetAccelerationSettings(walking, parachuting, skydiving, falling, swimming, swimming_surface, flying) end

-- @param ground_friction (float) 
-- @param braking_friction_factor (float) 
-- @param braking_walking (integer) 
-- @param braking_flying (integer) 
-- @param braking_swimming (integer) 
-- @param braking_falling (integer) 
-- Sets the Movement Braking Settings of this Character
function Character:SetBrakingSettings(ground_friction, braking_friction_factor, braking_walking, braking_flying, braking_swimming, braking_falling) end

-- @param camera_mode (CameraMode) 
-- Sets the Camera Mode
function Character:SetCameraMode(camera_mode) end

-- @param camera_offset (Vector) 
-- Sets the Camera Offset (only affects TPS)
function Character:SetCameraOffset(camera_offset) end

-- @param can_crouch (boolean) 
-- Sets if this Character is allowed to Crouch and to Prone
function Character:SetCanCrouch(can_crouch) end

-- @param can_aim (boolean) 
-- Sets if this Character is allowed to Aim
function Character:SetCanAim(can_aim) end

-- @param can_drop (boolean) 
-- Sets if this Character is allowed to Drop the Picked up item
function Character:SetCanDrop(can_drop) end

-- @param can_jump (boolean) 
-- Sets if this Character is allowed to Jump
function Character:SetCanJump(can_jump) end

-- @param can_dive (boolean) 
-- Sets if this Character is allowed to Dive
function Character:SetCanDive(can_dive) end

-- @param can_sprint (boolean) 
-- Sets if this Character is allowed to Sprint
function Character:SetCanSprint(can_sprint) end

-- @param can_grab_props (boolean) 
-- Sets if this Character is allowed to Grab any Prop
function Character:SetCanGrabProps(can_grab_props) end

-- @param can_pickup (boolean) 
-- Sets if this Character is allowed to Pick up any Pickable (Weapon, Grenade, Melee...)
function Character:SetCanPickupPickables(can_pickup) end

-- @param can_punch (boolean) 
-- Sets if this Character is allowed to Punch
function Character:SetCanPunch(can_punch) end

-- @param can_deploy_parachute (boolean) 
-- Sets if this Character is allowed to deploy the Parachute
function Character:SetCanDeployParachute(can_deploy_parachute) end

-- @param radius (integer) Default is 42
-- @param half_height (integer) Default is 96
-- Sets this Character's Capsule size
function Character:SetCapsuleSize(radius, half_height) end

-- @param bone_name (string) 
-- @param multiplier (float) 
-- Changes how much damage this character takes on specific bones
function Character:SetDamageMultiplier(bone_name, multiplier) end

-- @param sound_asset (string) 
-- Changes the Death sound when Character dies
function Character:SetDeathSound(sound_asset) end

-- @param damage (integer) Default is 10
-- Set the Fall Damage multiplier taken when falling from High places
function Character:SetFallDamageTaken(damage) end

-- @param flying_mode (boolean) 
-- Sets the Flying Mode
function Character:SetFlyingMode(flying_mode) end

-- @param multiplier (float) 
-- Sets the Field of View multiplier
function Character:SetFOVMultiplier(multiplier) end

-- @param time (float) Default is 1 second
-- Sets time to transition to HighFalling state
function Character:SetHighFallingTime(time) end

-- @param mode (GaitMode) 
-- Sets the Gait Mode
function Character:SetGaitMode(mode) end

-- @param scale (float) 
-- Changes the Gravity Scale
function Character:SetGravityScale(scale) end

-- @param damage (integer) Default is 10
-- Set the Impact Damage taken when being roamed by things
function Character:SetImpactDamageTaken(damage) end

-- @param damage (integer) Default is 50
-- Set the minimum radial damage (e.g. explosions) taken to enter in ragdoll mode
function Character:SetRadialDamageToRagdoll(damage) end

-- @param volume_multiplier (float) 
-- Set the Footstep Volume multiplier
function Character:SetFootstepVolumeMultiplier(volume_multiplier) end

-- @param is_invulnerable (boolean) 
-- Sets if the Character can receive any damage
function Character:SetInvulnerable(is_invulnerable) end

-- @param velocity (integer) Default is 450
-- Sets the velocity of the jump
function Character:SetJumpZVelocity(velocity) end

-- @param skeletal_mesh_asset (SkeletalMeshPath) 
-- Changes the Character Mesh on the fly
function Character:SetMesh(skeletal_mesh_asset) end

-- @param name (string) Morph Target Name
-- @param value (float) 
-- Set Morph Target with Name and Value
function Character:SetMorphTarget(name, value) end

-- @param name (string) Morph Target Name
-- @return float value of the Morph Target
-- Returns the value of a Morph Target
function Character:GetMorphTarget(name) end


-- Clear all Morph Target that are set to this Mesh
function Character:ClearMorphTargets() end

-- @return string[] table with all morph targets available
-- Returns a table with all morph targets available
function Character:GetAllMorphTargetNames() end

-- @param bone (string) The body we will be driving
-- @param include_self (boolean) Whether to modify the given body
-- @param is_local_simulation (boolean) Whether the drive targets are in world space or local
-- @param orientation_strength (float) The strength used to correct orientation error
-- @param angular_velocity_strength (float) The strength used to correct angular velocity error
-- @param position_strength (float) The strength used to correct linear position error. Only used for non-local simulation
-- @param velocity_strength (float) The strength used to correct linear velocity error. Only used for non-local simulation
-- @param max_linear_force (float) The max force used to correct linear errors
-- @param max_angular_force (float) The max force used to correct angular errors
-- Applies the physical animation settings to the body given
function Character:SetPhysicalAnimationSettings(bone, include_self, is_local_simulation, orientation_strength, angular_velocity_strength, position_strength, velocity_strength, max_linear_force, max_angular_force) end


-- Resets all Physical Animation settings
function Character:ResetPhysicalAnimationSettings() end

-- @param is_enabled (boolean) 
-- Enables/Disables Character's Input
function Character:SetInputEnabled(is_enabled) end

-- @param texture (ImagePath) 
-- Changes the Parachute Texture
function Character:SetParachuteTexture(texture) end

-- @param sound_asset (SoundPath) 
-- Changes the Pain sound when Character takes damage
function Character:SetPainSound(sound_asset) end

-- @param damage (integer) Default is 15
-- Set the Punch Damage this Character will apply on others
function Character:SetPunchDamage(damage) end

-- @param ragdoll_enabled (boolean) 
-- Sets Character Ragdoll Mode
function Character:SetRagdollMode(ragdoll_enabled) end

-- @param simulate_physics (boolean) 
-- Sets the Character Capsule to simulate physics
function Character:SetSimulatePhysics(simulate_physics) end

-- @param multiplier (float) 1 is normal
-- Sets all speed multiplier
function Character:SetSpeedMultiplier(multiplier) end

-- @param mode (StanceMode) 
-- Sets the Stance Mode
function Character:SetStanceMode(mode) end

-- @param team (integer) 0 is neutral and default
-- Sets a Team which will disable damaging same Team Members
function Character:SetTeam(team) end

-- @param view_mode (ViewMode) 
-- Sets the View Mode
function Character:SetViewMode(view_mode) end

-- @param aim_mode (AimMode) 
-- Sets the Weapon's Aim Mode
function Character:SetWeaponAimMode(aim_mode) end


-- UnGrabs/Drops the Prop the Character is holding
function Character:UnGrabProp() end

-- @return boolean 
-- Gets if Character is in ragdoll mode
function Character:IsInRagdollMode() end

-- @return boolean 
-- Gets if is invulnerable
function Character:IsInvulnerable() end

-- @return boolean 
-- Gets if has input enabled
function Character:IsInputEnabled() end

-- @return CameraMode 
-- Gets the camera mode
function Character:GetCameraMode() end

-- @return boolean 
-- Gets if can drop
function Character:GetCanDrop() end

-- @return boolean 
-- Gets if can punch
function Character:GetCanPunch() end

-- @return boolean 
-- Gets if can aim
function Character:GetCanAim() end

-- @return boolean 
-- Gets if can crouch
function Character:GetCanCrouch() end

-- @return boolean 
-- Gets if can sprint
function Character:GetCanSprint() end

-- @return boolean 
-- Gets if can grab props
function Character:GetCanGrabProps() end

-- @return boolean 
-- Gets if can pickup Pickables (Weapons, Melee, Grenade...)
function Character:GetCanPickupPickables() end

-- @return table 
-- Gets the Capsule Size
function Character:GetCapsuleSize() end

-- @param bone_name (string) 
-- @return table 
-- Gets a Bone Transform in world space given a bone name
function Character:GetBoneTransform(bone_name) end

-- @return Rotator 
-- Gets the Control Rotation
function Character:GetControlRotation() end

-- @param bone_name (string) 
-- @return float the damage multiplier of the bone
-- Gets the Damage Multiplier of a bone
function Character:GetDamageMultiplier(bone_name) end

-- @return integer 
-- Gets the Fall Damage
function Character:GetFallDamageTaken() end

-- @return FallingMode 
-- Gets the FallingMode
function Character:GetFallingMode() end

-- @return boolean 
-- Gets if it's in Flying mode
function Character:GetFlyingMode() end

-- @return GaitMode 
-- Gets the GaitMode
function Character:GetGaitMode() end

-- @return Prop? 
-- Gets the Grabbed Prop
function Character:GetGrabbedProp() end

-- @return float 
-- Gets the gravity scale
function Character:GetGravityScale() end

-- @return integer 
-- Gets the impact damage taken
function Character:GetImpactDamageTaken() end

-- @return integer 
-- Gets the Jump Z Velocity
function Character:GetJumpZVelocity() end

-- @return SkeletalMeshPath 
-- Gets the Skeletal Mesh Asset
function Character:GetMesh() end

-- @return Vector the moving to location or Vector(0, 0, 0) if not moving
-- Gets the Moving To location
function Character:GetMovingTo() end

-- @return Pickable? 
-- Gets the Pickable if picking up
function Character:GetPicked() end

-- @return Player? 
-- Gets the possessing Player
function Character:GetPlayer() end

-- @return integer 
-- Gets the punch damage
function Character:GetPunchDamage() end

-- @return float 
-- Gets the speed multiplier
function Character:GetSpeedMultiplier() end

-- @return StanceMode 
-- Gets the Stance Mode
function Character:GetStanceMode() end

-- @return SwimmingMode 
-- Gets the Swimming Mode
function Character:GetSwimmingMode() end

-- @return integer 
-- Gets the Team
function Character:GetTeam() end

-- @return Vehicle? 
-- Gets the entered Vehicle
function Character:GetVehicle() end

-- @return ViewMode 
-- Gets the View Mode
function Character:GetViewMode() end

-- @return AimMode 
-- Gets the Weapon Aim Mode
function Character:GetWeaponAimMode() end

-- Character events
-- @param self (Character)
-- @param notify_name (string)
-- When an Animation Montage Notify begins
Character.AnimationBeginNotify = function(self, notify_name) end

-- @param self (Character)
-- @param notify_name (string)
-- When an Animation Montage Notify ends
Character.AnimationEndNotify = function(self, notify_name) end

-- @param self (Character)
-- @param melee (Melee)
-- Triggered when the Character effectively attacks with a Melee
Character.Attack = function(self, melee) end

-- @param self (Character)
-- @param object (Pickable)
-- @param triggered_by_player (boolean)
-- When Character drops the currently picked up Pickable
Character.Drop = function(self, object, triggered_by_player) end

-- @param self (Character)
-- @param vehicle (Vehicle)
-- @param seat_index (integer)
-- When Character enters a vehicle
Character.EnterVehicle = function(self, vehicle, seat_index) end

-- @param self (Character)
-- @param vehicle (Vehicle)
-- @param seat_index (integer)
-- Triggered when a Character attempts to enter a vehicle
Character.AttemptEnterVehicle = function(self, vehicle, seat_index) end

-- @param self (Character)
-- @param old_state (FallingMode)
-- @param new_state (FallingMode)
-- Called when FallingMode changes
Character.FallingModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param weapon (Weapon)
-- When Character fires a Weapon
Character.Fire = function(self, weapon) end

-- @param self (Character)
-- @param old_state (GaitMode)
-- @param new_state (GaitMode)
-- Called when GaitMode changes
Character.GaitModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param prop (Prop)
-- When Character grabs up a Prop
Character.GrabProp = function(self, prop) end

-- @param self (Character)
-- @param is_highlighted (boolean)
-- @param object (Prop|Pickable)
-- When Character highlights/looks at a Prop or a Pickable
Character.Highlight = function(self, is_highlighted, object) end

-- @param self (Character)
-- @param object (Prop|Pickable)
-- Triggered when a Character interacts with a Prop or Pickable
Character.Interact = function(self, object) end

-- @param self (Character)
-- @param vehicle (Vehicle)
-- When Character leaves a vehicle
Character.LeaveVehicle = function(self, vehicle) end

-- @param self (Character)
-- @param vehicle (Vehicle)
-- Triggered when this Character attempts to leave a vehicle
Character.AttemptLeaveVehicle = function(self, vehicle) end

-- @param self (Character)
-- @param succeeded (boolean)
-- Called when AI reaches it's destination, or when it fails
Character.MoveComplete = function(self, succeeded) end

-- @param self (Character)
-- @param object (Pickable)
-- When Character picks up anything
Character.PickUp = function(self, object) end

-- @param self (Character)
-- @param possesser (Player)
-- When Character is possessed
Character.Possess = function(self, possesser) end

-- @param self (Character)
-- When Character punches
Character.Punch = function(self) end

-- @param self (Character)
-- @param old_state (boolean)
-- @param new_state (boolean)
-- When Character enters or leaves ragdoll
Character.RagdollModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param weapon (Weapon)
-- Triggered when this Character attempts to reload
Character.AttemptReload = function(self, weapon) end

-- @param self (Character)
-- @param weapon (Weapon)
-- @param ammo_to_reload (integer)
-- When Character reloads a weapon
Character.Reload = function(self, weapon, ammo_to_reload) end

-- @param self (Character)
-- @param old_state (StanceMode)
-- @param new_state (StanceMode)
-- Called when StanceMode changes
Character.StanceModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param old_state (SwimmingMode)
-- @param new_state (SwimmingMode)
-- Called when Swimming Mode changes
Character.SwimmingModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param prop (Prop)
-- When Character drops a Prop
Character.UnGrabProp = function(self, prop) end

-- @param self (Character)
-- @param old_possesser (Player)
-- When Character is unpossessed
Character.UnPossess = function(self, old_possesser) end

-- @param self (Character)
-- @param old_state (ViewMode)
-- @param new_state (ViewMode)
-- When Character changes it's View Mode
Character.ViewModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param old_state (AimMode)
-- @param new_state (AimMode)
-- Called when Weapon Aim Mode changes
Character.WeaponAimModeChange = function(self, old_state, new_state) end

-- @param self (Character)
-- @param pickable (Pickable)
-- Triggered when a Character presses the use button for a Pickable (i.e. clicks left mouse button with this equipped)
Character.PullUse = function(self, pickable) end

-- @param self (Character)
-- @param pickable (Pickable)
-- Triggered when a Character releases the use button for a Pickable (i.e. releases left mouse button with this equipped)
Character.ReleaseUse = function(self, pickable) end

