-- JSON static class
-- JSON library.
JSON = {}

-- @param value (table) the table that will become JSON
-- @return string the table in JSON
-- Returns a string representing value encoded in JSON
function JSON:stringify(value) end

-- @param value (string) the JSON that will become a table
-- @return any the json in table
-- Returns a value representing the decoded JSON string
function JSON:parse(value) end

