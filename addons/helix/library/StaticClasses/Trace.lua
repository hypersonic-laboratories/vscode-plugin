-- Trace static class
-- Trace a ray against the world and get collided objects information.
Trace = {}

-- @param start_location (Vector) Start location of the ray
-- @param end_location (Vector) End location of the ray
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table 
-- Trace a ray against the world and returns a table with the first blocking hit information
function Trace:LineSingle(start_location, end_location, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the ray
-- @param end_location (Vector) End location of the ray
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table[] 
-- Trace a ray against the world using object types and return overlapping hits and then first blocking hit
function Trace:LineMulti(start_location, end_location, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the sphere
-- @param end_location (Vector) End location of the sphere
-- @param radius (float) Radius of the sphere
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table 
-- Trace a sphere against the world and returns a table with the first blocking hit information
function Trace:SphereSingle(start_location, end_location, radius, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the sphere
-- @param end_location (Vector) End location of the sphere
-- @param radius (float) Radius of the sphere
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table[] 
-- Trace a sphere against the world using object types and return overlapping hits and then first blocking hit
function Trace:SphereMulti(start_location, end_location, radius, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the box
-- @param end_location (Vector) End location of the box
-- @param half_size (Vector) Distance from the center of box along each axis
-- @param orientation (Rotator) Orientation of the box
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table 
-- Trace a box against the world and returns a table with the first blocking hit information
function Trace:BoxSingle(start_location, end_location, half_size, orientation, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the box
-- @param end_location (Vector) End location of the box
-- @param half_size (Vector) Distance from the center of box along each axis
-- @param orientation (Rotator) Orientation of the box
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table[] 
-- Trace a box against the world using object types and return overlapping hits and then first blocking hit
function Trace:BoxMulti(start_location, end_location, half_size, orientation, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the capsule
-- @param end_location (Vector) End location of the capsule
-- @param radius (float) Radius of the capsule to sweep
-- @param half_height (float) Distance from center of capsule to tip of hemisphere endcap.
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table 
-- Trace a capsule against the world and returns a table with the first blocking hit information
function Trace:CapsuleSingle(start_location, end_location, radius, half_height, collision_channel, trace_mode, ignored_actors) end

-- @param start_location (Vector) Start location of the capsule
-- @param end_location (Vector) End location of the capsule
-- @param radius (float) Radius of the capsule to sweep
-- @param half_height (float) Distance from center of capsule to tip of hemisphere endcap.
-- @param collision_channel (CollisionChannel) Supports several channels separating by <code>|</code> (using bit-wise operations)
-- @param trace_mode (TraceMode) Trace Mode, pass all parameters separating by <code>|</code> (using bit-wise operations)<br/><br/>You need to explicitily pass the modes to return the values you want
-- @param ignored_actors (Actor[]) Array of actors to ignore during the trace
-- @return table[] 
-- Trace a capsule against the world using object types and return overlapping hits and then first blocking hit
function Trace:CapsuleMulti(start_location, end_location, radius, half_height, collision_channel, trace_mode, ignored_actors) end

