-- Console static class
-- Exposes access to registering Console Commands and Logging messages.
Console = {}

-- @param message (string) Message to print
-- @param args... (any) Other arguments to format with the message using string.format
-- Logs and formats a message in the console
function Console:Log(message, args...) end

-- @param message (string) Message to print
-- @param args... (any) Other arguments to format with the message using string.format
-- Logs an orange warning in the console
function Console:Warn(message, args...) end

-- @param message (string) Message to print
-- @param args... (any) Other arguments to format with the message using string.format
-- Logs a red error in the console
function Console:Error(message, args...) end

-- @param command (string) The command
-- @param callback (function) The callback to be called when the command is inputted
-- @param description (string) The command description to display in the console
-- @param parameters (string[]) The list of supported parameters to display in the console
-- Registers a new Console Command
function Console:RegisterCommand(command, callback, description, parameters) end

