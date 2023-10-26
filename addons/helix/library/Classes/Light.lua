-- Light class
-- A Light represents a Lighting source.
Light = {}

-- Light functions
-- @param color (Color) The light color
-- Sets the light color
function Light:SetColor(color) end

-- @param light_profile (LightProfile) The Light Profile to use
-- Sets the light Texture Profile
function Light:SetTextureLightProfile(light_profile) end

-- @param is_shadows_enabled (boolean) 
-- 
function Light:SetCastShadows(is_shadows_enabled) end

-- @param intensity (float) 
-- 
function Light:SetIntensity(intensity) end

-- @param attenuation_radius (float) 
-- 
function Light:SetAttenuationRadius(attenuation_radius) end

-- @return boolean 
-- 
function Light:GetCastShadows() end

-- @return float 
-- 
function Light:GetIntensity() end

-- @return float 
-- 
function Light:GetAttenuationRadius() end

-- @return Color 
-- 
function Light:GetColor() end

-- Light events
