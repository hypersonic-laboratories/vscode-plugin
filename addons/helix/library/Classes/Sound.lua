-- Sound class
-- Class for playing in-game 2D and 3D sounds.
Sound = {}

-- Sound functions
-- @param fade_in_duration (float) 
-- @param fade_volume_level (float) 
-- @param start_time (float) 
-- Plays the sound with a fade effect
function Sound:FadeIn(fade_in_duration, fade_volume_level, start_time) end

-- @param fade_out_duration (float) 
-- @param fade_volume_level (float) 
-- @param destroy_after_fadeout (boolean) 
-- Stops the sound with a fade effect
function Sound:FadeOut(fade_out_duration, fade_volume_level, destroy_after_fadeout) end

-- @param start_time (float) 
-- Starts the sound
function Sound:Play(start_time) end

-- @param falloff_distance (float) 
-- If a 3D Sound, sets the distance which the sound is inaudible
function Sound:SetFalloffDistance(falloff_distance) end

-- @param inner_radius (float) 
-- If a 3D Sound, sets the distance within the volume is 100%
function Sound:SetInnerRadius(inner_radius) end

-- @param frequency (float) 
-- Sets lowpass filter frequency. Sets 0 to disable it.
function Sound:SetLowPassFilter(frequency) end

-- @param pause (boolean) 
-- Pauses the sound
function Sound:SetPaused(pause) end

-- @param new_pitch (float) 
-- Sets the Sound's pitch
function Sound:SetPitch(new_pitch) end

-- @param new_volume (float) 0-1
-- Sets the Sound's volume
function Sound:SetVolume(new_volume) end


-- Stops the sound
function Sound:Stop() end

-- @param delay (float) 
-- Stops the sound after the provided delay
function Sound:StopDelayed(delay) end

-- @return boolean 
-- Gets if the sound is 2D
function Sound:Is2D() end

-- @return boolean 
-- Gets if the sound is playing
function Sound:IsPlaying() end

-- @return float 
-- Gets the duration of the Sound
function Sound:GetDuration() end

-- @return float 
-- 
function Sound:GetPitch() end

-- @return float 
-- 
function Sound:GetVolume() end

-- @return float 
-- 
function Sound:GetLowPassFilter() end

-- @return float 
-- 
function Sound:GetInnerRadius() end

-- @return float 
-- 
function Sound:GetFalloffDistance() end

-- @return float 
-- 
function Sound:GetSoundType() end

-- Sound events
