-- Blueprint class
-- A Blueprint Class allows spawning any Unreal Blueprint Actor in HELIX.
Blueprint = {}

-- Blueprint functions
-- @param event_name (string) Event or Function name
-- @param ... (any) Sequence of arguments to pass to the event
-- @return any the function return values
-- Calls a Blueprint Event or Function
function Blueprint:CallBlueprintEvent(event_name, ...) end

-- @param dispatcher_name (string) Event Dispatcher name
-- @param callback (function) Callback function to call (the first argument is the blueprint itself)
-- @return function the callback itself
-- Assigns and Binds a Blueprint Event Dispatcher
function Blueprint:BindBlueprintEventDispatcher(dispatcher_name, callback) end

-- @param dispatcher_name (string) Event Dispatcher name
-- @param callback (function) Optional callback to unbind
-- Unbinds a Blueprint Event Dispatcher
function Blueprint:UnbindBlueprintEventDispatcher(dispatcher_name, callback) end

-- @param property_name (string) 
-- @param value (any) 
-- Sets a Blueprint Property/Variable value directly
function Blueprint:SetBlueprintPropertyValue(property_name, value) end

-- @param property_name (string) 
-- @return any the value
-- Gets a Blueprint Property/Variable value
function Blueprint:GetBlueprintPropertyValue(property_name) end

-- Blueprint events
