-- Database class
-- The Database entity provides programmers a way to access SQL databases easily through scripting.
Database = {}

-- Database functions

-- Closes the Database
function Database:Close() end

-- @param query (string) Query to execute
-- @param callback (function) Callback in the format (rows_affected, error)
-- @param ... (any) Sequence of parameters to escape into the Query
-- Execute a query asynchronously
function Database:ExecuteAsync(query, callback, ...) end

-- @param query (string) Query to execute
-- @param ... (any) Sequence of parameters to escape into the Query
-- @return integer affected rows
-- @return string error (if any)
-- Execute a query synchronously
function Database:Execute(query, ...) end

-- @param query (string) Query to execute
-- @param callback (function) Callback in the format (rows: table[], error: string?)
-- @param ... (any) Sequence of parameters to escape into the Query
-- Execute a select query asynchronously
function Database:SelectAsync(query, callback, ...) end

-- @param query (string) Query to execute
-- @param ... (any) Sequence of parameters to escape into the Query
-- @return table[] rows fetched
-- @return string error (if any)
-- Selects a query synchronously
function Database:Select(query, ...) end

-- Database events
