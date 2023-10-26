-- Sky static class
-- Interact with built-in Sky & Weather system.
Sky = {}

-- @param spawn_weather (boolean) Whether or not to spawn the Weather Actor (to be able to use Weather related methods)
-- Replaces all Sky/Sun actors with the Ultra Dynamic Sky Actor, to be able to use the functions from this page
function Sky:Spawn(spawn_weather) end


-- Destroys all Directional Lights, Sky Lights, Exponential Height Fogs, Volumetric Clouds, Sky Atmosphere, Ultra Dynamic Sky Actors and all Actors with the <code>Sun</code> Actor Tag from the Level
function Sky:DestroyAllSky() end


-- Reconstruct the Ultra Dynamic Sky Actor, forces most of the changes to be applied
function Sky:Reconstruct() end

-- @param texture (ImagePath) 
-- Sets the Moon Texture
function Sky:SetMoonTexture(texture) end

-- @param rotation (float) 
-- Sets the Moon Texture Rotation
function Sky:SetMoonTextureRotation(rotation) end

-- @param offset (float) 
-- Sets the Moon Vertical Offset
function Sky:SetMoonVerticalOffset(offset) end

-- @param scale (float) 
-- Sets the Moon Scale
function Sky:SetMoonScale(scale) end

-- @param phase (float) Ranges from 0-30
-- Sets the Moon Phase
function Sky:SetMoonPhase(phase) end

-- @param glow_intensity (float) 
-- Sets the Moon Glow Intensity
function Sky:SetMoonGlowIntensity(glow_intensity) end

-- @param intensity (float) 
-- Sets the Moon Light Intensity
function Sky:SetMoonLightIntensity(intensity) end

-- @param angle (float) 
-- Sets the Sun Angle
function Sky:SetSunAngle(angle) end

-- @param radius (float) 
-- Sets the Sun Radius
function Sky:SetSunRadius(radius) end

-- @param intensity (float) 
-- Sets the Sun Light Intensity
function Sky:SetSunLightIntensity(intensity) end

-- @param sky_mode (SkyMode) 
-- Sets the Sky Mode
function Sky:SetSkyMode(sky_mode) end

-- @param color (Color) 
-- Sets the Volumetric Cloud Color
function Sky:SetVolumetricCloudColor(color) end

-- @param cloud_coverage (float) 
-- The amount of coverage for the cloud layer, from a clear sky to overcast
function Sky:SetCloudCoverage(cloud_coverage) end

-- @param fog_percentage (float) 
-- The fogginess of the scene. The impact this has on fog density is scaled from the Fog Density category
function Sky:SetFog(fog_percentage) end

-- @param contrast (float) 
-- A simple contrast boost for the sky material. Cannot affect volumetric clouds
function Sky:SetContrast(contrast) end

-- @param intensity (float) 
-- The overall brightness of the shader
function Sky:SetOverallIntensity(intensity) end

-- @param brightness (float) 
-- Can be used to scale the brightness of the sky and lighting, at night
function Sky:SetNightBrightness(brightness) end

-- @param animate (boolean) Whether or not to animate the time of day
-- @param day_length (float?) The time (in minutes) from sunrise to sunset
-- @param night_length (float?) The time (in minutes) from sunset to sunrise
-- Sets whether or not to animate the time of day
function Sky:SetAnimateTimeOfDay(animate, day_length, night_length) end

-- @param hours (integer) 
-- @param minutes (integer) 
-- Sets the current time
function Sky:SetTimeOfDay(hours, minutes) end

-- @return integer hours
-- @return integer minutes
-- @return integer seconds
-- Gets the current time
function Sky:GetTimeOfDay() end

-- @param including_weather (boolean) if to check for Weather Actor too
-- @return boolean 
-- Returns if the Ultra Dynamic Sky was spawned
function Sky:IsSpawned(including_weather) end

-- @return WeatherType 
-- Gets the current weather
function Sky:GetWeather() end

-- @param weather (WeatherType) weather to change
-- @param transition_time (float) fade time to completely change to new weather
-- Gets the current time
function Sky:ChangeWeather(weather, transition_time) end

