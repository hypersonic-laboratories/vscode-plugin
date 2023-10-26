-- Entity class
-- <b>Entity</b> is the base for all Classes, and all those entities share the same <b>Methods</b> and <b>Events</b> described in this page.
Entity = {}

-- Entity functions
-- @return integer 
-- Gets the universal network ID of this Entity (same on both client and server)
function Entity:GetID() end

-- @return table 
-- Gets the class of this entity
function Entity:GetClass() end

-- @param class (table) The Class
-- @return boolean 
-- Recursively checks if this entity is <a href='/docs/core-concepts/scripting/inheriting-classes'>inherited</a> from a Class
function Entity:IsA(class) end

-- @param event_name (string) Name of the event to subscribe to
-- @param callback (function) Function to call when the event is triggered
-- @return function Callback that was passed (useful for unsubscribing later if your callback is an anonymous function)
-- Subscribes to an <a href='/docs/core-concepts/scripting/events-guide'>Event</a> on this specific entity
function Entity:Subscribe(event_name, callback) end

-- @param event_name (string) Name of the event to subscribe to
-- @param callback (function) Function to call when the event is triggered
-- @return function Callback that was passed (useful for unsubscribing later if your callback is an anonymous function)
-- Subscribes to a custom event called from server on this specific entity
function Entity:SubscribeRemote(event_name, callback) end

-- @param event_name (string) Name of the event to unsubscribe from
-- @param callback (function) Optional callback to unsubscribe
-- Unsubscribes all callbacks from this <a href='/docs/core-concepts/scripting/events-guide'>Event</a> in this Entity within this Package, or only the callback passed
function Entity:Unsubscribe(event_name, callback) end

-- @param key (string) 
-- @param value (any) 
-- @param sync_on_clients (boolean) Server side parameter, if enabled will sync this value with all clients
-- Sets a <a href='/docs/core-concepts/scripting/entity-values'>Value</a> in this Entity
function Entity:SetValue(key, value, sync_on_clients) end

-- @param key (string) 
-- @param fallback (any) Fallback value if key doesn't exist
-- @return any Value at key or fallback if key doesn't exist
-- Gets a <a href='/docs/core-concepts/scripting/entity-values'>Value</a> stored on this Entity at the given key
function Entity:GetValue(key, fallback) end


-- Destroys this Entity
function Entity:Destroy() end

-- @return boolean 
-- Returns true if this Entity is valid (i.e. wasn't destroyed and points to a valid Entity)
function Entity:IsValid() end

-- @param event_name (string) The Event Name to trigger the event
-- @param player (Player) The remote player to send this event
-- @param ... (any) Arguments to pass to the event
-- Calls a custom remote event directly on this entity to a specific Player
function Entity:CallRemoteEvent(event_name, player, ...) end

-- @param event_name (string) The Event Name to trigger the event
-- @param ... (any) Arguments to pass to the event
-- Calls a custom remote event directly on this entity
function Entity:CallRemoteEvent(event_name, ...) end

-- @param event_name (string) The Event Name to trigger the event
-- @param ... (any) Arguments to pass to the event
-- Calls a custom remote event directly on this entity to all Players
function Entity:BroadcastRemoteEvent(event_name, ...) end

-- Entity events
-- @param self (Entity)
-- Triggered when an Entity is spawned/created
Entity.Spawn = function(self) end

-- @param self (Entity)
-- Triggered when an Entity is destroyed
Entity.Destroy = function(self) end

-- @param self (Entity)
-- @param key (string)
-- @param value (any)
-- Triggered when an Entity has a value changed with <code>:SetValue()</code>
Entity.ValueChange = function(self, key, value) end

-- @param class (table)
-- Triggered when a new Class is registered with the <a href='/docs/core-concepts/scripting/inheriting-classes'>Inheriting System</a>
Entity.ClassRegister = function(class) end

