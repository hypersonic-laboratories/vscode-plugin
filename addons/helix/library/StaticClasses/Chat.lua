-- Chat static class
-- Configure, send and intercept chat messages.
Chat = {}

-- @param message (string) 
-- Adds a chat message which will display local only
function Chat:AddMessage(message) end

-- @param player (Player) The player to receive the message
-- @param message (string) The message
-- Sends a chat message to a Player only
function Chat:SendMessage(player, message) end

-- @param screen_location (Vector2D) 
-- @param size (Vector2D) 
-- @param anchors_min (Vector2D) 
-- @param anchors_max (Vector2D) 
-- @param alignment (Vector2D) 
-- @param justify (boolean) 
-- @param show_scrollbar (boolean) 
-- Configures the Chat visuals and position
function Chat:SetConfiguration(screen_location, size, anchors_min, anchors_max, alignment, justify, show_scrollbar) end

-- @param is_visible (boolean) 
-- Sets if the Chat is visible or not
function Chat:SetVisibility(is_visible) end


-- Clears all messages
function Chat:Clear() end

-- @param message (string) The message to send to all Players
-- Sends a chat message to all Players
function Chat:BroadcastMessage(message) end

