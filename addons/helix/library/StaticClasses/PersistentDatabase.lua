-- PersistentDatabase static class
-- Stores JSON data into database.
PersistentDatabase = {}

-- @param callback (function) The result will be called in the format `function(success)`
-- Create new space into database.
function PersistentDatabase:Create(callback) end

-- @param key (string) The data key to query.
-- @param data (string) Data to be inserted in JSON format.
-- @param callback (function) The result will be called in the format `function(success)`
-- Insert new JSON data into database.
function PersistentDatabase:Insert(key, data, callback) end

-- @param key (string) The data key to query.
-- @param data (string) Data to be updated in JSON format.
-- @param callback (function) The result will be called in the format `function(success)`
-- Update JSON data for a specific key.
function PersistentDatabase:Update(key, data, callback) end

-- @param key (string) The data key to query.
-- @param callback (function) The result will be called in the format `function(success)`
-- Delete a key from database.
function PersistentDatabase:Delete(key, callback) end

-- @param key (string) The data key to query.
-- @param callback (function) The result will be called in the format `function(success, data)`, `data` can be parsed with JSON.parse() function.
-- Query a specific key from database.
function PersistentDatabase:GetByKey(key, callback) end

-- @param callback (function) The result will be called in the format `function(success, data)`, `data` can be parsed with JSON.parse() function.
-- Query all data from database.
function PersistentDatabase:GetAll(callback) end

-- @param callback (function) The result will be called in the format `function(success, data)`, `data` can be parsed with JSON.parse() function.
-- Returns a brief summary of database usage
function PersistentDatabase:GetSummary(callback) end

