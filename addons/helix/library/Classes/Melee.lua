-- Melee class
-- A Melee represents an Entity which can be Pickable by a Character and can be used to melee attack, Charactes can hold it with hands with pre-defined handling modes.
Melee = {}

-- Melee functions
-- @param asset_path (AnimationPath) The Animation used when attacking
-- @param play_rate (float) The Animation Play Rate
-- @param slot_Type (AnimationSlotType) Whether to play it on upper body or full body
-- Sets an Animation when attacking
function Melee:AddAnimationCharacterUse(asset_path, play_rate, slot_Type) end


-- Clears the Character Attack Animation list
function Melee:ClearAnimationsCharacterUse() end

-- @param surface_type (SurfaceType) The surface to apply the sound. Use <code>SurfaceType.Default</code> to be the default to all hits
-- @param asset_path (SoundPath) The Sound used when attacking
-- @param volume (float) 
-- @param pitch (float) 
-- Sets the Sound when hitting something
function Melee:SetImpactSound(surface_type, asset_path, volume, pitch) end

-- @param asset_path (SoundPath) The Sound used when attacking
-- Sets the Sound when attacking
function Melee:SetSoundUse(asset_path) end

-- @param damage (integer) The Base Damage value
-- Sets the Base Damage
function Melee:SetBaseDamage(damage) end

-- @param damage_start_time (float) The initial time to start applying damage
-- @param damage_duration_time (float) The duration time to stop applying damage
-- Sets the times when to start applying damage and when to end
function Melee:SetDamageSettings(damage_start_time, damage_duration_time) end

-- @param cooldown (float) 
-- Sets the cooldown between attacking
function Melee:SetCooldown(cooldown) end

-- @return AnimationPath[] 
-- Gets the Animations when Character uses it
function Melee:GetAnimationsCharacterUse() end

-- @return SoundPath 
-- Gets the Sound when Character uses it
function Melee:GetSoundUse() end

-- @return integer 
-- Gets the Base Damage
function Melee:GetBaseDamage() end

-- @return float 
-- Gets the Cooldown between usages
function Melee:GetCooldown() end

-- Melee events
-- @param self (Melee)
-- @param handler (Character)
-- Triggered when the Character effectively attacks with this Melee
Melee.Attack = function(self, handler) end

