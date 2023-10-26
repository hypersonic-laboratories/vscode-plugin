-- Particle class
-- Class to spawn Particle Systems used to create effects in the world.
Particle = {}

-- Particle functions
-- @param should_reset (boolean) If should reset
-- Activates the Emitter
function Particle:Activate(should_reset) end


-- Deactivate the Emitter
function Particle:Deactivate() end

-- @param parameter (string) The parameter name
-- @param value (float) The float value
-- Sets a float parameter in this Particle System
function Particle:SetParameterFloat(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (integer) The int value
-- Sets an integer parameter in this Particle System
function Particle:SetParameterInt(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (boolean) The boolean value
-- Sets a boolean parameter in this Particle System
function Particle:SetParameterBool(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (Vector) The Vector value
-- Sets a Vector parameter in this Particle System
function Particle:SetParameterVector(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (Color) The Color value
-- Sets a Color parameter in this Particle System
function Particle:SetParameterColor(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (MaterialPath) The Material value
-- Sets a Material parameter in this Particle System
function Particle:SetParameterMaterial(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (ImagePath) The Texture value
-- Sets a Material from a Texture parameter in this Particle System
function Particle:SetParameterMaterialFromTexture(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (Canvas) The Canvas value
-- Sets a Material from a Canvas parameter in this Particle System
function Particle:SetParameterMaterialFromCanvas(parameter, value) end

-- @param parameter (string) The parameter name
-- @param value (WebUI) The WebUI value
-- Sets a Material from a Canvas parameter in this Particle System
function Particle:SetParameterMaterialFromWebUI(parameter, value) end

-- Particle events
