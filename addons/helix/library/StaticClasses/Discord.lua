-- Discord static class
-- Initialize and set Discord activity.
Discord = {}

-- @param client_id (integer) 
-- Initializes the Discord Integration with your custom client_id
function Discord:Initialize(client_id) end

-- @param state (string) 
-- @param details (string) 
-- @param large_image (string) 
-- @param large_text (string) 
-- @param reset_time (string) Whether or not to reset current activity elapsed time
-- Communicates with Discord and sets a custom user status
function Discord:SetActivity(state, details, large_image, large_text, reset_time) end

