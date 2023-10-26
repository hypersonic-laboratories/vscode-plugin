-- Events static class
-- Subscribe for user-defined Events.
Events = {}

-- @param event_name (string) The Event Name to trigger the event
-- @param args... (any) Arguments to pass to the event
-- Calls an Event which will be triggered in all Local Packages
function Events:Call(event_name, args...) end

-- @param event_name (string) The Event Name to trigger the event
-- @param args... (any) Arguments to pass to the event
-- Calls an Event if on Client which will be triggered in all Server Packages
function Events:CallRemote(event_name, args...) end

-- @param event_name (string) The Event Name to trigger the event
-- @param player (Player) The remote player to send this event
-- @param args... (any) Arguments to pass to the event
-- Calls an Event if on Server which will be triggered in all Client's Packages of a specific Player
function Events:CallRemote(event_name, player, args...) end

-- @param event_name (string) The Event Name to trigger the event
-- @param args... (any) Arguments to pass to the event
-- Calls an Event on Server which will be triggered in all Client's Packages of all Players
function Events:BroadcastRemote(event_name, args...) end

-- @param dimension (integer) The Dimension to send this event
-- @param event_name (string) The Event Name to trigger the event
-- @param args... (any) Arguments to pass to the event
-- Calls an Event on Server which will be triggered in all Client's Packages of all Players in that dimension
function Events:BroadcastRemoteDimension(dimension, event_name, args...) end

-- @param event_name (string) The Event Name to subscribe
-- @param callback (function) The callback function to execute
-- @return function the subscribed callback itself
-- Subscribes for an user-created event which will be triggered for only local called events
function Events:Subscribe(event_name, callback) end

-- @param event_name (string) The Event Name to subscribe
-- @param callback (function) The callback function to execute
-- @return function the subscribed callback itself
-- Subscribes for an user-created event which will be triggered for only remote called events
function Events:SubscribeRemote(event_name, callback) end

-- @param event_name (string) The Event Name to unsubscribe
-- @param callback (function) The callback function to unsubscribe
-- Unsubscribes from all subscribed events in this Package with that event name, optionally passing the function to unsubscribe only that callback
function Events:Unsubscribe(event_name, callback) end

