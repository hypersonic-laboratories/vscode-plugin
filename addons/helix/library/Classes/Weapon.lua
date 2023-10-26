-- Weapon class
-- Weapons are entities with firing, reloading and aiming functionalities.<br/><br/>They are fully customizable, all pieces of the weapon can be changed with immense possibility of creation.
Weapon = {}

-- Weapon functions

-- Forces this Weapon to reload
function Weapon:Reload() end

-- @param new_ammo (integer) 
-- Sets this Weapon's Ammo in the Bag
function Weapon:SetAmmoBag(new_ammo) end

-- @param new_ammo (integer) 
-- Sets this Weapon's Ammo in the Clip
function Weapon:SetAmmoClip(new_ammo) end

-- @param ammo_clip (integer) 
-- @param ammo_bag (integer) 
-- @param ammo_to_reload (integer) 
-- @param clip_capacity (integer) 
-- Aux for setting and configuring ammo
function Weapon:SetAmmoSettings(ammo_clip, ammo_bag, ammo_to_reload, clip_capacity) end

-- @param animation_asset_path (AnimationPath) 
-- @param play_rate (float) 
-- Animation played by the Weapon when Firing
function Weapon:SetAnimationFire(animation_asset_path, play_rate) end

-- @param animation_path (AnimationPath) 
-- @param play_rate (float) 
-- Animation played by the Character when Firing
function Weapon:SetAnimationCharacterFire(animation_path, play_rate) end

-- @param animation_path (AnimationPath) 
-- @param play_rate (float) 
-- Animation played by the Character when Reloading
function Weapon:SetAnimationReload(animation_path, play_rate) end

-- @return AnimationPath 
-- Gets the reload animation
function Weapon:GetAnimationReload() end

-- @param auto_reload (boolean) 
-- If the Character will reload automatically when ammo empties
function Weapon:SetAutoReload(auto_reload) end

-- @param color (Color) 
-- Set the Bullet Color
function Weapon:SetBulletColor(color) end

-- @param auto_reload (boolean) 
-- Sets if the Weapon auto reloads when ammo empties
function Weapon:SetAutoReload(auto_reload) end

-- @param bullet_count (integer) 1 for common weapons<br/>> 1 for shotguns
-- @param bullet_max_distance (integer) 
-- @param bullet_velocity (integer) Visuals only
-- @param bullet_color (Color) 
-- Aux for setting and configuring the Bullet
function Weapon:SetBulletSettings(bullet_count, bullet_max_distance, bullet_velocity, bullet_color) end

-- @param cadence (float) 1 shot at each <code>cadence</code> second
-- Speed of shots
function Weapon:SetCadence(cadence) end

-- @param clip (integer) 
-- Capacity of the Weapon's clip
function Weapon:SetClipCapacity(clip) end

-- @param damage (integer) 
-- Set the Base Weapon's Damage
function Weapon:SetDamage(damage) end

-- @param mode (HandlingMode) 
-- Sets how the Character grabs this Weapon
function Weapon:SetHandlingMode(mode) end

-- @param location (Vector) 
-- @param rotation (Rotator) 
-- Left Hand Offset
function Weapon:SetLeftHandTransform(location, rotation) end

-- @param static_mesh_asset_path (StaticMeshPath) 
-- @param magazine_mesh_hide_bone (string) Weapon bone to hide when reloading it
-- Set the mesh used when the Character reloads the weapon
function Weapon:SetMagazineMesh(static_mesh_asset_path, magazine_mesh_hide_bone) end

-- @param animation_path (AnimationPath) 
-- @param slot_name (string) 
-- @param loop_indefinitely (boolean) This parameter is only used if the Weapon has an Animation Blueprint
-- @param blend_in_time (float) This parameter is only used if the Weapon has an Animation Blueprint
-- @param blend_out_time (float) This parameter is only used if the Weapon has an Animation Blueprint
-- @param play_rate (float) This parameter is only used if the Weapon has an Animation Blueprint
-- @param stop_all_montages (boolean) Stops all running Montages from the same Group. This parameter is only used if the Weapon has an Animation Blueprint
-- Plays an Animation on this Weapon
function Weapon:PlayAnimation(animation_path, slot_name, loop_indefinitely, blend_in_time, blend_out_time, play_rate, stop_all_montages) end

-- @param particle_asset_path (ParticlePath) 
-- Particle of the Bullet flying
function Weapon:SetParticlesBulletTrail(particle_asset_path) end

-- @param particle_asset_path (ParticlePath) 
-- Particle of the Fire Blast in the muzzle
function Weapon:SetParticlesBarrel(particle_asset_path) end

-- @param particle_asset_path (ParticlePath) 
-- Particle of the empty bullet flying from the weapon when shooting
function Weapon:SetParticlesShells(particle_asset_path) end

-- @param offset (Vector) 
-- Set the offset of Right Hand
function Weapon:SetRightHandOffset(offset) end

-- @param multiplier (float) 
-- The FOV multiplier when ADS
function Weapon:SetSightFOVMultiplier(multiplier) end

