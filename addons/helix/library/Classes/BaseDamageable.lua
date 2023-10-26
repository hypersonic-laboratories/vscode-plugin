-- Damageable class
-- Base class for all Damageable entities. It provides Health and Damage related methods and events.
Damageable = {}

-- Damageable functions
-- @param damage (integer) 
-- @param bone_name (string) 
-- @param damage_type (DamageType) 
-- @param from_direction (Vector) 
-- @param instigator (Player) The player which caused the damage
-- @param causer (any) The object which caused the damage
-- @return integer the damage applied
-- Do damage to this entity
function Damageable:ApplyDamage(damage, bone_name, damage_type, from_direction, instigator, causer) end

-- @return integer 
-- Gets the current health
function Damageable:GetHealth() end

-- @return integer 
-- Gets the Max Health
function Damageable:GetMaxHealth() end

-- @param location (Vector) If not passed will use the initial location passed when the Entity spawned
-- @param rotation (Rotator) 
-- Respawns the Entity, fullying it's Health and moving it to it's Initial Location
function Damageable:Respawn(location, rotation) end

-- @param new_health (integer) 
-- Sets the Health of this Entity
function Damageable:SetHealth(new_health) end

-- @param new_max_health (integer) 
-- Sets the MaxHealth of this Entity
function Damageable:SetMaxHealth(new_max_health) end

-- Damageable events
-- @param self (Damageable)
-- @param old_health (integer)
-- @param new_health (integer)
-- When Entity has it's Health changed, or because took damage or manually set through scripting or respawning
Damageable.HealthChange = function(self, old_health, new_health) end

-- @param self (Damageable)
-- When Entity Respawns
Damageable.Respawn = function(self) end

-- @param self (Damageable)
-- @param last_damage_taken (integer)
-- @param last_bone_damaged (string)
-- @param damage_type_reason (DamageType)
-- @param hit_from_direction (Vector)
-- @param instigator (Player?)
-- @param causer (Actor?)
-- When Entity Dies
Damageable.Death = function(self, last_damage_taken, last_bone_damaged, damage_type_reason, hit_from_direction, instigator, causer) end

-- @param self (Damageable)
-- @param damage (integer)
-- @param bone (string)
-- @param type (DamageType)
-- @param from_direction (Vector)
-- @param instigator (Player)
-- @param causer (any)
-- Triggered when this Entity takes damage
Damageable.TakeDamage = function(self, damage, bone, type, from_direction, instigator, causer) end

