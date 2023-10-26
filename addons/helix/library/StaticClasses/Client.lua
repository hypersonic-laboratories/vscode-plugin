-- Client static class
-- Static Class present on Client side.
Client = {}

-- @param text (string) 
-- Copies a text to Clipboard
function Client:CopyToClipboard(text) end

-- @param near_clip_plane (float) 
-- Sets the Near Clip Plane
function Client:SetNearClipPlane(near_clip_plane) end

-- @return float 
-- Gets the Near Clip Plane value
function Client:GetNearClipPlane() end

-- @return string 
-- Gets the current connected server IP:Port
function Client:GetConnectedServerIP() end

-- @param enable_debug (boolean) 
-- Enables/Disables Debug settings and Client Console to be used
function Client:SetDebugEnabled(enable_debug) end

-- @param highlight_color (Color) 
-- @param index (integer) 
-- @param mode (HighlightMode) 
-- Changes the Highlight Color for highlighted actors at a specific Index
function Client:SetHighlightColor(highlight_color, index, mode) end

-- @param outline_color (Color) 
-- @param index (integer) 
-- @param thickness (float) 
-- Changes the Outline Color for outlined actors at a specific Index
function Client:SetOutlineColor(outline_color, index, thickness) end

-- @param key (string) 
-- @param value (any) 
-- Sets a global value in the Client, which can be accessed from anywhere (client side)
function Client:SetValue(key, value) end

-- @param event_name (string) 
-- @param callback (function) 
-- @return function the function callback itself
-- Subscribes for an Event
function Client:Subscribe(event_name, callback) end

-- @param event_name (string) 
-- @param callback (function) 
-- Unsubscribes from all subscribed Events in this Class and in this Package, optionally passing the function to unsubscribe only that callback
function Client:Unsubscribe(event_name, callback) end

-- @return Player The local Player
-- Gets the local Player
function Client:GetLocalPlayer() end

-- @return float The Frame Time
-- Gets the current Frame Time
function Client:GetFrameTime() end

-- @return integer the unix timestamp
-- Gets the Unix Epoch Time in milliseconds
function Client:GetTime() end

-- @return string The current Map
-- Returns the current Map
function Client:GetMap() end

-- @return string[] packages folder names
-- Returns a list of Packages folder names loaded and running in the client
function Client:GetPackages() end

-- @param key (string) 
-- @param fallback (any) 
-- @return any? the value
-- Gets a value given a key
function Client:GetValue(key, fallback) end

