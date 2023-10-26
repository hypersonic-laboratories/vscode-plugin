-- Server static class
-- Server represents all Server controls in the Server side.
Server = {}

-- @param map_path (string) The new map to load
-- Restarts the server in a new Map, restarts all packages and reconnects all players
function Server:ChangeMap(map_path) end

-- @param package_folder_name (string) The package to load
-- @return boolean if the Package was loaded
-- Loads a Package
function Server:LoadPackage(package_folder_name) end

-- @param package_folder_name (string) The package to reload
-- @return boolean if the Package was found
-- 
function Server:ReloadPackage(package_folder_name) end

-- @param package_folder_name (string) The package you want unload
-- @return boolean if the Package was found
-- Unloads a Package
function Server:UnloadPackage(package_folder_name) end

-- @param description (string) The new description
-- @param persist_to_config_file (boolean) Persist to config file
-- Sets the description of the server, optionally overrides Config.toml
function Server:SetDescription(description, persist_to_config_file) end

-- @param logo_url (string) The new logo
-- @param persist_to_config_file (boolean) Persist to config file
-- Sets the logo of the server, optionally overrides Config.toml
function Server:SetLogo(logo_url, persist_to_config_file) end

-- @param max_players (integer) The maximum players
-- @param persist_to_config_file (boolean) Persist to config file
-- Sets the maximum player slots of the server, optionally overrides Config.toml
function Server:SetMaxPlayers(max_players, persist_to_config_file) end

-- @param name (string) The new name
-- @param persist_to_config_file (boolean) Persist to config file
-- Sets the name of the server, optionally overrides Config.toml
function Server:SetName(name, persist_to_config_file) end

-- @param password (string) The new password
-- @param persist_to_config_file (boolean) Persist to config file
-- Sets the password of the server, optionally overrides Config.toml
function Server:SetPassword(password, persist_to_config_file) end

-- @param key (string) Key
-- @param value (any) Value
-- @param sync_on_client (boolean) If enabled will sync this value through all clients, accessible through Client.GetValue() static class.
-- Sets a global value in the Server, which can be accessed from anywhere (server side)
function Server:SetValue(key, value, sync_on_client) end

-- @param key (string) Key
-- @param fallback (any) Fallback Value if key doesn't exist
-- Gets a value given a key
function Server:GetValue(key, fallback) end

-- @param account_id (string) Account ID
-- Unbans a Player by it's account ID
function Server:Unban(account_id) end


-- Stops the server
function Server:Stop() end

-- @param event_name (string) The name of the Event
-- @param function (function) Callback function
-- @return function the function callback itself
-- Subscribes for an Event
function Server:Subscribe(event_name, function) end

-- @param event_name (string) The name of the Events
-- @param function (function) Callback function
-- Unsubscribes from all subscribed Events in this Class and in this Package, optionally passing the function to unsubscribe only that callback
function Server:Unsubscribe(event_name, function) end

-- @return string the current map package
-- Returns the current Map Package name
function Server:GetMap() end

-- @return string the current map asset
-- Returns the current Map Asset reference
function Server:GetMapAsset() end

-- @return table a list of the Custom Config of the current map
-- Returns a list of the Custom Config of the current map (stored in the MAP_NAME.toml)
function Server:GetMapConfig() end

-- @return table[] a list of the Spawn Points of the current map
-- Returns a list of the Spawn Points of the current map (stored in the MAP_NAME.toml)
function Server:GetMapSpawnPoints() end

-- @param only_loaded (boolean) Set to true the function return only loaded and running packages. Caution: setting to false will retrieve Packages list from disk, which is a slow operation!
-- @param package_type_filter (PackageType) Which Package type to return. Leave it default (-1) to return all types.
-- @return table[] a list of Packages data
-- Returns a list of Packages running, optionally returns all Packages installed in the server
function Server:GetPackages(only_loaded, package_type_filter) end

-- @return string the server version
-- Returns the server version
function Server:GetVersion() end

-- @return string the server Public IP
-- Returns the server Public IP
function Server:GetIP() end

-- @return integer the server Port
-- Returns the server Port
function Server:GetPort() end

-- @return integer the server QueryPort
-- Returns the server QueryPort
function Server:GetQueryPort() end

-- @return integer the max players configured
-- Returns the Max Players configured
function Server:GetMaxPlayers() end

-- @return string the Server Description
-- Returns the Server Description
function Server:GetDescription() end

-- @return table[] a list of the Custom Settings
-- Returns the Server Custom Settings passed as parameter or New Game screen
function Server:GetCustomSettings() end

-- @return integer the server Tick Rate
-- Returns the Configured Tick Rate
function Server:GetTickRate() end

-- @return integer the unix timestamp
-- Gets the Unix Epoch Time in milliseconds
function Server:GetTime() end

-- @return boolean if the Server is announced in the Master List
-- Returns if the Server is announced in the Master List
function Server:IsAnnounced() end

