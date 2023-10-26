-- Level static class
-- Work with Unreal level in runtime.
Level = {}

-- @param level_name (string) 
-- @param should_block_on_load (boolean) If this should be a blocking operation - the game will freeze
-- @param make_visible_after_load (boolean) If this should be visible automatically after loaded
-- Loads a Level in runtime
function Level:LoadStreamLevel(level_name, should_block_on_load, make_visible_after_load) end

-- @param level_name (string) 
-- @param should_block_on_unload (boolean) If this should be a blocking operation - the game will freeze
-- Unloads a Level in runtime
function Level:UnloadStreamLevel(level_name, should_block_on_unload) end

-- @param level_name (string) 
-- @param visibility (boolean) If this level should be visible
-- Sets a Stream Level visibility
function Level:SetStreamLevelVisibility(level_name, visibility) end

-- @return table[] in the format <code>{ name, is_loaded, is_visible }</code>
-- Gets a list of all Stream Levels
function Level:GetStreamLevels() end

-- @param event_name (string) 
-- Calls a Level Blueprint custom event (which can be added when creating levels through Unreal Engine)
function Level:CallLevelBlueprintEvent(event_name) end

