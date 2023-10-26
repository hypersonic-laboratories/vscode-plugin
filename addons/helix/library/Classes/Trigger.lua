-- Trigger class
-- A Trigger class is a utility class to trigger events when any Entity enters an Area.
Trigger = {}

-- Trigger functions

-- Forces a Overlap checking to occur, will immediately trigger overlaps
function Trigger:ForceOverlapChecking() end

-- @param extent (Vector) 
-- Sets the extent size of this trigger (sphere triggers will use only the .X component for radius)
function Trigger:SetExtent(extent) end

-- @param color (Color) 
-- Sets the Trigger color (if visible)
function Trigger:SetColor(color) end

-- @param overlap_only_classes (string[]) 
-- Sets the filter to Trigger to only overlap specific Classes. Leave it empty for all Classes
function Trigger:SetOverlapOnlyClasses(overlap_only_classes) end

-- Trigger events
-- @param self (Trigger)
-- @param entity (Actor)
-- Triggered when something overlaps this Trigger
Trigger.BeginOverlap = function(self, entity) end

-- @param self (Trigger)
-- @param entity (Actor)
-- Triggered when something leaves this Trigger
Trigger.EndOverlap = function(self, entity) end

