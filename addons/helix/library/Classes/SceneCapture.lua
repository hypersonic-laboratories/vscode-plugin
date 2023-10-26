-- SceneCapture class
-- Scene Capture is an Actor which captures a fully dynamic image of the scene into a Texture. It captures the scene from its view frustum, stores that view as an image, which is then used within a Material.
SceneCapture = {}

-- SceneCapture functions
-- @param actor (Actor) 
-- Adds an Actor to the Render Only list
function SceneCapture:AddRenderActor(actor) end

-- @param actor (Actor) 
-- Removes an Actor from the Render Only list
function SceneCapture:RemoveRenderActor(actor) end


-- Clears the Render Only list
function SceneCapture:ClearRenderActors() end

-- @param freeze (boolean) 
-- Stops or Restore Capturing
function SceneCapture:SetFreeze(freeze) end

-- @param image_format (ImageFormat) Which format to generate - JPEG is fastest but discards Alpha channel
-- @return string 
-- Takes a snapshot of the SceneCapture and returns a Base64 of it
function SceneCapture:EncodeToBase64(image_format) end

-- @param image_format (ImageFormat) Which format to generate - JPEG is fastest but discards Alpha channel
-- @param callback (function) Callback in the format (base_64: string)
-- Takes a snapshot of the SceneCapture and returns a Base64 of it (asynchronously)
function SceneCapture:EncodeToBase64Async(image_format, callback) end

-- @param angle (float) 
-- Sets the FOV
function SceneCapture:SetFOVAngle(angle) end

-- @param flag (string) 
-- @param enable (boolean) 
-- Enables/Disables rendering features from being captured
function SceneCapture:SetShowFlag(flag, enable) end

-- @param width (integer) 
-- @param height (integer) 
-- Change the output Texture size
-- Note: too high texture will make the capture slower and will affect game performance
function SceneCapture:Resize(width, height) end

-- @param render_rate (float) 
-- Set how frequent is the capture
-- Note: Setting to 0 will make it capture every frame
function SceneCapture:SetRenderRate(render_rate) end

-- @param enabled (boolean) 
-- Enables or not the rendering frequency optimization if the entities with this Material are too far
function SceneCapture:SetDistanceOptimizationEnabled(enabled) end

-- SceneCapture events
-- @param self (SceneCapture)
-- Triggered when this SceneCapture does an update/renders a frame
SceneCapture.Capture = function(self) end

