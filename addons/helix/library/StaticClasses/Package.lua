-- Package static class
-- Class which represents the current Package
Package = {}

-- @param variable_name (string) Name of the variable to export
-- @param value (any) Value to be set in the global scope
-- Makes any variable available in the global scope
function Package:Export(variable_name, value) end

-- @param script_file (string) Path to the script file to require
-- @return any Any return values from the included file
-- Includes new .lua files
function Package:Require(script_file) end

-- @param event_name (string) Event to subscribe to
-- @param callback (function) Callback to run on the event occurring
-- @return function The function callback
-- Subscribes to an Event
function Package:Subscribe(event_name, callback) end

-- @param event_name (string) Event to unsubscribe to
-- @param callback (function) Optional callback to specifically unsubscribe to
-- Unsubscribes from all subscribed Events in this Class and in this Package, optionally passing the function to unsubscribe only that callback
function Package:Unsubscribe(event_name, callback) end

-- @param key (string) Key to index data into
-- @param value (any) Value to set at the key
-- Sets a Persistent Value which will be saved to disk
function Package:SetPersistentData(key, value) end

-- @param path_filter (string) Path filter
-- @return string[] List of directories
-- Gets a list of all directories in this package
function Package:GetDirectories(path_filter) end

-- @param path_filter (string|table) Path filter
-- @param extension_filter (string) Example : .lua
-- @return string[] List of files
-- Gets a list of all files in this package
function Package:GetFiles(path_filter, extension_filter) end

-- @return string The package name/path
-- Returns the package name/path
function Package:GetName() end

-- @return string The package title
-- Returns the package title
function Package:GetTitle() end

-- @return string The package version
-- Returns the package version
function Package:GetVersion() end

-- @return string The package compatibility version
-- Returns the package compatibility version
function Package:GetCompatibilityVersion() end

-- @param key (string?) The key to get the data
-- @return table Persistent values from disk
-- Gets the Persistent Value from the disk
function Package:GetPersistentData(key) end

