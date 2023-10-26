-- CharacterSimple class
-- CharacterSimple is a simpler Character implementation with basic Movement implementation. Aimed for custom NPCs or basic Pawns.
CharacterSimple = {}

-- CharacterSimple functions
-- @param animation_path (AnimationPath) 
-- @param slot_name (string) 
-- @param loop_indefinitely (boolean) 
-- @param blend_in_time (float) 
-- @param blend_out_time (float) 
-- @param play_rate (float) 
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group
-- Plays an Animation Montage on this character
function CharacterSimple:PlayAnimation(animation_path, slot_name, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @param animation_asset (AnimationPath) 
-- Stops an Animation Montage on this character
function CharacterSimple:StopAnimation(animation_asset) end

-- @param id (string) Used further for removing or applying material settings on it
-- @param skeletal_mesh_asset (SkeletalMeshPath) 
-- Spawns and Attaches a SkeletalMesh into this Character
function CharacterSimple:AddSkeletalMeshAttached(id, skeletal_mesh_asset) end

-- @param id (string) Used further for removing or applying material settings on it
-- @param static_mesh_asset (StaticMeshPath) 
-- @param socket (string) 
-- @param relative_location (Vector) 
-- @param relative_rotation (Rotator) 
-- Spawns and Attaches a StaticMesh into this Character
function CharacterSimple:AddStaticMeshAttached(id, static_mesh_asset, socket, relative_location, relative_rotation) end

-- @param id (string) 
-- Removes, if existing, a SkeletalMesh from this Character given it's custom ID
function CharacterSimple:RemoveSkeletalMeshAttached(id) end

-- @param id (string) 
-- Removes, if existing, a StaticMesh from this Character given it's custom ID
function CharacterSimple:RemoveStaticMeshAttached(id) end


-- Removes all StaticMeshes attached
function CharacterSimple:RemoveAllStaticMeshesAttached() end


-- Removes all SkeletalMeshes attached
function CharacterSimple:RemoveAllSkeletalMeshesAttached() end

-- @param mesh_asset (SkeletalMeshPath|StaticMeshPath) 
-- @param adjust_capsule_size (boolean) Auto adjust the capsule size based on the Mesh size
-- Changes the Character Mesh on the fly
function CharacterSimple:SetMesh(mesh_asset, adjust_capsule_size) end

-- @return SkeletalMeshPath|StaticMeshPath 
-- Gets the Skeletal Mesh Asset
function CharacterSimple:GetMesh() end

-- @return Vector the moving to location or Vector(0, 0, 0) if not moving
-- Gets the Moving To location
function CharacterSimple:GetMovingTo() end

-- @param location (Vector) 
-- @param acceptance_radius (float) 
-- AI: Makes this Character to walk to the Location
function CharacterSimple:MoveTo(location, acceptance_radius) end

-- @param actor (Actor) Actor to follow
-- @param acceptance_radius (float) Radius to consider success
-- @param stop_on_succeed (boolean) Whether to stop when reaching the target
-- @param stop_on_fail (boolean) Whether to stop when failed to reach the target
-- @param update_rate (float) How often to recalculate the AI path
-- AI: Makes this Character to follow another actor
function CharacterSimple:Follow(actor, acceptance_radius, stop_on_succeed, stop_on_fail, update_rate) end


-- AI: Stops the movement
function CharacterSimple:StopMovement() end

-- @return Player? 
-- Gets the possessing Player
function CharacterSimple:GetPlayer() end

-- @return Rotator 
-- Gets the Control Rotation
function CharacterSimple:GetControlRotation() end

-- @param bone_name (string) Bone to hide
-- Hides a bone of this Character
function CharacterSimple:HideBone(bone_name) end

-- @param bone_name (string) Bone to unhide
-- UnHide a bone of this Character
function CharacterSimple:UnHideBone(bone_name) end

-- @param bone_name (string) Bone to check
-- @return boolean if the bone is hidden
-- Gets if a bone is hidden
function CharacterSimple:IsBoneHidden(bone_name) end


-- Triggers this Character to jump
function CharacterSimple:Jump() end

-- @param velocity (integer) Default is 450
-- Sets the velocity of the jump
function CharacterSimple:SetJumpZVelocity(velocity) end

-- @param acceleration (integer) Default is 2048
-- Sets the max acceleration
function CharacterSimple:SetMaxAcceleration(acceleration) end

-- @param radius (integer) Default is 42
-- @param half_height (integer) Default is 96
-- Sets this Character's Capsule size
function CharacterSimple:SetCapsuleSize(radius, half_height) end

-- @param can_jump (boolean) 
-- Sets if this Character is allowed to Jump
function CharacterSimple:SetCanJump(can_jump) end

-- @param can_crouch (boolean) 
-- Sets if this Character is allowed to Crouch and to Prone
function CharacterSimple:SetCanCrouch(can_crouch) end

-- @param ground_friction (float) 
-- @param braking_friction_factor (float) 
-- @param braking_walking (integer) 
-- @param braking_flying (integer) 
-- @param braking_swimming (integer) 
-- @param braking_falling (integer) 
-- Sets the Movement Braking Settings of this Character
function CharacterSimple:SetBrakingSettings(ground_friction, braking_friction_factor, braking_walking, braking_flying, braking_swimming, braking_falling) end

-- @param relative_location (Vector) 
-- @param target_arm_length (float) 
-- @param socket_offset (Vector) 
-- @param enable_camera_lag (boolean) 
-- @param camera_lag_speed (float) 
-- Sets the Spring Arm Settings of this Character
function CharacterSimple:SetSpringArmSettings(relative_location, target_arm_length, socket_offset, enable_camera_lag, camera_lag_speed) end

-- @param rotation_rate (Rotator) 
-- @param use_controller_desired_rotation (boolean) 
-- @param orient_rotation_to_movement (boolean) 
-- Sets the Rotation Settings of this Character
function CharacterSimple:SetRotationSettings(rotation_rate, use_controller_desired_rotation, orient_rotation_to_movement) end

-- @param max_walk_speed (integer) 
-- @param max_walk_speed_crouched (integer) 
-- Sets the Speed Settings of this Character
function CharacterSimple:SetSpeedSettings(max_walk_speed, max_walk_speed_crouched) end

-- @param use_controller_rotation_pitch (boolean) 
-- @param use_controller_rotation_yaw (boolean) 
-- @param use_controller_rotation_roll (boolean) 
-- Sets the Pawn Settings of this Character
function CharacterSimple:SetPawnSettings(use_controller_rotation_pitch, use_controller_rotation_yaw, use_controller_rotation_roll) end

-- @param custom_animation_blueprint (BlueprintPath) 
-- Sets the Animation Blueprint of this Character
function CharacterSimple:SetAnimationBlueprint(custom_animation_blueprint) end

-- CharacterSimple events
-- @param self (CharacterSimple)
-- @param possesser (Player)
-- When Character is possessed
CharacterSimple.Possess = function(self, possesser) end

-- @param self (CharacterSimple)
-- @param old_possesser (Player)
-- When Character is unpossessed
CharacterSimple.UnPossess = function(self, old_possesser) end

