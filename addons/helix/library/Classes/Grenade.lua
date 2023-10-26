-- Grenade class
-- Grenades are Pickables which Characters can grab and throw. It explodes after X seconds after thrown, causing damage around.
Grenade = {}

-- Grenade functions

-- Forces this grenade to Explode
function Grenade:Explode() end

-- @param base_damage (integer) Max damage when inner radius
-- @param minimum_damage (integer) Min damage when outer radius
-- @param damage_inner_radius (integer) Radius which damage will be 100%
-- @param damage_outer_radius (integer) Radius which damage will be interpoled through falloff
-- @param damage_falloff (float) Lerp function between Max and Min damage
-- Sets Damage parameters of this Grenade
function Grenade:SetDamage(base_damage, minimum_damage, damage_inner_radius, damage_outer_radius, damage_falloff) end

-- @param time (float) Time in seconds
-- Set Time until Explosion after thrown
function Grenade:SetTimeToExplode(time) end

-- @param force (integer) 
-- Set Impulse applied when throwing
function Grenade:SetThrowForce(force) end

-- @return float 
-- Damage at Inner Radius
function Grenade:GetBaseDamage() end

-- @return float 
-- Radius which BaseDamage will apply proportionally
function Grenade:GetDamageFalloff() end

-- @return float 
-- Radius which MinimumDamage will apply
function Grenade:GetDamageInnerRadius() end

-- @return float 
-- Radius which BaseDamage will apply
function Grenade:GetDamageOuterRadius() end

-- @return float 
-- Damage at Outer Radius
function Grenade:GetMinimumDamage() end

-- @return float 
-- Time until Explosion
function Grenade:GetTimeToExplode() end

-- @return float 
-- Impulse applied when throwing
function Grenade:GetThrowForce() end

-- Grenade events
-- @param self (Grenade)
-- Triggered when the grenade has exploded
Grenade.Explode = function(self) end

-- @param self (Grenade)
-- @param handler (Character)
-- Triggered when the grenade has been thrown
Grenade.Throw = function(self, handler) end