-- @param location (Vector) 
-- @param rotation (Rotator) 
-- Offset applied to align player's head to weapon's sight and rotation applied on the weapon when ADS
function Weapon:SetSightTransform(location, rotation) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when weapon has not bullet and try to shoot
function Weapon:SetSoundDry(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when Loading a magazine
function Weapon:SetSoundLoad(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when Unloading a magazine
function Weapon:SetSoundUnload(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when Zooming
function Weapon:SetSoundZooming(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when Shooting
function Weapon:SetSoundFire(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param volume (float) 
-- @param pitch (float) 
-- Sound when Aiming
function Weapon:SetSoundAim(sound_asset_path, volume, pitch) end

-- @param sound_asset_path (SoundPath) 
-- @param remaining_bullets_count (integer) The amount of remaining bullet to start playing this sound
-- Sound when firing with only having X remaining bullets in the magazine
function Weapon:SetSoundFireLastBullets(sound_asset_path, remaining_bullets_count) end

-- @param spread (float) the higher the less precision - recommended value: 20
-- Base Weapon's Spread
function Weapon:SetSpread(spread) end

-- @param recoil (float) 0 means no Recoil, default is 1
-- Base Weapon's Recoil
function Weapon:SetRecoil(recoil) end

-- @param can_hold_use (boolean) 
-- @param hold_release_use (boolean) 
-- Sets if the Weapon can hold to keep firing and if it needs to release to fire
function Weapon:SetUsageSettings(can_hold_use, hold_release_use) end

-- @param max_distance (integer) Max distance to pass through another wall
-- @param damage_multiplier (float) Damage given if wallbangged
-- Sets how the bullet will pass through walls
function Weapon:SetWallbangSettings(max_distance, damage_multiplier) end

-- @return integer 
-- Gets this Weapon's Ammo Bag
function Weapon:GetAmmoBag() end

-- @return integer 
-- Gets this Weapon's Ammo Clip
function Weapon:GetAmmoClip() end

-- @return integer 
-- 
function Weapon:GetAmmoToReload() end

-- @return HandlingMode 
-- 
function Weapon:GetHandlingMode() end

-- @return AnimationPath 
-- 
function Weapon:GetAnimationCharacterFire() end

-- @return AnimationPath 
-- 
function Weapon:GetAnimationFire() end

-- @return StaticMeshPath 
-- 
function Weapon:GetMagazineMesh() end

-- @return ParticlePath 
-- 
function Weapon:GetParticlesBulletTrail() end

-- @return ParticlePath 
-- 
function Weapon:GetParticlesShells() end

-- @return SoundPath 
-- 
function Weapon:GetSoundDry() end

-- @return SoundPath 
-- 
function Weapon:GetSoundLoad() end

-- @return SoundPath 
-- 
function Weapon:GetSoundUnload() end

-- @return SoundPath 
-- 
function Weapon:GetSoundZooming() end

-- @return SoundPath 
-- 
function Weapon:GetSoundAim() end

-- @return SoundPath 
-- 
function Weapon:GetSoundFire() end

-- @return boolean 
-- 
function Weapon:GetCanHoldUse() end

-- @return boolean 
-- 
function Weapon:GetHoldReleaseUse() end

-- @param bone_name (string) 
-- @return table 
-- Gets a Bone Transform in world space given a bone name
function Weapon:GetBoneTransform(bone_name) end

-- @return integer 
-- 
function Weapon:GetBulletCount() end

-- @return Color 
-- 
function Weapon:GetBulletColor() end

-- @return float 
-- 
function Weapon:GetCadence() end

-- @return integer 
-- 
function Weapon:GetClipCapacity() end

-- @return integer 
-- 
function Weapon:GetDamage() end

-- @return Vector 
-- 
function Weapon:GetRightHandOffset() end

-- @return Vector 
-- 
function Weapon:GetLeftHandLocation() end

-- @return Rotator 
-- 
function Weapon:GetLeftHandRotation() end

-- @return Vector 
-- 
function Weapon:GetSightLocation() end

-- @return Rotator 
-- 
function Weapon:GetSightRotation() end

-- @return float 
-- 
function Weapon:GetSightFOVMultiplier() end

-- @return float 
-- 
function Weapon:GetSpread() end

-- @return float 
-- 
function Weapon:GetRecoil() end

-- Weapon events
-- @param self (Weapon)
-- @param shooter (Character)
-- Triggered when Weapon fires (this will be triggered for each shot)
Weapon.Fire = function(self, shooter) end

-- @param self (Weapon)
-- @param character (Character)
-- @param ammo_to_reload (integer)
-- When a Weapon is reloaded, optionally by a Character
Weapon.Reload = function(self, character, ammo_to_reload) end

-- @param self (Weapon)
-- @param old_ammo_clip (integer)
-- @param new_ammo_clip (integer)
-- When the Ammo Clip is changed, by reloading or manually setting through scripting
Weapon.AmmoClipChange = function(self, old_ammo_clip, new_ammo_clip) end

-- @param self (Weapon)
-- @param old_ammo_clip (integer)
-- @param new_ammo_clip (integer)
-- When the Ammo Bag is changed, by reloading or manually setting through scripting
Weapon.AmmoBagChange = function(self, old_ammo_clip, new_ammo_clip) end

