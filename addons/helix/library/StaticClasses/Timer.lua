-- Timer static class
-- Execute code at specified time intervals.
Timer = {}

-- @param callback (function) The callback that will be executed
-- @param milliseconds (integer) The time in milliseconds to wait before executing the function
-- @param parameters... (any) Additional parameters to pass to the function
-- @return integer the timeout_id
-- Executes a function, after waiting a specified number of milliseconds
function Timer:SetTimeout(callback, milliseconds, parameters...) end

-- @param callback (function) The callback that will be executed.<br/>Return false to stop it from being called.
-- @param milliseconds (integer) The time in milliseconds the timer should delay in between executions of the specified function
-- @param parameters... (any) Additional parameters to pass to the function
-- @return integer the interval_id
-- Same as SetTimeout(), but repeats the execution of the function continuously
function Timer:SetInterval(callback, milliseconds, parameters...) end

-- @param timeout_id (integer) The ID value returned by SetTimeout() is used as the parameter for this method
-- Stops the execution of the function specified in SetTimeout()
function Timer:ClearTimeout(timeout_id) end

-- @param interval_id (integer) The ID value returned by SetInterval() is used as the parameter for this method
-- Stops the execution of the function specified in SetInterval()
function Timer:ClearInterval(interval_id) end

-- @param timer_id (integer) The Timer ID
-- @param actor (Actor) Actor to be bound
-- Binds a Timer to any Actor. The timer will be automatically cleared when the Actor is destroyed
function Timer:Bind(timer_id, actor) end

-- @param timer_id (integer) The Timer ID
-- @return boolean 
-- Checks if a Timer is currently active or waiting to be triggered
function Timer:IsValid(timer_id) end

-- @param timer_id (integer) The Timer ID
-- @return float 
-- Returns the time elapsed since the last tick
function Timer:GetElapsedTime(timer_id) end

-- @param timer_id (integer) The Timer ID
-- @return float 
-- Returns the time remaining to the next tick
function Timer:GetRemainingTime(timer_id) end

-- @param timer_id (integer) The Timer ID
-- Pauses the Timer
function Timer:Pause(timer_id) end

-- @param timer_id (integer) The Timer ID
-- Resumes the Timer
function Timer:Resume(timer_id) end

-- @param timer_id (integer) The Timer ID
-- Resets a Timer to start from beginning
function Timer:ResetElapsedTime(timer_id) end

