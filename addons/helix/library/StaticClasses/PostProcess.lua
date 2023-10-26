-- PostProcess static class
-- Interaction with Post Process effects.
PostProcess = {}

-- @param intensity (float) 
-- @param threshold (float) 
-- Set Post Process Bloom Settings
function PostProcess:SetBloom(intensity, threshold) end

-- @param intensity (float) 
-- @param start_offset (float) 
-- Set Post Process Chromatic Abberation Settings
function PostProcess:SetChromaticAberration(intensity, start_offset) end

-- @param vignette_intensity (float) 
-- @param grain_jitter (float) 
-- @param grain_intensity (float) 
-- Set Post Process Image Effect Settings
function PostProcess:SetImageEffects(vignette_intensity, grain_jitter, grain_intensity) end

-- @param exposure_compensation (float) 
-- @param min_ev100 (float) 
-- @param max_ev100 (float) 
-- @param low_percent (float) 
-- @param high_percent (float) 
-- Set Post Process Exposure Settings
function PostProcess:SetExposure(exposure_compensation, min_ev100, max_ev100, low_percent, high_percent) end

-- @param slope (float) 
-- @param toe (float) 
-- @param shoulder (float) 
-- @param black_clip (float) 
-- @param white_clip (float) 
-- Set Post Process Film Settings
function PostProcess:SetFilm(slope, toe, shoulder, black_clip, white_clip) end

-- @param color (Color) 
-- Set Post Process Saturation Colors. Use Alpha for everall Saturation intensity
function PostProcess:SetGlobalSaturation(color) end

-- @param texture_path (ImagePath) 
-- Set Post Process Lookup Table Texture
function PostProcess:SetLookupTable(texture_path) end

-- @param material_path (MaterialPath) The Material Asset to set as Post Process
-- Sets a Post Process Material
function PostProcess:SetMaterial(material_path) end


-- Removes the current Post Process Material
function PostProcess:RemoveMaterial() end

-- @param angle (float) 
-- Sets the sun's angle (0-360)
function PostProcess:SetSunAngle(angle) end

