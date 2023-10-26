-- Navigation static class
-- Creates a reachable path into navigable space.
Navigation = {}

-- @param origin (Vector) 
-- @param radius (float) 
-- @return Vector The random point
-- Finds random, reachable point in navigable space restricted to radius around origin
function Navigation:GetRandomReachablePointInRadius(origin, radius) end

-- @param origin (Vector) 
-- @param radius (float) 
-- @return Vector The random point
-- Finds random, point in navigable space restricted to Radius around Origin. Resulting location is not tested for reachability from the Origin
function Navigation:GetRandomPointInNavigableRadius(origin, radius) end

-- @param start_location (Vector) 
-- @param end_location (Vector) 
-- @return table 
-- Finds a Path given Start and End location
function Navigation:FindPathToLocation(start_location, end_location) end

